.class public final Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;
.super Ljava/lang/Object;
.source "BannerResponseMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBannerResponseMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerResponseMapper.kt\ncom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n1549#2:33\n1620#2,3:34\n*S KotlinDebug\n*F\n+ 1 BannerResponseMapper.kt\ncom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper\n*L\n20#1:33\n20#1:34,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponseMapper;",
        "",
        "()V",
        "map",
        "Lcom/im/freechat/shared/entities/PagedList;",
        "Lcom/im/freechat/shared/entities/banner/Banner;",
        "response",
        "Lcom/im/freechat/data/sources/api/entities/PagedListResponse;",
        "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Lcom/im/freechat/data/sources/api/entities/PagedListResponse;)Lcom/im/freechat/shared/entities/PagedList;
    .locals 10
    .param p1    # Lcom/im/freechat/data/sources/api/entities/PagedListResponse;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/api/entities/PagedListResponse<",
            "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;",
            ">;)",
            "Lcom/im/freechat/shared/entities/PagedList<",
            "Lcom/im/freechat/shared/entities/banner/Banner;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/PageInfo;

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getPageInfoResponse()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->getPage()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getPageInfoResponse()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->getPageNum()Ljava/lang/Integer;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getPageInfoResponse()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->getSize()Ljava/lang/Integer;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getPageInfoResponse()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->getTotalPage()I

    move-result v5

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getPageInfoResponse()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->getTotalCount()I

    move-result v6

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/shared/entities/PageInfo;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;II)V

    .line 8
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->getList()Ljava/util/List;

    move-result-object p1

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;

    .line 12
    new-instance v9, Lcom/im/freechat/shared/entities/banner/Banner;

    .line 13
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->getId()I

    move-result v4

    .line 14
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->getLink()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->getPathSmall()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->getPathBig()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    .line 18
    invoke-direct/range {v3 .. v8}, Lcom/im/freechat/shared/entities/banner/Banner;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lcom/im/freechat/shared/entities/PagedList;

    invoke-direct {p1, v0, v1}, Lcom/im/freechat/shared/entities/PagedList;-><init>(Lcom/im/freechat/shared/entities/PageInfo;Ljava/util/List;)V

    return-object p1
.end method
