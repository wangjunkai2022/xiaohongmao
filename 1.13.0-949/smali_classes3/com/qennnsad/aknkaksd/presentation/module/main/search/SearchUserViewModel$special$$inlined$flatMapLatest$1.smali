.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Merge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;)V
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
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
        ">;>;",
        "Ljava/lang/String;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1\n+ 2 SearchUserViewModel.kt\ncom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel\n*L\n1#1,215:1\n40#2,5:216\n*E\n"
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
    c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserViewModel$special$$inlined$flatMapLatest$1"
    f = "SearchUserViewModel.kt"
    i = {}
    l = {
        0xdc
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->d:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/j;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->invoke(Lkotlinx/coroutines/flow/j;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->d:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    invoke-direct {v0, p3, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;)V

    iput-object p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->b:Ljava/lang/Object;

    iput-object p2, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->c:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/j;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->c:Ljava/lang/Object;

    .line 3
    check-cast v1, Ljava/lang/String;

    const-string v3, "it"

    .line 4
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    invoke-static {}, Lkotlinx/coroutines/flow/k;->n0()Lkotlinx/coroutines/flow/i;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_3
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->d:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->s(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;)Lx4/a;

    move-result-object v3

    sget-object v5, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_SEARCH:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    new-array v6, v2, [Ljava/lang/String;

    aput-object v1, v6, v4

    invoke-virtual {v3, v5, v6}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    .line 6
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$a;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->d:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    invoke-direct {v3, v4, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;Ljava/lang/String;)V

    const/16 v1, 0x32

    invoke-static {v3, v1}, Lcom/qennnsad/aknkaksd/util/u;->a(Lkotlin/jvm/functions/Function0;I)Landroidx/paging/Pager;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/paging/Pager;->getFlow()Lkotlinx/coroutines/flow/i;

    move-result-object v1

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->d:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/s0;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/paging/CachedPagingDataKt;->cachedIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;)Lkotlinx/coroutines/flow/i;

    move-result-object v1

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->d:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->x()Lkotlinx/coroutines/flow/t;

    move-result-object v3

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v4}, Lkotlinx/coroutines/flow/k;->f2(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;

    move-result-object v1

    :goto_1
    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$special$$inlined$flatMapLatest$1;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/k;->m0(Lkotlinx/coroutines/flow/j;Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
