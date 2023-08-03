.class public final Lcom/im/freechat/domain/usecase/auth/c;
.super Lcom/im/freechat/domain/usecase/base/a;
.source "GetBannerListInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/domain/usecase/base/a<",
        "Lkotlin/Unit;",
        "Ljava/util/List<",
        "+",
        "Lcom/im/freechat/shared/entities/banner/Banner;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/auth/c;",
        "Lcom/im/freechat/domain/usecase/base/a;",
        "",
        "",
        "Lcom/im/freechat/shared/entities/banner/Banner;",
        "params",
        "c",
        "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/domain/k;",
        "a",
        "Lcom/im/freechat/domain/k;",
        "loginRepository",
        "Lcom/im/freechat/domain/p;",
        "b",
        "Lcom/im/freechat/domain/p;",
        "remoteRepository",
        "<init>",
        "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/im/freechat/domain/k;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/domain/p;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/p;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loginRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/domain/usecase/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/auth/c;->a:Lcom/im/freechat/domain/k;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/domain/usecase/auth/c;->b:Lcom/im/freechat/domain/p;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/auth/c;->c(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lkotlin/Unit;
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
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/banner/Banner;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of p1, p2, Lcom/im/freechat/domain/usecase/auth/c$a;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/im/freechat/domain/usecase/auth/c$a;

    iget v0, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->f:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->f:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/im/freechat/domain/usecase/auth/c$a;

    invoke-direct {p1, p0, p2}, Lcom/im/freechat/domain/usecase/auth/c$a;-><init>(Lcom/im/freechat/domain/usecase/auth/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_1

    iget-object v1, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v5, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/domain/usecase/auth/c;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v1, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/domain/usecase/auth/c;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/domain/usecase/auth/c;->a:Lcom/im/freechat/domain/k;

    iput-object p0, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->a:Ljava/lang/Object;

    iput v4, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->f:I

    invoke-interface {p2, p1}, Lcom/im/freechat/domain/k;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p0

    :goto_1
    check-cast p2, Lcom/im/freechat/shared/entities/auth/UserInfo;

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getToken()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v6, v1

    move-object v1, v5

    const/4 v7, 0x0

    move-object v5, p2

    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_7

    .line 6
    iget-object p2, v6, Lcom/im/freechat/domain/usecase/auth/c;->b:Lcom/im/freechat/domain/p;

    iput-object v6, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->a:Ljava/lang/Object;

    iput-object v5, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->b:Ljava/lang/Object;

    iput-object v1, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->c:Ljava/lang/Object;

    iput v3, p1, Lcom/im/freechat/domain/usecase/auth/c$a;->f:I

    invoke-interface {p2, v5, v7, p1}, Lcom/im/freechat/domain/p;->getBannerList(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    :goto_3
    check-cast p2, Lcom/im/freechat/shared/entities/PagedList;

    .line 8
    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/PagedList;->getList()Ljava/util/List;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/PagedList;->getPageInfo()Lcom/im/freechat/shared/entities/PageInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/im/freechat/shared/entities/PageInfo;->getPage()I

    move-result v7

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/PagedList;->getPageInfo()Lcom/im/freechat/shared/entities/PageInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/im/freechat/shared/entities/PageInfo;->getTotalPage()I

    move-result v8

    if-ge v7, v8, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    .line 10
    :goto_4
    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/PagedList;->getPageInfo()Lcom/im/freechat/shared/entities/PageInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/PageInfo;->getPage()I

    move-result p2

    add-int/2addr p2, v4

    move v9, v7

    move v7, p2

    move p2, v9

    goto :goto_2

    :cond_7
    return-object v1
.end method
