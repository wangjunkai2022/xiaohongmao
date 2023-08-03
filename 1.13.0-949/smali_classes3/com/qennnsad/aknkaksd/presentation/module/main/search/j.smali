.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;
.super Landroidx/paging/PagingSource;
.source "SearchUserPagingSource.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingSource<",
        "Ljava/lang/Integer;",
        "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B%\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ%\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J-\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\n2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;",
        "Landroidx/paging/PagingSource;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;",
        "Landroidx/paging/PagingState;",
        "state",
        "a",
        "(Landroidx/paging/PagingState;)Ljava/lang/Integer;",
        "Landroidx/paging/PagingSource$LoadParams;",
        "params",
        "Landroidx/paging/PagingSource$LoadResult;",
        "load",
        "(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;",
        "getPageListForSearchUseCase",
        "",
        "b",
        "Ljava/lang/String;",
        "query",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "loading",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)V",
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
.field private final a:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;
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
.method public constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;
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
            "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getPageListForSearchUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loading"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;->a:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;->c:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public a(Landroidx/paging/PagingState;)Ljava/lang/Integer;
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
            "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;",
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

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;->a(Landroidx/paging/PagingState;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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
            "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;

    iget v1, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;

    invoke-direct {v0, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;->b:I

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 6
    :goto_1
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;->a:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;

    .line 7
    new-instance v2, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p$a;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;->b:Ljava/lang/String;

    invoke-direct {v2, v4, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p$a;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-object p0, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;->a:Ljava/lang/Object;

    iput p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;->b:I

    iput v3, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j$a;->e:I

    invoke-virtual {p2, v2, v0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 9
    :goto_2
    invoke-static {p2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p2, Lcom/qennnsad/aknkaksd/data/bean/PageBean;

    .line 10
    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 11
    new-instance v0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 12
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getList()Ljava/util/List;

    move-result-object v1

    const-string v2, "it.list"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-ne p1, v3, :cond_5

    move-object p1, v2

    goto :goto_3

    :cond_5
    sub-int/2addr p1, v3

    .line 13
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    .line 14
    :goto_3
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getPage()I

    move-result v4

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getPage_cnt()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/PageBean;->getPage()I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 15
    :cond_6
    invoke-direct {v0, v1, p1, v2}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 16
    :cond_7
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 17
    iget-object p2, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 18
    new-instance p2, Landroidx/paging/PagingSource$LoadResult$Error;

    invoke-direct {p2, p1}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V

    return-object p2

    .line 19
    :cond_8
    iget-object p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 20
    new-instance p1, Landroidx/paging/PagingSource$LoadResult$Error;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {p1, p2}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
