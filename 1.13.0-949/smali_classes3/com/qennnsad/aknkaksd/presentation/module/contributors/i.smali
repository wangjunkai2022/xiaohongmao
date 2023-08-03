.class public final Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;
.super Landroidx/paging/PagingSource;
.source "ContributorsPagingSource.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingSource<",
        "Ljava/lang/Integer;",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContributorsPagingSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContributorsPagingSource.kt\ncom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsPagingSource\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1559#2:48\n1590#2,4:49\n*S KotlinDebug\n*F\n+ 1 ContributorsPagingSource.kt\ncom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsPagingSource\n*L\n36#1:48\n36#1:49,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B%\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ%\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J-\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\n2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0012R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;",
        "Landroidx/paging/PagingSource;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        "Landroidx/paging/PagingState;",
        "state",
        "b",
        "(Landroidx/paging/PagingState;)Ljava/lang/Integer;",
        "Landroidx/paging/PagingSource$LoadParams;",
        "params",
        "Landroidx/paging/PagingSource$LoadResult;",
        "load",
        "(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/b;",
        "a",
        "Lcom/qennnsad/aknkaksd/domain/usecase/b;",
        "getContributorsUseCase",
        "",
        "Ljava/lang/String;",
        "userId",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "loading",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/domain/usecase/b;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/domain/usecase/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/b;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/domain/usecase/b;",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getContributorsUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loading"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;->a:Lcom/qennnsad/aknkaksd/domain/usecase/b;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;->c:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic a(Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public b(Landroidx/paging/PagingState;)Ljava/lang/Integer;
    .locals 2
    .param p1    # Landroidx/paging/PagingState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingState<",
            "Ljava/lang/Integer;",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/paging/PagingState;->getAnchorPosition()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/paging/PagingState;->closestPageToPosition(I)Landroidx/paging/PagingSource$LoadResult$Page;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadResult$Page;->getPrevKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v1, p1

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadResult$Page;->getNextKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public bridge synthetic getRefreshKey(Landroidx/paging/PagingState;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;->b(Landroidx/paging/PagingState;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .param p1    # Landroidx/paging/PagingSource$LoadParams;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingSource$LoadParams<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/paging/PagingSource$LoadResult<",
            "Ljava/lang/Integer;",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;

    iget v3, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;

    invoke-direct {v2, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->f:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v10, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v2, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    iget v3, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->c:I

    iget-object v4, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->b:Ljava/lang/Object;

    check-cast v4, Lcom/qennnsad/aknkaksd/data/bean/PageBean;

    iget-object v2, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PagingSource$LoadParams;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget v4, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->c:I

    iget-object v8, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/PagingSource$LoadParams;

    iget-object v11, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->a:Ljava/lang/Object;

    check-cast v11, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v8

    move v8, v4

    move-object/from16 v4, v28

    goto :goto_3

    :cond_5
    iget-object v4, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/paging/PagingSource$LoadParams;

    iget-object v11, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->a:Ljava/lang/Object;

    check-cast v11, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/i1;->e()Lkotlinx/coroutines/u2;

    move-result-object v1

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$b;

    invoke-direct {v4, v0, v9}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->a:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->b:Ljava/lang/Object;

    iput v10, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->f:I

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/j;->h(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v4, v11

    move-object v11, v0

    .line 5
    :goto_1
    invoke-virtual {v4}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    .line 6
    :goto_2
    iget-object v12, v11, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;->a:Lcom/qennnsad/aknkaksd/domain/usecase/b;

    new-instance v13, Lcom/qennnsad/aknkaksd/domain/usecase/b$a;

    iget-object v14, v11, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;->b:Ljava/lang/String;

    invoke-direct {v13, v14, v1}, Lcom/qennnsad/aknkaksd/domain/usecase/b$a;-><init>(Ljava/lang/String;I)V

    iput-object v11, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->a:Ljava/lang/Object;

    iput-object v4, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->b:Ljava/lang/Object;

    iput v1, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->c:I

    iput v8, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->f:I

    invoke-virtual {v12, v13, v2}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_9

    return-object v3

    :cond_9
    move-object/from16 v28, v8

    move v8, v1

    move-object/from16 v1, v28

    :goto_3
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/PageBean;

    .line 7
    invoke-static {}, Lkotlinx/coroutines/i1;->e()Lkotlinx/coroutines/u2;

    move-result-object v5

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$c;

    invoke-direct {v6, v11, v9}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->a:Ljava/lang/Object;

    iput-object v1, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->b:Ljava/lang/Object;

    iput v8, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->c:I

    iput v7, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->f:I

    invoke-static {v5, v6, v2}, Lkotlinx/coroutines/j;->h(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_a

    return-object v3

    :cond_a
    move-object v2, v4

    move v3, v8

    move-object v4, v1

    .line 8
    :goto_4
    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getPage_index()I

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2}, Landroidx/paging/PagingSource$LoadParams;->getLoadSize()I

    move-result v5

    if-ne v1, v5, :cond_b

    .line 9
    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getPage()I

    move-result v1

    add-int/2addr v1, v10

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 10
    :cond_b
    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getPage_index()I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getPage_index()I

    move-result v1

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getPage_size()I

    move-result v5

    mul-int v1, v1, v5

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getRow_count()I

    move-result v5

    if-ge v1, v5, :cond_c

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getPage_index()I

    move-result v1

    add-int/2addr v1, v10

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_c
    move-object v1, v9

    .line 11
    :goto_5
    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getList()Ljava/util/List;

    move-result-object v4

    const-string v5, "result.list"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    .line 13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-gez v6, :cond_d

    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_d
    check-cast v7, Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    move-object v11, v7

    const-string v12, "data"

    .line 15
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v2}, Landroidx/paging/PagingSource$LoadParams;->getLoadSize()I

    move-result v12

    mul-int v7, v7, v12

    add-int/2addr v7, v6

    add-int/2addr v7, v10

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3ffe

    const/16 v27, 0x0

    invoke-static/range {v11 .. v27}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->copy$default(Lcom/qennnsad/aknkaksd/data/bean/RankItem;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v6, v8

    goto :goto_6

    :cond_e
    if-ne v3, v10, :cond_f

    goto :goto_7

    :cond_f
    sub-int/2addr v3, v10

    .line 16
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    .line 17
    :goto_7
    new-instance v2, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-direct {v2, v5, v9, v1}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 18
    :cond_10
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 19
    invoke-static {}, Lkotlinx/coroutines/i1;->e()Lkotlinx/coroutines/u2;

    move-result-object v4

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$d;

    invoke-direct {v5, v11, v9}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->a:Ljava/lang/Object;

    iput-object v9, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->b:Ljava/lang/Object;

    iput v6, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->f:I

    invoke-static {v4, v5, v2}, Lkotlinx/coroutines/j;->h(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_11

    return-object v3

    :cond_11
    move-object v2, v1

    .line 20
    :goto_8
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Error;

    invoke-direct {v1, v2}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 21
    :cond_12
    invoke-static {}, Lkotlinx/coroutines/i1;->e()Lkotlinx/coroutines/u2;

    move-result-object v1

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$e;

    invoke-direct {v4, v11, v9}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/contributors/i;Lkotlin/coroutines/Continuation;)V

    iput-object v9, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->a:Ljava/lang/Object;

    iput-object v9, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->b:Ljava/lang/Object;

    iput v5, v2, Lcom/qennnsad/aknkaksd/presentation/module/contributors/i$a;->f:I

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/j;->h(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_13

    return-object v3

    .line 22
    :cond_13
    :goto_9
    new-instance v1, Landroidx/paging/PagingSource$LoadResult$Error;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {v1, v2}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method
