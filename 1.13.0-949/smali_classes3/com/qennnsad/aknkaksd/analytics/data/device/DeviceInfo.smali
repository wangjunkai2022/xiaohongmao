.class public final Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\r\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR\u0011\u0010\u000f\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\nR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\nR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\nR\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\nR\u0011\u0010\u0019\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\nR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\nR\u0013\u0010 \u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\nR\u0011\u0010\"\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\nR\u0011\u0010$\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\nR\u0013\u0010&\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\n\u00a8\u0006("
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "app",
        "Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;",
        "appAliasForAnalytics",
        "",
        "getAppAliasForAnalytics",
        "()Ljava/lang/String;",
        "appAliasForAnalytics$delegate",
        "Lkotlin/Lazy;",
        "appBuildTime",
        "getAppBuildTime",
        "appName",
        "getAppName",
        "appPackageName",
        "getAppPackageName",
        "appVersionName",
        "getAppVersionName",
        "device",
        "Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;",
        "deviceId",
        "getDeviceId",
        "isEmulator",
        "",
        "()Z",
        "language",
        "getLanguage",
        "model",
        "getModel",
        "os",
        "getOs",
        "platform",
        "getPlatform",
        "recordTime",
        "getRecordTime",
        "vendor",
        "getVendor",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lu7/f;
.end annotation


# instance fields
.field private final app:Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final appAliasForAnalytics$delegate:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final device:Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final deviceId:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final language:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation runtime Lm6/b;
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->app:Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->device:Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;

    .line 4
    sget-object p1, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo$appAliasForAnalytics$2;->INSTANCE:Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo$appAliasForAnalytics$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->appAliasForAnalytics$delegate:Lkotlin/Lazy;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "35"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "n/a"

    if-nez v1, :cond_0

    move-object v1, v2

    .line 7
    :cond_0
    new-instance v3, Ljava/util/UUID;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v6, p1

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UUID(uniquePseudoID.hash\u2026de().toLong()).toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->deviceId:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;->getLanguage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    iput-object v2, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->language:Ljava/lang/String;

    return-void
.end method

.method private final getAppAliasForAnalytics()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->appAliasForAnalytics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getAppBuildTime()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "1684911464280"

    return-object v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->getAppAliasForAnalytics()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->app:Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppVersionName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->app:Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->device:Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOs()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->device:Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlatform()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "Android"

    return-object v0
.end method

.method public final getRecordTime()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVendor()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->device:Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isEmulator()Z
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->device:Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/Device;->isEmulator()Z

    move-result v0

    return v0
.end method
