.class public final Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;
.super Ljava/lang/Object;
.source "ChannelsSearchResponse.kt"

# interfaces
.implements Lcom/giphy/sdk/core/network/response/GenericResponse;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B)\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;",
        "Lcom/giphy/sdk/core/network/response/GenericResponse;",
        "data",
        "",
        "Lcom/giphy/sdk/core/models/Channel;",
        "pagination",
        "Lcom/giphy/sdk/core/models/Pagination;",
        "meta",
        "Lcom/giphy/sdk/core/models/Meta;",
        "(Ljava/util/List;Lcom/giphy/sdk/core/models/Pagination;Lcom/giphy/sdk/core/models/Meta;)V",
        "getData",
        "()Ljava/util/List;",
        "setData",
        "(Ljava/util/List;)V",
        "getMeta",
        "()Lcom/giphy/sdk/core/models/Meta;",
        "setMeta",
        "(Lcom/giphy/sdk/core/models/Meta;)V",
        "getPagination",
        "()Lcom/giphy/sdk/core/models/Pagination;",
        "setPagination",
        "(Lcom/giphy/sdk/core/models/Pagination;)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/Channel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private meta:Lcom/giphy/sdk/core/models/Meta;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private pagination:Lcom/giphy/sdk/core/models/Pagination;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/giphy/sdk/core/models/Pagination;Lcom/giphy/sdk/core/models/Meta;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/Pagination;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/models/Meta;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/Channel;",
            ">;",
            "Lcom/giphy/sdk/core/models/Pagination;",
            "Lcom/giphy/sdk/core/models/Meta;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;->data:Ljava/util/List;

    iput-object p2, p0, Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;->pagination:Lcom/giphy/sdk/core/models/Pagination;

    iput-object p3, p0, Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;->meta:Lcom/giphy/sdk/core/models/Meta;

    return-void
.end method


# virtual methods
.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/Channel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;->data:Ljava/util/List;

    return-object v0
.end method

.method public final getMeta()Lcom/giphy/sdk/core/models/Meta;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;->meta:Lcom/giphy/sdk/core/models/Meta;

    return-object v0
.end method

.method public final getPagination()Lcom/giphy/sdk/core/models/Pagination;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;->pagination:Lcom/giphy/sdk/core/models/Pagination;

    return-object v0
.end method

.method public final setData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/Channel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;->data:Ljava/util/List;

    return-void
.end method

.method public final setMeta(Lcom/giphy/sdk/core/models/Meta;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Meta;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;->meta:Lcom/giphy/sdk/core/models/Meta;

    return-void
.end method

.method public final setPagination(Lcom/giphy/sdk/core/models/Pagination;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Pagination;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;->pagination:Lcom/giphy/sdk/core/models/Pagination;

    return-void
.end method
