.class final Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SharedViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->K()Lkotlinx/coroutines/j2;
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
    c = "com.qennnsad.aknkaksd.presentation.common.SharedViewModel$loginToIm$1"
    f = "SharedViewModel.kt"
    i = {}
    l = {
        0x77,
        0x7a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;->c:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;->c:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    invoke-direct {p1, v0, p2}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;->c:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->u(Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;

    move-result-object p1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput v3, p0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;->b:I

    invoke-virtual {p1, v1, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;->c:Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    .line 5
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_7

    .line 6
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->F()Lg5/a;

    move-result-object v4

    invoke-virtual {v4}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 7
    :cond_5
    invoke-static {}, Lcom/im/freechat/sdk/SDKManager;->h()Lcom/im/freechat/sdk/c;

    move-result-object v6

    .line 8
    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 9
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->F()Lg5/a;

    move-result-object v8

    invoke-virtual {v8}, Lg5/a;->n()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    .line 10
    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isMystery()I

    move-result v4

    if-ne v4, v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 11
    :goto_2
    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c$a;

    const/4 v4, 0x0

    invoke-direct {v10, v1, v4}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v11, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c$b;

    invoke-direct {v11, v1, v4}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;->a:Ljava/lang/Object;

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel$c;->b:I

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v3

    move-object v12, p0

    invoke-virtual/range {v5 .. v12}, Lcom/im/freechat/sdk/c;->f(ILjava/lang/Integer;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 12
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
