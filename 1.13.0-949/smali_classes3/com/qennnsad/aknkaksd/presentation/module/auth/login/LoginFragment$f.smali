.class final Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$f;
.super Lkotlin/jvm/internal/Lambda;
.source "LoginFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->n1(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$f;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$f;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$f;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->N(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V

    return-void
.end method
