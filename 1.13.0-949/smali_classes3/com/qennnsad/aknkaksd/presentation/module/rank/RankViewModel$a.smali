.class final Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RankViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;->x(Ljava/lang/String;)V
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
    c = "com.qennnsad.aknkaksd.presentation.module.rank.RankViewModel$followUser$1"
    f = "RankViewModel.kt"
    i = {}
    l = {
        0x32
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->c:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->a:I

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;->s(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;

    move-result-object p1

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g$a;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->c:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4, v5}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->c:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const v2, 0x7f1301b1

    .line 6
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    .line 7
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;->t(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;)Lkotlinx/coroutines/flow/t;

    move-result-object v2

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;->t(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;)Lkotlinx/coroutines/flow/t;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/t;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    const p1, 0x7f1301af

    .line 9
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    .line 10
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
