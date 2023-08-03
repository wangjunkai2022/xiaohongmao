.class public final Lcom/im/freechat/data/sources/api/entities/PagedListResponse;
.super Ljava/lang/Object;
.source "PagedListResponse.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u001f\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/PagedListResponse;",
        "T",
        "",
        "pageInfoResponse",
        "Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;",
        "list",
        "",
        "(Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;Ljava/util/List;)V",
        "getList",
        "()Ljava/util/List;",
        "getPageInfoResponse",
        "()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;",
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


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final pageInfoResponse:Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "page_info"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "list"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "pageInfoResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->pageInfoResponse:Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getPageInfoResponse()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/PagedListResponse;->pageInfoResponse:Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;

    return-object v0
.end method
