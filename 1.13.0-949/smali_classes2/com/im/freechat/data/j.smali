.class public final Lcom/im/freechat/data/j;
.super Ljava/lang/Object;
.source "RemoteRepositoryImpl.kt"

# interfaces
.implements Lcom/im/freechat/domain/p;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010(\u001a\u00020&\u0012\u0006\u0010+\u001a\u00020)\u0012\u0006\u0010.\u001a\u00020,\u0012\u0006\u00101\u001a\u00020/\u00a2\u0006\u0004\u00082\u00103J1\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ+\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J)\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J)\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J)\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u0017J/\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ/\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010\u0017J#\u0010\"\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010\u0017J)\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008$\u0010%R\u0014\u0010(\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010*R\u0014\u0010.\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010-R\u0014\u00101\u001a\u00020/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u00100\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00064"
    }
    d2 = {
        "Lcom/im/freechat/data/j;",
        "Lcom/im/freechat/domain/p;",
        "",
        "token",
        "Lcom/im/freechat/shared/entities/contact/ContactType;",
        "type",
        "",
        "page",
        "Lcom/im/freechat/shared/entities/PagedList;",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "e",
        "(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/shared/entities/contact/RelationOperationType;",
        "toUserId",
        "",
        "b",
        "(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/RelationOperationType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "userId",
        "d",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "phone",
        "",
        "f",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "nickname",
        "searchContactByNickname",
        "g",
        "userIds",
        "searchContactByIds",
        "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "",
        "a",
        "params",
        "c",
        "Lcom/im/freechat/shared/entities/banner/Banner;",
        "getBannerList",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/data/sources/api/ApiService;",
        "Lcom/im/freechat/data/sources/api/ApiService;",
        "apiService",
        "Lcom/im/freechat/data/openapigen/api/FriendApi;",
        "Lcom/im/freechat/data/openapigen/api/FriendApi;",
        "friendApi",
        "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;",
        "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;",
        "contactResponseMapper",
        "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;",
        "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;",
        "bannerResponseMapper",
        "<init>",
        "(Lcom/im/freechat/data/sources/api/ApiService;Lcom/im/freechat/data/openapigen/api/FriendApi;Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;)V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/im/freechat/data/sources/api/ApiService;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/data/openapigen/api/FriendApi;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/data/sources/api/ApiService;Lcom/im/freechat/data/openapigen/api/FriendApi;Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/sources/api/ApiService;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/api/FriendApi;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "apiService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactResponseMapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerResponseMapper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/j;->a:Lcom/im/freechat/data/sources/api/ApiService;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/j;->b:Lcom/im/freechat/data/openapigen/api/FriendApi;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/j;->c:Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/j;->d:Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/j$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/j$d;

    iget v1, v0, Lcom/im/freechat/data/j$d;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/j$d;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/j$d;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/j$d;-><init>(Lcom/im/freechat/data/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/j$d;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/j$d;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/j$d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/j;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p3, p0, Lcom/im/freechat/data/j;->a:Lcom/im/freechat/data/sources/api/ApiService;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 6
    iput-object p0, v0, Lcom/im/freechat/data/j$d;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/j$d;->d:I

    invoke-interface {p3, p1, p2, v0}, Lcom/im/freechat/data/sources/api/ApiService;->searchContactByIds(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 7
    :goto_1
    check-cast p3, Lcom/im/freechat/data/sources/api/entities/Response;

    .line 8
    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;

    if-eqz p2, :cond_4

    .line 9
    iget-object p1, p1, Lcom/im/freechat/data/j;->c:Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;->mapPinnedChats(Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    new-instance p1, Lcom/im/freechat/shared/entities/ApiException;

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getCode()I

    move-result p2

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/im/freechat/shared/entities/ApiException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    :catch_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/RelationOperationType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/contact/RelationOperationType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/im/freechat/shared/entities/contact/RelationOperationType;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p4, Lcom/im/freechat/data/j$e;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/im/freechat/data/j$e;

    iget v1, v0, Lcom/im/freechat/data/j$e;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/j$e;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/j$e;

    invoke-direct {v0, p0, p4}, Lcom/im/freechat/data/j$e;-><init>(Lcom/im/freechat/data/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/im/freechat/data/j$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/j$e;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p0, Lcom/im/freechat/data/j;->a:Lcom/im/freechat/data/sources/api/ApiService;

    .line 5
    new-instance v2, Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;

    .line 6
    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/contact/RelationOperationType;->getType()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-direct {v2, p2, p3}, Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;-><init>(Ljava/lang/String;I)V

    .line 8
    iput v3, v0, Lcom/im/freechat/data/j$e;->c:I

    invoke-interface {p4, p1, v2, v0}, Lcom/im/freechat/data/sources/api/ApiService;->relationOperation(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    .line 9
    :cond_3
    :goto_1
    check-cast p4, Lcom/im/freechat/data/sources/api/entities/Response;

    .line 10
    invoke-virtual {p4}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 12
    :cond_4
    new-instance p1, Lcom/im/freechat/shared/entities/ApiException;

    invoke-virtual {p4}, Lcom/im/freechat/data/sources/api/entities/Response;->getCode()I

    move-result p2

    invoke-virtual {p4}, Lcom/im/freechat/data/sources/api/entities/Response;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/im/freechat/shared/entities/ApiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 1
    sget-object v0, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lokhttp3/RequestBody$Companion;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    const-string v3, "check"

    invoke-virtual {v0, v3, v2, v1}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/im/freechat/data/j;->a:Lcom/im/freechat/data/sources/api/ApiService;

    invoke-interface {v1, p1, v0, p2, p3}, Lcom/im/freechat/data/sources/api/ApiService;->updateUserInfo(Ljava/lang/String;Lokhttp3/MultipartBody$Part;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public d(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/j$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/j$a;

    iget v1, v0, Lcom/im/freechat/data/j$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/j$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/j$a;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/j$a;-><init>(Lcom/im/freechat/data/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/j$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/j$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p2, p0, Lcom/im/freechat/data/j;->b:Lcom/im/freechat/data/openapigen/api/FriendApi;

    new-instance v2, Lcom/im/freechat/data/openapigen/models/DeleteFriendRequest;

    invoke-direct {v2, p1}, Lcom/im/freechat/data/openapigen/models/DeleteFriendRequest;-><init>(I)V

    iput v3, v0, Lcom/im/freechat/data/j$a;->c:I

    invoke-interface {p2, v2, v0}, Lcom/im/freechat/data/openapigen/api/FriendApi;->deleteFriend(Lcom/im/freechat/data/openapigen/models/DeleteFriendRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Lretrofit2/Response;

    .line 6
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 8
    :cond_4
    new-instance p1, Lcom/im/freechat/shared/entities/ApiException;

    invoke-virtual {p2}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/im/freechat/shared/entities/ApiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;Lcom/im/freechat/shared/entities/contact/ContactType;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/contact/ContactType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/im/freechat/shared/entities/contact/ContactType;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/PagedList<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p4, Lcom/im/freechat/data/j$c;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/im/freechat/data/j$c;

    iget v1, v0, Lcom/im/freechat/data/j$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/j$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/j$c;

    invoke-direct {v0, p0, p4}, Lcom/im/freechat/data/j$c;-><init>(Lcom/im/freechat/data/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/im/freechat/data/j$c;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/j$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/j$c;->b:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/im/freechat/shared/entities/contact/ContactType;

    iget-object p1, v0, Lcom/im/freechat/data/j$c;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/j;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p0, Lcom/im/freechat/data/j;->a:Lcom/im/freechat/data/sources/api/ApiService;

    .line 5
    new-instance v2, Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;

    .line 6
    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/contact/ContactType;->getType()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e

    .line 7
    invoke-direct {v2, v4, v5, p3}, Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;-><init>(Ljava/lang/String;II)V

    .line 8
    iput-object p0, v0, Lcom/im/freechat/data/j$c;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/j$c;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/j$c;->e:I

    invoke-interface {p4, p1, v2, v0}, Lcom/im/freechat/data/sources/api/ApiService;->getContactList(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 9
    :goto_1
    check-cast p4, Lcom/im/freechat/data/sources/api/entities/Response;

    .line 10
    invoke-virtual {p4}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;

    if-eqz p3, :cond_4

    .line 11
    iget-object p1, p1, Lcom/im/freechat/data/j;->c:Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;

    invoke-virtual {p1, p3, p2}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;->map(Lcom/im/freechat/data/sources/api/entities/PagedListResponse;Lcom/im/freechat/shared/entities/contact/ContactType;)Lcom/im/freechat/shared/entities/PagedList;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    new-instance p1, Lcom/im/freechat/shared/entities/ApiException;

    invoke-virtual {p4}, Lcom/im/freechat/data/sources/api/entities/Response;->getCode()I

    move-result p2

    invoke-virtual {p4}, Lcom/im/freechat/data/sources/api/entities/Response;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/im/freechat/shared/entities/ApiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/j$i;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/j$i;

    iget v1, v0, Lcom/im/freechat/data/j$i;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/j$i;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/j$i;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/j$i;-><init>(Lcom/im/freechat/data/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/j$i;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/j$i;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/j$i;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/j;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/j;->a:Lcom/im/freechat/data/sources/api/ApiService;

    .line 5
    new-instance v2, Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-direct {v2, v4}, Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;-><init>([Ljava/lang/String;)V

    .line 6
    iput-object p0, v0, Lcom/im/freechat/data/j$i;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/j$i;->d:I

    invoke-interface {p3, p1, v2, v0}, Lcom/im/freechat/data/sources/api/ApiService;->searchContactByPhone(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 7
    :goto_1
    check-cast p3, Lcom/im/freechat/data/sources/api/entities/Response;

    .line 8
    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    .line 9
    iget-object p1, p1, Lcom/im/freechat/data/j;->c:Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;->mapSearch(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    new-instance p1, Lcom/im/freechat/shared/entities/ApiException;

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getCode()I

    move-result p2

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/im/freechat/shared/entities/ApiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/j$f;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/j$f;

    iget v1, v0, Lcom/im/freechat/data/j$f;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/j$f;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/j$f;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/j$f;-><init>(Lcom/im/freechat/data/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/j$f;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/j$f;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/j$f;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/j;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p3, p0, Lcom/im/freechat/data/j;->a:Lcom/im/freechat/data/sources/api/ApiService;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 6
    iput-object p0, v0, Lcom/im/freechat/data/j$f;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/j$f;->d:I

    invoke-interface {p3, p1, p2, v0}, Lcom/im/freechat/data/sources/api/ApiService;->searchContactByIds(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 7
    :goto_1
    check-cast p3, Lcom/im/freechat/data/sources/api/entities/Response;

    .line 8
    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;

    if-eqz p2, :cond_4

    .line 9
    iget-object p1, p1, Lcom/im/freechat/data/j;->c:Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;->mapSearch(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    new-instance p1, Lcom/im/freechat/shared/entities/ApiException;

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getCode()I

    move-result p2

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/im/freechat/shared/entities/ApiException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBannerList(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/PagedList<",
            "Lcom/im/freechat/shared/entities/banner/Banner;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/j$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/j$b;

    iget v1, v0, Lcom/im/freechat/data/j$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/j$b;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/j$b;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/j$b;-><init>(Lcom/im/freechat/data/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/j$b;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/j$b;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/j$b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/j;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/j;->a:Lcom/im/freechat/data/sources/api/ApiService;

    iput-object p0, v0, Lcom/im/freechat/data/j$b;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/j$b;->d:I

    invoke-interface {p3, p1, p2, v0}, Lcom/im/freechat/data/sources/api/ApiService;->getBannerList(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p3, Lcom/im/freechat/data/sources/api/entities/Response;

    .line 6
    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;

    if-eqz p2, :cond_4

    .line 7
    iget-object p1, p1, Lcom/im/freechat/data/j;->d:Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;->map(Lcom/im/freechat/data/sources/api/entities/PagedListResponse;)Lcom/im/freechat/shared/entities/PagedList;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    new-instance p1, Lcom/im/freechat/shared/entities/ApiException;

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getCode()I

    move-result p2

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/im/freechat/shared/entities/ApiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public searchContactByIds(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/j$g;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/j$g;

    iget v1, v0, Lcom/im/freechat/data/j$g;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/j$g;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/j$g;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/j$g;-><init>(Lcom/im/freechat/data/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/j$g;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/j$g;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/j$g;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/j;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p3, p0, Lcom/im/freechat/data/j;->a:Lcom/im/freechat/data/sources/api/ApiService;

    iput-object p0, v0, Lcom/im/freechat/data/j$g;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/j$g;->d:I

    invoke-interface {p3, p1, p2, v0}, Lcom/im/freechat/data/sources/api/ApiService;->searchContactByIds(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p3, Lcom/im/freechat/data/sources/api/entities/Response;

    .line 6
    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;

    if-eqz p2, :cond_4

    .line 7
    iget-object p1, p1, Lcom/im/freechat/data/j;->c:Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;->mapSearch(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    new-instance p1, Lcom/im/freechat/shared/entities/ApiException;

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getCode()I

    move-result p2

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/im/freechat/shared/entities/ApiException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public searchContactByNickname(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/j$h;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/j$h;

    iget v1, v0, Lcom/im/freechat/data/j$h;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/j$h;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/j$h;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/j$h;-><init>(Lcom/im/freechat/data/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/j$h;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/j$h;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/j$h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/j;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p3, p0, Lcom/im/freechat/data/j;->a:Lcom/im/freechat/data/sources/api/ApiService;

    iput-object p0, v0, Lcom/im/freechat/data/j$h;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/j$h;->d:I

    invoke-interface {p3, p1, p2, v0}, Lcom/im/freechat/data/sources/api/ApiService;->searchContactByNickname(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p3, Lcom/im/freechat/data/sources/api/entities/Response;

    .line 6
    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;

    if-eqz p2, :cond_4

    .line 7
    iget-object p1, p1, Lcom/im/freechat/data/j;->c:Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponseMapper;->mapSearch(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    new-instance p1, Lcom/im/freechat/shared/entities/ApiException;

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getCode()I

    move-result p2

    invoke-virtual {p3}, Lcom/im/freechat/data/sources/api/entities/Response;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/im/freechat/shared/entities/ApiException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
