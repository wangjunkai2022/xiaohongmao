.class final Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$d;
.super Lkotlin/jvm/internal/Lambda;
.source "LoginFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->g1(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$d;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$d;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$d;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;

    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$d;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$d;->d()Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->B(Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V

    return-void
.end method
