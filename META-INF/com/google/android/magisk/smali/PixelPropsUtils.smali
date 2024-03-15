.class public Lcom/android/internal/util/ashborn/PixelPropsUtils;
.super Ljava/lang/Object;
.source "PixelPropsUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICE:Ljava/lang/String; = "ro.ashborn.device"

.field private static final SPOOF_PIXEL_GAMES:Ljava/lang/String; = "persist.sys.pixelprops.games"

.field private static final SPOOF_PIXEL_GAPPS:Ljava/lang/String; = "persist.sys.pixelprops.gapps"

.field private static final SPOOF_PIXEL_GMS:Ljava/lang/String; = "persist.sys.pixelprops.gms"

.field private static final SPOOF_PIXEL_GPHOTOS:Ljava/lang/String; = "persist.sys.pixelprops.gphotos"

.field private static final SPOOF_PIXEL_NETFLIX:Ljava/lang/String; = "persist.sys.pixelprops.netflix"

.field private static final TAG:Ljava/lang/String;

.field private static final packagesToChangeBS4:[Ljava/lang/String;

.field private static final packagesToChangeF5:[Ljava/lang/String;

.field private static final packagesToChangeMI11TP:[Ljava/lang/String;

.field private static final packagesToChangeMI13P:[Ljava/lang/String;

.field private static final packagesToChangeOP8P:[Ljava/lang/String;

.field private static final packagesToChangeOP9P:[Ljava/lang/String;

.field private static final packagesToChangePixel5a:[Ljava/lang/String;

.field private static final packagesToChangePixel8Pro:[Ljava/lang/String;

.field private static final packagesToChangeROG6:[Ljava/lang/String;

.field private static final packagesToChangeXP5:[Ljava/lang/String;

.field private static final packagesToKeep:[Ljava/lang/String;

.field private static final propsToChangeBS4:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeF5:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeGeneric:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeMI11TP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeMI13P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeOP8P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeOP9P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangePixel5a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangePixel8Pro:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangePixelXL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeROG6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToChangeXP5:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final propsToKeep:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sIsFinsky:Z

.field private static volatile sIsGms:Z


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 34
    const-class v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->TAG:Ljava/lang/String;

    .line 59
    const-string v1, "com.android.chrome"

    const-string v2, "com.android.vending"

    const-string v3, "com.google.android.apps.customization.pixel"

    const-string v4, "com.google.android.apps.emojiwallpaper"

    const-string v5, "com.google.android.apps.privacy.wildlife"

    const-string v6, "com.google.android.apps.subscriptions.red"

    const-string v7, "com.google.android.apps.wallpaper"

    const-string v8, "com.google.android.apps.wallpaper.pixel"

    const-string v9, "com.google.android.googlequicksearchbox"

    const-string v10, "com.google.android.wallpaper.effects"

    const-string v11, "com.google.pixel.livewallpaper"

    const-string v12, "com.nhs.online.nhsonline"

    const-string v13, "com.netflix.mediaclient"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangePixel8Pro:[Ljava/lang/String;

    .line 76
    const-string v0, "com.google.android.tts"

    const-string v1, "com.breel.wallpapers20"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangePixel5a:[Ljava/lang/String;

    .line 82
    const-string v1, "com.google.android.apps.motionsense.bridge"

    const-string v2, "com.google.android.apps.nexuslauncher"

    const-string v3, "com.google.android.apps.pixelmigrate"

    const-string v4, "com.google.android.apps.recorder"

    const-string v5, "com.google.android.apps.restore"

    const-string v6, "com.google.android.apps.tachyon"

    const-string v7, "com.google.android.apps.tycho"

    const-string v8, "com.google.android.apps.wearables.maestro.companion"

    const-string v9, "com.google.android.apps.youtube.kids"

    const-string v10, "com.google.android.apps.youtube.music"

    const-string v11, "com.google.android.as"

    const-string v12, "com.google.android.dialer"

    const-string v13, "com.google.android.euicc"

    const-string v14, "com.google.android.setupwizard"

    const-string v15, "com.google.android.youtube"

    const-string v16, "com.google.ar.core"

    const-string v17, "com.google.intelligence.sense"

    const-string v18, "com.google.oslo"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToKeep:[Ljava/lang/String;

    .line 104
    const-string v1, "com.activision.callofduty.shooter"

    const-string v2, "com.ea.gp.fifamobile"

    const-string v3, "com.gameloft.android.ANMP.GloftA9HM"

    const-string v4, "com.madfingergames.legends"

    const-string v5, "com.pearlabyss.blackdesertm"

    const-string v6, "com.pearlabyss.blackdesertm.gl"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeROG6:[Ljava/lang/String;

    .line 114
    const-string v0, "com.tencent.tmgp.kr.codm"

    const-string v1, "com.vng.codmvn"

    const-string v2, "com.garena.game.codm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeXP5:[Ljava/lang/String;

    .line 121
    const-string v1, "com.netease.lztgglobal"

    const-string v2, "com.pubg.imobile"

    const-string v3, "com.pubg.krmobile"

    const-string v4, "com.rekoo.pubgm"

    const-string v5, "com.riotgames.league.wildrift"

    const-string v6, "com.riotgames.league.wildrifttw"

    const-string v7, "com.riotgames.league.wildriftvn"

    const-string v8, "com.riotgames.league.teamfighttactics"

    const-string v9, "com.riotgames.league.teamfighttacticstw"

    const-string v10, "com.riotgames.league.teamfighttacticsvn"

    const-string v11, "com.tencent.ig"

    const-string v12, "com.tencent.tmgp.pubgmhd"

    const-string v13, "com.vng.pubgmobile"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeOP8P:[Ljava/lang/String;

    .line 138
    const-string v0, "com.epicgames.portal"

    const-string v1, "com.tencent.lolm"

    const-string v2, "com.epicgames.fortnite"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeOP9P:[Ljava/lang/String;

    .line 145
    const-string v0, "com.supercell.clashofclans"

    const-string v1, "com.vng.mlbbvn"

    const-string v2, "com.ea.gp.apexlegendsmobilefps"

    const-string v3, "com.levelinfinite.hotta.gp"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeMI11TP:[Ljava/lang/String;

    .line 153
    const-string v0, "com.levelinfinite.sgameGlobal"

    const-string v1, "com.tencent.tmgp.sgame"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeMI13P:[Ljava/lang/String;

    .line 159
    const-string v0, "com.dts.freefireth"

    const-string v1, "com.mobile.legends"

    const-string v2, "com.dts.freefiremax"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeF5:[Ljava/lang/String;

    .line 166
    const-string v0, "com.proximabeta.mf.uamo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeBS4:[Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->sIsGms:Z

    .line 171
    sput-boolean v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->sIsFinsky:Z

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToKeep:Ljava/util/Map;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "FINGERPRINT"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "com.google.android.settings.intelligence"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeGeneric:Ljava/util/Map;

    .line 177
    const-string v1, "TYPE"

    const-string/jumbo v3, "user"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "TAGS"

    const-string/jumbo v3, "release-keys"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangePixel8Pro:Ljava/util/Map;

    .line 180
    const-string v1, "BRAND"

    const-string/jumbo v3, "google"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v4, "MANUFACTURER"

    const-string v5, "Google"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v6, "DEVICE"

    const-string/jumbo v7, "husky"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v8, "PRODUCT"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v9, "HARDWARE"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v7, "Pixel 8 Pro"

    const-string v10, "MODEL"

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v7, "UQ1A.240205.004"

    const-string v11, "ID"

    invoke-interface {v0, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v7, "google/husky/husky:14/UQ1A.240205.004/11269751:user/release-keys"

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangePixel5a:Ljava/util/Map;

    .line 189
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v7, "barbet"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v7, "Pixel 5a"

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v7, "UQ1A.240205.002"

    invoke-interface {v0, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v7, "google/barbet/barbet:14/UQ1A.240205.002/11224170:user/release-keys"

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    .line 198
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string/jumbo v3, "marlin"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v3, "Pixel XL"

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v3, "QP1A.191005.007.A3"

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v3, "google/marlin/marlin:10/QP1A.191005.007.A3/5972272:user/release-keys"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeROG6:Ljava/util/Map;

    .line 207
    const-string v2, "asus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v2, "AI2201"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v2, "ASUS_AI2201"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeXP5:Ljava/util/Map;

    .line 212
    const-string v2, "SO-52A"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v2, "Sony"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeOP8P:Ljava/util/Map;

    .line 215
    const-string v2, "IN2020"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v2, "OnePlus"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeOP9P:Ljava/util/Map;

    .line 218
    const-string v3, "LE2123"

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeMI11TP:Ljava/util/Map;

    .line 221
    const-string v2, "2107113SI"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v2, "Xiaomi"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeMI13P:Ljava/util/Map;

    .line 224
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "2210132C"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeF5:Ljava/util/Map;

    .line 228
    const-string v1, "23049PCD8G"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeBS4:Ljava/util/Map;

    .line 231
    const-string v1, "2SM-X706B"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "blackshark"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCallerSafetyNet()Z
    .registers 2

    .line 416
    sget-boolean v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->sIsGms:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/ashborn/PixelPropsUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/util/ashborn/PixelPropsUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 417
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 416
    :goto_0
    return v0
.end method

.method static synthetic lambda$isCallerSafetyNet$1(Ljava/lang/StackTraceElement;)Z
    .registers 2

    .line 417
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DroidGuard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setProps$0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    .line 236
    invoke-static {p0, p1}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onEngineGetCertificateChain()V
    .registers 3

    .line 422
    invoke-static {}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->isCallerSafetyNet()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->sIsFinsky:Z

    if-nez v0, :cond_0

    .line 426
    return-void

    .line 423
    :cond_0
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blocked key attestation sIsGms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/util/ashborn/PixelPropsUtils;->sIsGms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sIsFinsky="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/util/ashborn/PixelPropsUtils;->sIsFinsky:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static setPropValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 370
    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 371
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 372
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 374
    :catch_0
    move-exception p1

    .line 375
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set prop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    :goto_0
    return-void
.end method

.method public static setProps(Ljava/lang/String;)V
    .registers 8

    .line 236
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeGeneric:Ljava/util/Map;

    new-instance v1, Lcom/android/internal/util/ashborn/PixelPropsUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/util/ashborn/PixelPropsUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 238
    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 241
    :cond_0
    const-string v0, "com.google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 242
    const-string v0, "com.samsung."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangePixel8Pro:[Ljava/lang/String;

    .line 243
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangePixel5a:[Ljava/lang/String;

    .line 244
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_8

    .line 304
    :cond_1
    const-string/jumbo v0, "persist.sys.pixelprops.games"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    return-void

    .line 307
    :cond_2
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeROG6:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 309
    sget-object p0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeROG6:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 312
    invoke-static {v1, v0}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    goto :goto_0

    :cond_3
    goto/16 :goto_b

    .line 314
    :cond_4
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeXP5:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 316
    sget-object p0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeXP5:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 319
    invoke-static {v1, v0}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    goto :goto_1

    :cond_5
    goto/16 :goto_b

    .line 321
    :cond_6
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeOP8P:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 323
    sget-object p0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeOP8P:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 324
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 326
    invoke-static {v1, v0}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    goto :goto_2

    :cond_7
    goto/16 :goto_b

    .line 328
    :cond_8
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeOP9P:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 330
    sget-object p0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeOP9P:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 331
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 332
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 333
    invoke-static {v1, v0}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    goto :goto_3

    :cond_9
    goto/16 :goto_b

    .line 335
    :cond_a
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeMI11TP:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 337
    sget-object p0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeMI11TP:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 338
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 340
    invoke-static {v1, v0}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    goto :goto_4

    :cond_b
    goto/16 :goto_b

    .line 342
    :cond_c
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeMI13P:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 344
    sget-object p0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeMI13P:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 346
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 347
    invoke-static {v1, v0}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    goto :goto_5

    :cond_d
    goto/16 :goto_b

    .line 349
    :cond_e
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeF5:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 351
    sget-object p0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeF5:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 354
    invoke-static {v1, v0}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    goto :goto_6

    :cond_f
    goto/16 :goto_b

    .line 356
    :cond_10
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangeBS4:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 358
    sget-object p0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangeBS4:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 360
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 361
    invoke-static {v1, v0}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    goto :goto_7

    .line 246
    :cond_11
    :goto_8
    const-string/jumbo v0, "persist.sys.pixelprops.gapps"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_12

    .line 247
    return-void

    .line 249
    :cond_12
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToKeep:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 250
    const-string v0, "com.google.android.GoogleCamera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_c

    .line 254
    :cond_13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    const-string v3, "com.google.android.apps.photos"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "persist.sys.pixelprops.gms"

    if-eqz v3, :cond_15

    .line 257
    const-string/jumbo v1, "persist.sys.pixelprops.gphotos"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 258
    sget-object v1, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_9

    .line 260
    :cond_14
    sget-object v1, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangePixel5a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_9

    .line 262
    :cond_15
    const-string v3, "com.netflix.mediaclient"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 263
    const-string/jumbo v3, "persist.sys.pixelprops.netflix"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_16

    .line 265
    return-void

    .line 266
    :cond_16
    const-string v1, "com.android.vending"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 267
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 268
    sput-boolean v2, Lcom/android/internal/util/ashborn/PixelPropsUtils;->sIsFinsky:Z

    .line 269
    return-void

    .line 270
    :cond_17
    sget-object v1, Lcom/android/internal/util/ashborn/PixelPropsUtils;->packagesToChangePixel8Pro:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 271
    sget-object v1, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangePixel8Pro:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_9

    .line 273
    :cond_18
    sget-object v1, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToChangePixel5a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 277
    :goto_9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 279
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 280
    sget-object v5, Lcom/android/internal/util/ashborn/PixelPropsUtils;->propsToKeep:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 282
    goto :goto_a

    .line 285
    :cond_19
    invoke-static {v3, v1}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    goto :goto_a

    .line 287
    :cond_1a
    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 288
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "TIME"

    invoke-static {v0, p0}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object p0

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unstable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "instrumentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 293
    :cond_1b
    sput-boolean v2, Lcom/android/internal/util/ashborn/PixelPropsUtils;->sIsGms:Z

    .line 294
    invoke-static {}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->spoofBuildGms()V

    .line 296
    :cond_1c
    return-void

    .line 299
    :cond_1d
    const-string v0, "com.google.android.settings.intelligence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 300
    const-string p0, "FINGERPRINT"

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    :cond_1e
    nop

    .line 365
    :cond_1f
    :goto_b
    return-void

    .line 251
    :cond_20
    :goto_c
    return-void

    .line 239
    :cond_21
    :goto_d
    return-void
.end method

.method private static setVersionField(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 382
    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 383
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 384
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_0

    .line 386
    :catch_0
    move-exception p1

    .line 387
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set prop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    :goto_0
    return-void
.end method

.method private static setVersionFieldString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 394
    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 395
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 396
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 397
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    goto :goto_0

    .line 398
    :catch_0
    move-exception p1

    .line 399
    sget-object v0, Lcom/android/internal/util/ashborn/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set prop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    :goto_0
    return-void
.end method

.method private static spoofBuildGms()V
    .registers 2

    .line 405
    const-string v0, "BRAND"

    const-string v1, "Hisense"

    invoke-static {v0, v1}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    const-string v0, "MANUFACTURER"

    invoke-static {v0, v1}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    const-string v0, "DEVICE"

    const-string v1, "HS6735MT"

    invoke-static {v0, v1}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    const-string v0, "ID"

    const-string v1, "MRA58K"

    invoke-static {v0, v1}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    const-string v0, "FINGERPRINT"

    const-string v1, "Hisense/F30/HS6735MT:6.0/MRA58K/L1228.6.01.01:user/release-keys"

    invoke-static {v0, v1}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    const-string v0, "MODEL"

    const-string v1, "Hisense F30"

    invoke-static {v0, v1}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    const-string v0, "PRODUCT"

    const-string v1, "F30"

    invoke-static {v0, v1}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    const-string v0, "SECURITY_PATCH"

    const-string v1, "2016-02-01"

    invoke-static {v0, v1}, Lcom/android/internal/util/ashborn/PixelPropsUtils;->setVersionFieldString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method
