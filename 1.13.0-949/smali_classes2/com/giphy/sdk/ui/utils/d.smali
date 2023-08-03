.class public final Lcom/giphy/sdk/ui/utils/d;
.super Ljava/lang/Object;
.source "GifUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\tJ\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/utils/d;",
        "",
        "Lcom/giphy/sdk/core/models/Media;",
        "gif",
        "Lcom/giphy/sdk/core/models/enums/RenditionType;",
        "imageType",
        "Lcom/giphy/sdk/core/models/Image;",
        "a",
        "image",
        "Lcom/giphy/sdk/ui/drawables/ImageFormat;",
        "imageFormat",
        "Lcom/giphy/sdk/ui/drawables/ImageUriInfo;",
        "d",
        "imageData",
        "b",
        "media",
        "Landroid/content/Intent;",
        "c",
        "<init>",
        "()V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/giphy/sdk/ui/utils/d;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/utils/d;

    invoke-direct {v0}, Lcom/giphy/sdk/ui/utils/d;-><init>()V

    sput-object v0, Lcom/giphy/sdk/ui/utils/d;->a:Lcom/giphy/sdk/ui/utils/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;)Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "imageType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/giphy/sdk/ui/utils/c;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Images;->getFixedHeight()Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_1
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Images;->getLooping()Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    :cond_1
    return-object v0

    :pswitch_2
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Images;->getFixedWidthStill()Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    :cond_2
    return-object v0

    :pswitch_3
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Images;->getFixedWidthDownsampled()Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    :cond_3
    return-object v0

    :pswitch_4
    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Images;->getFixedWidth()Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    :cond_4
    return-object v0

    :pswitch_5
    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Images;->getDownsizedLarge()Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    :cond_5
    return-object v0

    :pswitch_6
    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Images;->getDownsizedMedium()Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    :cond_6
    return-object v0

    :pswitch_7
    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Images;->getDownsized()Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    :cond_7
    return-object v0

    :pswitch_8
    if-eqz p1, :cond_8

    .line 10
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    :cond_8
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/ui/drawables/ImageFormat;)Lcom/giphy/sdk/ui/drawables/ImageUriInfo;
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/ui/drawables/ImageFormat;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "imageData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/utils/d;->d(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/ui/drawables/ImageFormat;)Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Image;->getWebPUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    sget-object p2, Lcom/giphy/sdk/ui/drawables/ImageFormat;->GIF:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/utils/d;->d(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/ui/drawables/ImageFormat;)Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p2, Lcom/giphy/sdk/ui/drawables/ImageFormat;->WEBP:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/utils/d;->d(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/ui/drawables/ImageFormat;)Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final c(Lcom/giphy/sdk/core/models/Media;)Landroid/content/Intent;
    .locals 2
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public final d(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/ui/drawables/ImageFormat;)Lcom/giphy/sdk/ui/drawables/ImageUriInfo;
    .locals 3
    .param p1    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/ui/drawables/ImageFormat;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "imageFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/giphy/sdk/ui/utils/c;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Image;->getGifUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Image;->getGifUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(image.gifUrl)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Image;->getGifSize()I

    move-result p1

    invoke-direct {v2, v0, p1, p2}, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;-><init>(Landroid/net/Uri;ILcom/giphy/sdk/ui/drawables/ImageFormat;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Image;->getMp4Url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Image;->getMp4Url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(image.mp4Url)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Image;->getMp4Size()I

    move-result p1

    invoke-direct {v2, v0, p1, p2}, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;-><init>(Landroid/net/Uri;ILcom/giphy/sdk/ui/drawables/ImageFormat;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Image;->getWebPUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Image;->getWebPUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(image.webPUrl)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Image;->getWebPSize()I

    move-result p1

    invoke-direct {v2, v0, p1, p2}, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;-><init>(Landroid/net/Uri;ILcom/giphy/sdk/ui/drawables/ImageFormat;)V

    :cond_3
    :goto_0
    return-object v2
.end method
