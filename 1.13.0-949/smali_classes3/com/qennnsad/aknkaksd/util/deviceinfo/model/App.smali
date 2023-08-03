.class public final Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;
.super Ljava/lang/Object;
.source "App.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0008\"\u0004\u0008\u0017\u0010\nR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0008\"\u0004\u0008\u001a\u0010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "activityName",
        "",
        "getActivityName",
        "()Ljava/lang/String;",
        "setActivityName",
        "(Ljava/lang/String;)V",
        "appName",
        "getAppName",
        "setAppName",
        "appVersionCode",
        "",
        "getAppVersionCode",
        "()Ljava/lang/Integer;",
        "setAppVersionCode",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "appVersionName",
        "getAppVersionName",
        "setAppVersionName",
        "packageName",
        "getPackageName",
        "setPackageName",
        "toJSON",
        "Lorg/json/JSONObject;",
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


# instance fields
.field private activityName:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private appName:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private appVersionCode:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private appVersionName:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;->getVersionName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appVersionName:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;->getVersionCode()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appVersionCode:Ljava/lang/Integer;

    .line 5
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->packageName:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;->getActivityName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->activityName:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/deviceinfo/DeviceInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getActivityName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersionCode()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appVersionCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAppVersionName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final setActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->activityName:Ljava/lang/String;

    return-void
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appName:Ljava/lang/String;

    return-void
.end method

.method public final setAppVersionCode(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appVersionCode:Ljava/lang/Integer;

    return-void
.end method

.method public final setAppVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appVersionName:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appVersionName"

    .line 2
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appVersionCode"

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appVersionCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packageName"

    .line 4
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "activityName"

    .line 5
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appName"

    .line 6
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/deviceinfo/model/App;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
