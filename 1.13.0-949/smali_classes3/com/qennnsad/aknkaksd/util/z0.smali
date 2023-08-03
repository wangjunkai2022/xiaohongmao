.class public Lcom/qennnsad/aknkaksd/util/z0;
.super Ljava/lang/Object;
.source "PicUtil.java"


# static fields
.field public static a:Landroid/util/Range; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "PicUtil"

.field private static c:I

.field private static d:I

.field private static final e:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/z0;->a:Landroid/util/Range;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/qennnsad/aknkaksd/util/z0;->c:I

    .line 3
    sput v0, Lcom/qennnsad/aknkaksd/util/z0;->d:I

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/util/z0$a;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/util/z0$a;-><init>(I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/z0;->e:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 2

    sget v0, Lcom/qennnsad/aknkaksd/util/z0;->d:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/qennnsad/aknkaksd/util/z0;->d:I

    return v0
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    invoke-static {p0, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 3
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, p1, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 7
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, -0x1

    .line 9
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41100000    # 9.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 10
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v4, v0

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v3

    int-to-float v0, v0

    .line 18
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(I)I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0x7f08011f

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const p0, 0x7f080120

    return p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const p0, 0x7f080121

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/util/z0;->e:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 2
    sget p0, Lcom/qennnsad/aknkaksd/util/z0;->c:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/qennnsad/aknkaksd/util/z0;->c:I

    return-object v1

    :cond_0
    const/16 v1, 0x1e

    if-gt p1, v1, :cond_1

    const v1, 0x7f08056f

    goto :goto_0

    :cond_1
    const/16 v1, 0x3c

    if-gt p1, v1, :cond_2

    const v1, 0x7f080570

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    if-gt p1, v1, :cond_3

    const v1, 0x7f080571

    goto :goto_0

    :cond_3
    const v1, 0x7f080572

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/qennnsad/aknkaksd/util/z0;->c(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static f(Landroid/content/Context;I)I
    .locals 3
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rank_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "drawable"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static g(I)I
    .locals 2
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/z0;->a:Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    const p0, 0x7f080193

    return p0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    const p0, 0x7f080191

    return p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const p0, 0x7f080192

    return p0

    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    const p0, 0x7f08018e

    return p0

    :cond_4
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const p0, 0x7f080190

    return p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const p0, 0x7f08018f

    return p0

    :cond_6
    return v1
.end method

.method public static h(I)I
    .locals 2
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/z0;->a:Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const p0, 0x7f08053b

    return p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const p0, 0x7f08053a

    return p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const p0, 0x7f080539

    return p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const p0, 0x7f080538

    return p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const p0, 0x7f080537

    return p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const p0, 0x7f080536

    return p0

    :cond_6
    return v1
.end method

.method public static i(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2
    instance-of p1, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    return-object v0

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/VectorDrawable;->setBounds(IIII)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public static j()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LRU Survived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/qennnsad/aknkaksd/util/z0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PicUtil"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LRU Evicted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/qennnsad/aknkaksd/util/z0;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v0, Lcom/qennnsad/aknkaksd/util/z0;->c:I

    int-to-float v2, v0

    sget v3, Lcom/qennnsad/aknkaksd/util/z0;->d:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LRU Ratio: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Landroid/widget/ImageView;Ljava/lang/String;II)V
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/c;->F(Landroid/view/View;)Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/k;->N(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    new-instance v0, Ljp/wasabeef/glide/transformations/b;

    invoke-direct {v0, p3, p2}, Ljp/wasabeef/glide/transformations/b;-><init>(II)V

    invoke-static {v0}, Lcom/bumptech/glide/request/h;->S0(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/request/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/j;->T0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    const p2, 0x7f080168

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/a;->x(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/a;->w0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->k1(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/r;

    return-void
.end method

.method public static l(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
