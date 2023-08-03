.class final Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/s0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/s0;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$login$1"
    f = "LoginViewModel.kt"
    i = {}
    l = {
        0x56
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->g:Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;-><init>(Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->b:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    const-string v0, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->p(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->d:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->p(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->G()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->e:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    const-string v0, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u4ee3\u7801"

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->p(Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->C()Lh5/a;

    move-result-object p1

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lh5/a;->f(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->w(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;

    move-result-object p1

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$b;

    .line 9
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->C()Lh5/a;

    move-result-object v4

    .line 10
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->b:Ljava/lang/String;

    .line 11
    iget-object v6, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->g:Ljava/lang/String;

    .line 12
    iget-object v7, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->d:Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->G()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->e:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    move-object v8, v3

    move-object v3, v1

    .line 14
    invoke-direct/range {v3 .. v8}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$b;-><init>(Lh5/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 15
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lkotlin/Unit;

    .line 16
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$a;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 18
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->LOGIN:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    invoke-static {v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->s(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Ljava/lang/Throwable;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->g(Ljava/lang/Throwable;)V

    .line 19
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
