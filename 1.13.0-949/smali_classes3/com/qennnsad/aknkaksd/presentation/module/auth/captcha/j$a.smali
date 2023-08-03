.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;
.super Ljava/lang/Object;
.source "ReCaptchaDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0008\u0010\u0006\u001a\u00020\u0004H\u0007J\u0008\u0010\u0007\u001a\u00020\u0004H\u0007J\u0008\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;",
        "",
        "",
        "token",
        "",
        "onSuccess",
        "onLoaded",
        "onError",
        "expiredError",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->b(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)V

    return-void
.end method

.method private static final b(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->X()Le5/i0;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Le5/i0;->b:Lcom/wang/avi/AVLoadingIndicatorView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final expiredError()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->V(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;->o()V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const-string v0, "reCaptcha"

    const-string v1, "expiredError"

    .line 3
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onError()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->V(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;->o()V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const-string v0, "reCaptcha"

    const-string v1, "onError"

    .line 3
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onLoaded()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "reCaptcha"

    const-string v1, "onLoaded"

    .line 1
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->X()Le5/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Le5/i0;->b:Lcom/wang/avi/AVLoadingIndicatorView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/i;

    invoke-direct {v2, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/i;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->V(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->W(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;->B(Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reCaptcha"

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
