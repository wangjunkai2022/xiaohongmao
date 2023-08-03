.class public final Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;
.super Ljava/lang/Object;
.source "GPHContent.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/ui/pagination/GPHContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013J\"\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019J\u0018\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;",
        "",
        "()V",
        "emoji",
        "Lcom/giphy/sdk/ui/pagination/GPHContent;",
        "getEmoji",
        "()Lcom/giphy/sdk/ui/pagination/GPHContent;",
        "recents",
        "getRecents",
        "trendingGifs",
        "getTrendingGifs",
        "trendingStickers",
        "getTrendingStickers",
        "trendingText",
        "getTrendingText",
        "trendingVideos",
        "getTrendingVideos",
        "animate",
        "input",
        "",
        "searchQuery",
        "search",
        "mediaType",
        "Lcom/giphy/sdk/core/models/enums/MediaType;",
        "ratingType",
        "Lcom/giphy/sdk/core/models/enums/RatingType;",
        "trending",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;-><init>()V

    return-void
.end method

.method public static synthetic searchQuery$default(Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;ILjava/lang/Object;)Lcom/giphy/sdk/ui/pagination/GPHContent;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 1
    sget-object p2, Lcom/giphy/sdk/core/models/enums/MediaType;->gif:Lcom/giphy/sdk/core/models/enums/MediaType;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2
    sget-object p3, Lcom/giphy/sdk/core/models/enums/RatingType;->pg13:Lcom/giphy/sdk/core/models/enums/RatingType;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->searchQuery(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;)Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic trending$default(Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;ILjava/lang/Object;)Lcom/giphy/sdk/ui/pagination/GPHContent;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/giphy/sdk/core/models/enums/RatingType;->pg13:Lcom/giphy/sdk/core/models/enums/RatingType;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->trending(Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;)Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final animate(Ljava/lang/String;)Lcom/giphy/sdk/ui/pagination/GPHContent;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/giphy/sdk/ui/pagination/GPHContent;

    invoke-direct {v0}, Lcom/giphy/sdk/ui/pagination/GPHContent;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/pagination/GPHContent;->s(Z)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/pagination/GPHContent;->x(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/giphy/sdk/core/models/enums/MediaType;->text:Lcom/giphy/sdk/core/models/enums/MediaType;

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/pagination/GPHContent;->t(Lcom/giphy/sdk/core/models/enums/MediaType;)V

    .line 5
    sget-object p1, Lcom/giphy/sdk/ui/GPHRequestType;->animate:Lcom/giphy/sdk/ui/GPHRequestType;

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/pagination/GPHContent;->w(Lcom/giphy/sdk/ui/GPHRequestType;)V

    return-object v0
.end method

.method public final getEmoji()Lcom/giphy/sdk/ui/pagination/GPHContent;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/giphy/sdk/ui/pagination/GPHContent;->a()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v0

    return-object v0
.end method

.method public final getRecents()Lcom/giphy/sdk/ui/pagination/GPHContent;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/giphy/sdk/ui/pagination/GPHContent;->b()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v0

    return-object v0
.end method

.method public final getTrendingGifs()Lcom/giphy/sdk/ui/pagination/GPHContent;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/giphy/sdk/ui/pagination/GPHContent;->c()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v0

    return-object v0
.end method

.method public final getTrendingStickers()Lcom/giphy/sdk/ui/pagination/GPHContent;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/giphy/sdk/ui/pagination/GPHContent;->d()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v0

    return-object v0
.end method

.method public final getTrendingText()Lcom/giphy/sdk/ui/pagination/GPHContent;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/giphy/sdk/ui/pagination/GPHContent;->e()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v0

    return-object v0
.end method

.method public final getTrendingVideos()Lcom/giphy/sdk/ui/pagination/GPHContent;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/giphy/sdk/ui/pagination/GPHContent;->f()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object v0

    return-object v0
.end method

.method public final searchQuery(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;)Lcom/giphy/sdk/ui/pagination/GPHContent;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "search"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ratingType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/giphy/sdk/ui/pagination/GPHContent;

    invoke-direct {v0}, Lcom/giphy/sdk/ui/pagination/GPHContent;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/pagination/GPHContent;->x(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/giphy/sdk/ui/pagination/GPHContent;->t(Lcom/giphy/sdk/core/models/enums/MediaType;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/giphy/sdk/ui/pagination/GPHContent;->u(Lcom/giphy/sdk/core/models/enums/RatingType;)V

    .line 5
    sget-object p1, Lcom/giphy/sdk/ui/GPHRequestType;->search:Lcom/giphy/sdk/ui/GPHRequestType;

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/pagination/GPHContent;->w(Lcom/giphy/sdk/ui/GPHRequestType;)V

    return-object v0
.end method

.method public final trending(Lcom/giphy/sdk/core/models/enums/MediaType;Lcom/giphy/sdk/core/models/enums/RatingType;)Lcom/giphy/sdk/ui/pagination/GPHContent;
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "mediaType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ratingType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/giphy/sdk/ui/pagination/a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->getTrendingVideos()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->getEmoji()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->getTrendingText()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->getTrendingStickers()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/giphy/sdk/ui/pagination/GPHContent$Companion;->getTrendingGifs()Lcom/giphy/sdk/ui/pagination/GPHContent;

    move-result-object p1

    .line 7
    :goto_0
    invoke-virtual {p1, p2}, Lcom/giphy/sdk/ui/pagination/GPHContent;->u(Lcom/giphy/sdk/core/models/enums/RatingType;)V

    return-object p1
.end method
