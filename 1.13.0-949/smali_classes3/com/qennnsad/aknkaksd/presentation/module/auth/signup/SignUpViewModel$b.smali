.class final Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SignUpViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->I(Ljava/lang/String;Ljava/lang/String;D)V
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
    c = "com.qennnsad.aknkaksd.presentation.module.auth.signup.SignUpViewModel$register$1"
    f = "SignUpViewModel.kt"
    i = {}
    l = {
        0x9e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:D


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;Ljava/lang/String;Ljava/lang/String;DLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->d:Ljava/lang/String;

    iput-wide p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->e:D

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->e:D

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;Ljava/lang/String;Ljava/lang/String;DLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->B()Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->D()Ljava/lang/String;

    move-result-object v6

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->A()Ljava/lang/String;

    move-result-object v9

    .line 7
    new-instance p1, Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;

    .line 8
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->c:Ljava/lang/String;

    .line 9
    iget-object v7, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->d:Ljava/lang/String;

    .line 10
    iget-wide v10, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->e:D

    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p1

    .line 11
    invoke-direct/range {v3 .. v9}, Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->u(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->v(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;

    move-result-object v1

    .line 14
    :goto_0
    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->a:I

    invoke-virtual {v1, p1, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lkotlin/Unit;

    .line 15
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h$c;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h$c;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->r(Ljava/lang/String;)V

    .line 18
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
