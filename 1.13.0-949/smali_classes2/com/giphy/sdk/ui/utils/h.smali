.class public final Lcom/giphy/sdk/ui/utils/h;
.super Ljava/lang/Object;
.source "MediaExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaExtension.kt\ncom/giphy/sdk/ui/utils/MediaExtensionKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,60:1\n13506#2,2:61\n*E\n*S KotlinDebug\n*F\n+ 1 MediaExtension.kt\ncom/giphy/sdk/ui/utils/MediaExtensionKt\n*L\n33#1,2:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0002\u001a\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\"\u0015\u0010\n\u001a\u00020\u0002*\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\"\u0015\u0010\u000c\u001a\u00020\u0002*\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\t\"\u0017\u0010\u0010\u001a\u0004\u0018\u00010\r*\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/giphy/sdk/core/models/Asset;",
        "asset",
        "",
        "a",
        "Lcom/giphy/sdk/core/models/Image;",
        "image",
        "b",
        "Lcom/giphy/sdk/core/models/Media;",
        "c",
        "(Lcom/giphy/sdk/core/models/Media;)F",
        "aspectRatio",
        "d",
        "videoAspectRatio",
        "",
        "e",
        "(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/String;",
        "videoUrl",
        "giphy-ui-2.1.9_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private static final a(Lcom/giphy/sdk/core/models/Asset;)F
    .locals 1

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Asset;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Asset;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private static final b(Lcom/giphy/sdk/core/models/Image;)F
    .locals 1

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Image;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public static final c(Lcom/giphy/sdk/core/models/Media;)F
    .locals 2
    .param p0    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "$this$aspectRatio"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p0

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Image;->getWidth()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Image;->getHeight()I

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    int-to-float v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    :cond_1
    return v0
.end method

.method public static final d(Lcom/giphy/sdk/core/models/Media;)F
    .locals 6
    .param p0    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "$this$videoAspectRatio"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v1, v0, [Landroid/os/Parcelable;

    .line 1
    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getVideo()Lcom/giphy/sdk/core/models/Video;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Video;->getAssets()Lcom/giphy/sdk/core/models/Assets;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Assets;->getSize360p()Lcom/giphy/sdk/core/models/Asset;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 2
    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getVideo()Lcom/giphy/sdk/core/models/Video;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Video;->getAssets()Lcom/giphy/sdk/core/models/Assets;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Assets;->getSize1080p()Lcom/giphy/sdk/core/models/Asset;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getVideo()Lcom/giphy/sdk/core/models/Video;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/giphy/sdk/core/models/Video;->getAssets()Lcom/giphy/sdk/core/models/Assets;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/giphy/sdk/core/models/Assets;->getSize720p()Lcom/giphy/sdk/core/models/Asset;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    aput-object v5, v1, v2

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getVideo()Lcom/giphy/sdk/core/models/Video;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/giphy/sdk/core/models/Video;->getAssets()Lcom/giphy/sdk/core/models/Assets;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/giphy/sdk/core/models/Assets;->getSize480p()Lcom/giphy/sdk/core/models/Asset;

    move-result-object v3

    :cond_3
    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 5
    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v3

    invoke-virtual {v3}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 6
    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v3

    invoke-virtual {v3}, Lcom/giphy/sdk/core/models/Images;->getPreview()Lcom/giphy/sdk/core/models/Image;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 7
    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p0

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Images;->getFixedWidth()Lcom/giphy/sdk/core/models/Image;

    move-result-object p0

    aput-object p0, v1, v2

    :goto_3
    if-ge v4, v0, :cond_6

    .line 8
    aget-object p0, v1, v4

    .line 9
    instance-of v2, p0, Lcom/giphy/sdk/core/models/Asset;

    if-eqz v2, :cond_4

    .line 10
    check-cast p0, Lcom/giphy/sdk/core/models/Asset;

    invoke-static {p0}, Lcom/giphy/sdk/ui/utils/h;->a(Lcom/giphy/sdk/core/models/Asset;)F

    move-result p0

    return p0

    .line 11
    :cond_4
    instance-of v2, p0, Lcom/giphy/sdk/core/models/Image;

    if-eqz v2, :cond_5

    .line 12
    check-cast p0, Lcom/giphy/sdk/core/models/Image;

    invoke-static {p0}, Lcom/giphy/sdk/ui/utils/h;->b(Lcom/giphy/sdk/core/models/Image;)F

    move-result p0

    return p0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const p0, 0x3fe38e39

    return p0
.end method

.method public static final e(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/String;
    .locals 6
    .param p0    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "$this$videoUrl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/giphy/sdk/core/models/Asset;

    .line 1
    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getVideo()Lcom/giphy/sdk/core/models/Video;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Video;->getAssets()Lcom/giphy/sdk/core/models/Assets;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Assets;->getSize720p()Lcom/giphy/sdk/core/models/Asset;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getVideo()Lcom/giphy/sdk/core/models/Video;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Video;->getAssets()Lcom/giphy/sdk/core/models/Assets;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Assets;->getSize1080p()Lcom/giphy/sdk/core/models/Asset;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const/4 v4, 0x1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getVideo()Lcom/giphy/sdk/core/models/Video;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/giphy/sdk/core/models/Video;->getAssets()Lcom/giphy/sdk/core/models/Assets;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/giphy/sdk/core/models/Assets;->getSize480p()Lcom/giphy/sdk/core/models/Asset;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    aput-object v5, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getVideo()Lcom/giphy/sdk/core/models/Video;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/giphy/sdk/core/models/Video;->getAssets()Lcom/giphy/sdk/core/models/Assets;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/giphy/sdk/core/models/Assets;->getSize360p()Lcom/giphy/sdk/core/models/Asset;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    aput-object v5, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Media;->getVideo()Lcom/giphy/sdk/core/models/Video;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Video;->getAssets()Lcom/giphy/sdk/core/models/Assets;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/giphy/sdk/core/models/Assets;->getSource()Lcom/giphy/sdk/core/models/Asset;

    move-result-object p0

    goto :goto_4

    :cond_4
    move-object p0, v2

    :goto_4
    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/giphy/sdk/core/models/Asset;

    if-eqz v1, :cond_6

    .line 3
    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Asset;->getWidth()I

    move-result v1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    if-lez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_5

    goto :goto_7

    :cond_8
    move-object v0, v2

    .line 4
    :goto_7
    check-cast v0, Lcom/giphy/sdk/core/models/Asset;

    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Asset;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_9
    return-object v2
.end method
