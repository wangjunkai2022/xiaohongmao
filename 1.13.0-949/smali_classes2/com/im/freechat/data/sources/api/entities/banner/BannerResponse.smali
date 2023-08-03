.class public final Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;
.super Ljava/lang/Object;
.source "BannerResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;",
        "",
        "id",
        "",
        "link",
        "",
        "path",
        "pathSmall",
        "pathBig",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()I",
        "getLink",
        "()Ljava/lang/String;",
        "getPath",
        "getPathBig",
        "getPathSmall",
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
.field private final id:I

.field private final link:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final path:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final pathBig:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final pathSmall:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "link"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "path_original"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "path_small"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "path_big"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "link"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathSmall"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathBig"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->id:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->link:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->path:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->pathSmall:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->pathBig:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->id:I

    return v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPathBig()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->pathBig:Ljava/lang/String;

    return-object v0
.end method

.method public final getPathSmall()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;->pathSmall:Ljava/lang/String;

    return-object v0
.end method
