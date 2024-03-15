#!/system/bin/sh

# Define variables
stock_framework="/system/framework/framework.jar"
mod_framework="$MODPATH/system/framework"
MODULE_PROP="$MODPATH/module.prop"
modded="$TMP/framework.jar"
smalis="$MODPATH/smali"

ashborn1='
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1266
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 1267
    invoke-virtual {p0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1268
    invoke-virtual {p1}, Landroid/content/Context;->letPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1269
    invoke-static {v0}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setProps(Ljava/lang/String;)V


    .line 1271
    return-object p0
'
ashborn2='
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1245
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;

    move-result-object v0

    .line 1246
    invoke-virtual {v0, p1, p2}, Landroid/app/AppComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object p1

    .line 1247
    invoke-virtual {p1, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1248
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1249
    invoke-static {p2}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setProps(Ljava/lang/String;)V


    .line 1251
    return-object p1
'

arise() {
  echo "- $1"
  echo " "
}

update_description() {
    sed -i "s|^description=.*|description=$1|g" "$MODULE_PROP"
}

start_time=$(date +%s)
MODNAME=$(grep_prop name $MODPATH/module.prop)
MODVER=$(grep_prop version $MODPATH/module.prop)
DV=$(grep_prop author $MODPATH/module.prop)
Device=$(getprop ro.product.device)
Model=$(getprop ro.product.model)
Brand=$(getprop ro.product.brand)

ui_print "###########################"
ui_print "- Author: $DV"
ui_print "- Module: $MODNAME"
ui_print "- Version: $MODVER"
ui_print "- Device: $Device"
ui_print "- Model: $Model"
if [ "$BOOTMODE" ] && [ "$KSU" ]; then
  ui_print "- Root: KernelSu"
  ui_print "- Version: $KSU_KERNEL_VER_CODE"
  update_description "[KernelSU Mode] PixelSnap enables unlimited Google Photos backup directly within the system framework."
elif [ "$BOOTMODE" ] && [ "$MAGISK_VER_CODE" ]; then
  ui_print "- Root: Magisk"
  ui_print "- Version: $MAGISK_VER"
  update_description "[Magisk Mode] PixelSnap enables unlimited Google Photos backup directly within the system framework."
fi
ui_print "###########################"
ui_print " "

    arise "Unzipping The Files"
    if ! dynamic_zip_tool -extract "$stock_framework" -output "$TMP/Stock"; then
        arise "Error: Failed to unzip the framework file."
        exit 1
    fi

    arise "Starting framework modification..."

    if [ -e "$stock_framework" ]; then

    if ! dynamic_apktool -decompile "$stock_framework" -output "$TMP/Framework"; then
        arise "Error: Failed to decompile the framework jar."
        exit 1
    fi
    
    ui_print " "
    arise "Framework jar decompiled successfully to $TMP/Framework"

     arise "Searching for com/android/internal/util folder..."
     util_folder=$(find "$TMP" -type d -name "util" -path "*/com/android/internal/util")

     if [ -z "$util_folder" ]; then
         arise "com/android/internal/util folder not found. Creating it..."
         mkdir -p "$TMP/com/android/internal/util"
         if [ $? -ne 0 ]; then
             arise "Error: Failed to create com/android/internal/util directory."
             exit 1
         fi
         util_folder="$TMP/com/android/internal/util"
     fi

     # Check if PixelPropsUtils files exist and delete them if found
     util_files=$(find "$util_folder" -name 'PixelPropsUtils*.smali')
     if [ -n "$util_files" ]; then
         arise "PixelPropsUtils files found:"
         for file in $util_files; do
             arise "$file"
         done
         arise "Deleting old PixelPropsUtils files..."
         rm -f $util_files
     fi

     ashborn_dir="$util_folder/ashborn"
     if [ -d "$ashborn_dir" ]; then
         arise "Necessary directory already exists. Copying Smali files..."
     else
         arise "Creating Necessary directory: $ashborn_dir..."
         mkdir -p "$ashborn_dir"
         if [ $? -ne 0 ]; then
             arise "Error: Failed to create Necessary directory."
             exit 1
         fi
     fi

     num_files=$(ls -1 "$smalis"/*.smali 2>/dev/null | wc -l)

     cp "$smalis"/*.smali "$ashborn_dir"

     if [ $? -ne 0 ]; then
         arise "Error: Failed to copy Smali files to necessary directory."
         exit 1
     else
         arise "Copying $num_files Smali files to necessary directory..."
         arise "Smali files copied successfully"
     fi
     
    arise "Replacing methods..."
    if ! smali_kit -check -method "newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;" -remake "$ashborn1" -dir "$TMP/Framework"; then
        arise "Error: Failed to replace methods."
        exit 1
    fi
    if ! smali_kit -check -method "newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;" -remake "$ashborn2" -dir "$TMP/Framework"; then
        arise "Error: Failed to replace methods."
        exit 1
    fi
    
    ui_print " "
    arise "Recompiling framework jar..."
    arise "This Is Gonna Take A While.."
    if ! dynamic_apktool -zipalign -preserve-signature -recompile "$TMP/Framework" -output "$modded"; then
        arise "Error: Failed to recompile Smali files."
        exit 1
    fi

    ui_print " "
    arise "Recompilation successful"
    arise "Unzipping The Modded Jar"
    if ! dynamic_zip_tool -extract "$modded" -output "$TMP/Mod"; then
        arise "Error: Failed to unzip the modded jar."
        exit 1
    fi
    
    arise "Comparing folders and adding missing ones..."
    compare_folders -add-folders "$TMP/Stock" -new "$TMP/Mod"
    
    arise "Make Framework Jar"
    cd "$TMP/Mod"
    zip -r -1 "framework.jar" ./* >/dev/null 2>&1
     
    arise "Copy Modded Framework To $mod_framework"
    mkdir -p "$mod_framework"
    if ! cp "$TMP/Mod/framework.jar" "$mod_framework/"; then
        arise "Error: Failed to copy the modded framework jar."
        exit 1
    fi
    
    device_model=$(getprop ro.product.system.device)
    
    arise "Creating system.prop..."
    if ! echo "ro.ashborn.device=$device_model" > "$MODPATH/system.prop"; then
        arise "Error: Failed to create system.prop file."
        exit 1
    fi
    arise "System.prop created with device model: $device_model"
    
    arise "Framework modification completed successfully"
    
    arise "Fixing directories...."
    if ! set_context "$stock_framework" "$MODPATH$stock_framework"; then
        arise "Error: Failed to set context for framework files."
        exit 1
    fi

    arise "Remove Unnecessary Files"
    rm -rf $smalis
    
    if [ -d "$TMP" ]; then
        arise "Clearing TMP Directory"
        rm -rf "$TMP"
        arise "Temporary directory cleared"
    else
        arise "Error: Temporary directory not found"
    fi
    
    end_time=$(date +%s)

    elapsed_time=$((end_time - start_time))

    if [ "$elapsed_time" -lt 60 ]; then
        time_message="$elapsed_time seconds"
    else
        elapsed_minutes=$(( (elapsed_time + 59) / 60 ))
        time_message="$elapsed_minutes minutes"
    fi

    arise "Flashed in approximately $time_message"
    
    arise "Before Rebooting Clear Data Of Play Service & Google Photos"
    arise "Done"
else
    arise "Error: Framework jar not found at $stock_framework"
    exit 1
fi