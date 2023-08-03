.class public final Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Merge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/h;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lg5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/j<",
        "-",
        "Landroidx/paging/PagingData<",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        ">;>;",
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1\n+ 2 RankTodayViewModel.kt\ncom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel\n*L\n1#1,215:1\n38#2:216\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@\u00a8\u0006\u0005"
    }
    d2 = {
        "T",
        "R",
        "Lkotlinx/coroutines/flow/j;",
        "it",
        "",
        "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1",
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
    c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel$special$$inlined$flatMapLatest$1"
    f = "RankTodayViewModel.kt"
    i = {}
    l = {
        0xd8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;->d:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/j;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;->invoke(Lkotlinx/coroutines/flow/j;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/j;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlinx/coroutines/flow/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/j<",
            "-",
            "Landroidx/paging/PagingData<",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            ">;>;",
            "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;->d:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    invoke-direct {v0, p3, v1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;)V

    iput-object p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;->b:Ljava/lang/Object;

    iput-object p2, v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;->c:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/j;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;->c:Ljava/lang/Object;

    .line 3
    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h;

    .line 4
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$b;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;->d:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    invoke-direct {v3, v4, v1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;Lcom/qennnsad/aknkaksd/presentation/module/rank/h;)V

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/util/u;->b(Lkotlin/jvm/functions/Function0;)Landroidx/paging/Pager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/paging/Pager;->getFlow()Lkotlinx/coroutines/flow/i;

    move-result-object v1

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$special$$inlined$flatMapLatest$1;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/k;->m0(Lkotlinx/coroutines/flow/j;Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
