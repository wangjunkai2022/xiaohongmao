.class public final Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;
.super Ljava/lang/Object;
.source "PageInfoResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B;\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;",
        "",
        "page",
        "",
        "pageNum",
        "size",
        "totalPage",
        "totalCount",
        "(ILjava/lang/Integer;Ljava/lang/Integer;II)V",
        "getPage",
        "()I",
        "getPageNum",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSize",
        "getTotalCount",
        "getTotalPage",
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
.field private final page:I

.field private final pageNum:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final size:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final totalCount:I

.field private final totalPage:I


# direct methods
.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;II)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "pageNum"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "size"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "totalPage"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "totalCount"
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->page:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->pageNum:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->size:Ljava/lang/Integer;

    .line 5
    iput p4, p0, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->totalPage:I

    .line 6
    iput p5, p0, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->totalCount:I

    return-void
.end method


# virtual methods
.method public final getPage()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->page:I

    return v0
.end method

.method public final getPageNum()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->pageNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSize()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->size:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->totalCount:I

    return v0
.end method

.method public final getTotalPage()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;->totalPage:I

    return v0
.end method
