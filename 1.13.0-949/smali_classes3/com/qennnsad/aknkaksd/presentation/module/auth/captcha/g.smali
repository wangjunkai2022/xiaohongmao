.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;
.super Ljava/lang/Object;
.source "HCaptchaDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J^\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u000428\u0010\u000e\u001a4\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u00060\u0008H\u0007R\u0014\u0010\u0012\u001a\u00020\u00058\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00058\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;",
        "",
        "Landroid/app/Activity;",
        "activity",
        "Lkotlin/Function1;",
        "",
        "",
        "onSuccess",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "code",
        "msg",
        "onError",
        "c",
        "b",
        "Ljava/lang/String;",
        "TAG",
        "SITE_KEY",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "HCaptcha"
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "62133ffc-087f-485d-bc4c-12c770deb6d8"
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;->e(Lkotlin/jvm/functions/Function2;Lcom/hcaptcha/sdk/HCaptchaException;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Lcom/hcaptcha/sdk/l;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;->d(Lkotlin/jvm/functions/Function1;Lcom/hcaptcha/sdk/l;)V

    return-void
.end method

.method public static final c(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/hcaptcha/sdk/HCaptcha;->A(Landroid/content/Context;)Lcom/hcaptcha/sdk/HCaptcha;

    move-result-object p0

    const-string v0, "62133ffc-087f-485d-bc4c-12c770deb6d8"

    invoke-virtual {p0, v0}, Lcom/hcaptcha/sdk/HCaptcha;->d(Ljava/lang/String;)Lcom/hcaptcha/sdk/HCaptcha;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/f;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/f;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/hcaptcha/sdk/tasks/e;->j(Lcom/hcaptcha/sdk/tasks/d;)Lcom/hcaptcha/sdk/tasks/e;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/e;

    invoke-direct {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/e;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/tasks/e;->h(Lcom/hcaptcha/sdk/tasks/a;)Lcom/hcaptcha/sdk/tasks/e;

    return-void
.end method

.method private static final d(Lkotlin/jvm/functions/Function1;Lcom/hcaptcha/sdk/l;)V
    .locals 2

    const-string v0, "$onSuccess"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/l;->a()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HCaptcha"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "userResponseToken"

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final e(Lkotlin/jvm/functions/Function2;Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 3

    const-string v0, "$onError"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaException;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HCaptcha"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error msg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaException;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
