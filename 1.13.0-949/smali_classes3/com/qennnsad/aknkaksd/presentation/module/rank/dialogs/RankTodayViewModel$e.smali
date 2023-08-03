.class final Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RankTodayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;->B(Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRankTodayViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankTodayViewModel.kt\ncom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$unfollowUser$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1#2:69\n766#3:70\n857#3,2:71\n*S KotlinDebug\n*F\n+ 1 RankTodayViewModel.kt\ncom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$unfollowUser$1\n*L\n61#1:70\n61#1:71,2\n*E\n"
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
    c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel$unfollowUser$1"
    f = "RankTodayViewModel.kt"
    i = {}
    l = {
        0x3b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->c:Ljava/lang/String;

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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->a:I

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;->v(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;

    move-result-object p1

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->c:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4, v5}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->c:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const v3, 0x7f130426

    invoke-virtual {v0, v3}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    .line 6
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;->t(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;)Lkotlinx/coroutines/flow/t;

    move-result-object v3

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;->t(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;)Lkotlinx/coroutines/flow/t;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/t;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 9
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_3

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$e;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    const p1, 0x7f130425

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    .line 11
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
