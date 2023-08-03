.class public final Lg5/d;
.super Ljava/lang/Object;
.source "LocalIDManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalIDManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalIDManager.kt\ncom/qennnsad/aknkaksd/domain/LocalIDManager\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,50:1\n107#2:51\n79#2,22:52\n107#2:74\n79#2,22:75\n*S KotlinDebug\n*F\n+ 1 LocalIDManager.kt\ncom/qennnsad/aknkaksd/domain/LocalIDManager\n*L\n42#1:51\n42#1:52,22\n24#1:74\n24#1:75,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u0003\u001a\u00020\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lg5/d;",
        "",
        "",
        "a",
        "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
        "prefsHelper",
        "Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;",
        "deviceInfo",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;)V
    .locals 9
    .param p1    # Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "prefsHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg5/d;->a:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    .line 3
    iput-object p2, p0, Lg5/d;->b:Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/IDBean;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/IDBean;-><init>()V

    const-string v1, "android"

    .line 5
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/IDBean;->setPlat(Ljava/lang/String;)V

    const-string v1, "1.13.0"

    .line 6
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/IDBean;->setVer(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->getImei()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/IDBean;->setUuid(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;->isEmulator()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/IDBean;->setEmulator(I)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/IDBean;->setDist(I)V

    const-string p2, "4aq871z9"

    .line 10
    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/data/bean/IDBean;->setNonce(Ljava/lang/String;)V

    const-string p2, "lite"

    .line 11
    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/data/bean/IDBean;->setIssued(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 12
    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/data/bean/IDBean;->setLob(I)V

    .line 13
    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/data/bean/IDBean;->setRid(I)V

    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/IDBean;->setPver(Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idbean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalIDManager"

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 17
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/util/AES;->aesencrypt_tiger2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aesencrypt_tiger2(gson.toJson(idBean))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-gt v5, v4, :cond_5

    if-nez v6, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v4

    .line 19
    :goto_1
    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    .line 20
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-nez v6, :cond_3

    if-nez v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v4, p2

    .line 21
    invoke-interface {v3, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string p2, "Computing device_id error"

    .line 23
    invoke-static {v2, p2, p1}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{\n            L.e(\"Local\u2026.toJson(idBean)\n        }"

    .line 25
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    :goto_4
    iput-object p1, p0, Lg5/d;->c:Ljava/lang/String;

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "device_id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalIDManager:---getDeviceid():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg5/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_id"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lg5/d;->c:Ljava/lang/String;

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v4, v1, :cond_5

    if-nez v5, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v1

    .line 4
    :goto_1
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 5
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v5, :cond_3

    if-nez v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v1, v2

    .line 6
    invoke-interface {v0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
