.class final Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RestorePasswordViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel$sendSms$1"
    f = "RestorePasswordViewModel.kt"
    i = {}
    l = {
        0x4d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->e:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->w()Lh5/a;

    move-result-object p1

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lh5/a;->f(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->u(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    move-result-object p1

    .line 6
    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0$a;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->w()Lh5/a;

    move-result-object v5

    const-string v6, "findpass"

    invoke-direct {v1, v3, v4, v6, v5}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh5/a;)V

    .line 7
    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 9
    new-instance v1, Lh5/a;

    sget-object v3, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4, v5}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->D(Lh5/a;)V

    .line 10
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$f;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->s(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 13
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/domain/base/RequestException;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/qennnsad/aknkaksd/domain/base/RequestException;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/domain/base/RequestException;->getResponse()Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getCode()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 14
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->g(Ljava/lang/Throwable;)V

    .line 15
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$b;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$b;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->g(Ljava/lang/Throwable;)V

    .line 17
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
