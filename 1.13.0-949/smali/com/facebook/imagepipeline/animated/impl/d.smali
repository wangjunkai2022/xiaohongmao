.class public Lcom/facebook/imagepipeline/animated/impl/d;
.super Ljava/lang/Object;
.source "AnimatedImageCompositor.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/animated/impl/d$c;,
        Lcom/facebook/imagepipeline/animated/impl/d$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/base/a;

.field private final b:Lcom/facebook/imagepipeline/animated/impl/d$b;

.field private final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/impl/d$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animatedDrawableBackend",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/d;->b:Lcom/facebook/imagepipeline/animated/impl/d$b;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/d;->c:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "frameInfo"
        }
    .end annotation

    iget v0, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->b:I

    int-to-float v2, v0

    iget v1, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->c:I

    int-to-float v3, v1

    iget v4, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->d:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget p2, p2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->e:I

    add-int/2addr v1, p2

    int-to-float v5, v1

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/d;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(I)Lcom/facebook/imagepipeline/animated/impl/d$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->e(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->g:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 3
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object p1, Lcom/facebook/imagepipeline/animated/impl/d$c;->a:Lcom/facebook/imagepipeline/animated/impl/d$c;

    return-object p1

    .line 5
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/d;->c(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/facebook/imagepipeline/animated/impl/d$c;->b:Lcom/facebook/imagepipeline/animated/impl/d$c;

    return-object p1

    .line 8
    :cond_1
    sget-object p1, Lcom/facebook/imagepipeline/animated/impl/d$c;->a:Lcom/facebook/imagepipeline/animated/impl/d$c;

    return-object p1

    .line 9
    :cond_2
    sget-object p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v0, p1, :cond_3

    .line 10
    sget-object p1, Lcom/facebook/imagepipeline/animated/impl/d$c;->c:Lcom/facebook/imagepipeline/animated/impl/d$c;

    return-object p1

    .line 11
    :cond_3
    sget-object p1, Lcom/facebook/imagepipeline/animated/impl/d$c;->d:Lcom/facebook/imagepipeline/animated/impl/d$c;

    return-object p1
.end method

.method private c(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameInfo"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->b:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->c:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->d:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    .line 2
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/a;->o()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->e:I

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->n()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/animated/base/a;->e(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    sub-int/2addr p1, v0

    invoke-interface {v2, p1}, Lcom/facebook/imagepipeline/animated/base/a;->e(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object p1

    .line 3
    iget-object v2, v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->f:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v3, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/animated/impl/d;->c(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object v1, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->g:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v1, v2, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/d;->c(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->q()Lcom/facebook/imagepipeline/animated/base/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->c()Lt1/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0, p1}, Lt1/a;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private f(ILandroid/graphics/Canvas;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previousFrameNumber",
            "canvas"
        }
    .end annotation

    :goto_0
    if-ltz p1, :cond_6

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/d;->b(I)Lcom/facebook/imagepipeline/animated/impl/d$c;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/facebook/imagepipeline/animated/impl/d$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return p1

    :cond_1
    add-int/2addr p1, v1

    return p1

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->e(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/d;->b:Lcom/facebook/imagepipeline/animated/impl/d$b;

    invoke-interface {v2, p1}, Lcom/facebook/imagepipeline/animated/impl/d$b;->b(I)Lcom/facebook/common/references/a;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5
    :try_start_0
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6
    iget-object v3, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->g:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v3, v4, :cond_3

    .line 7
    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/animated/impl/d;->a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/2addr p1, v1

    .line 8
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Lcom/facebook/common/references/a;->close()V

    .line 9
    throw p1

    .line 10
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return p1

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public g(ILandroid/graphics/Bitmap;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameNumber",
            "bitmap"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/d;->d(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 4
    invoke-direct {p0, v1, v0}, Lcom/facebook/imagepipeline/animated/impl/d;->f(ILandroid/graphics/Canvas;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-ge v1, p1, :cond_4

    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/animated/base/a;->e(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v2

    .line 6
    iget-object v3, v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->g:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    .line 7
    sget-object v4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->f:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v5, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v4, v5, :cond_2

    .line 9
    invoke-direct {p0, v0, v2}, Lcom/facebook/imagepipeline/animated/impl/d;->a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    .line 10
    :cond_2
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v4, v1, v0}, Lcom/facebook/imagepipeline/animated/base/a;->f(ILandroid/graphics/Canvas;)V

    .line 11
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/d;->b:Lcom/facebook/imagepipeline/animated/impl/d$b;

    invoke-interface {v4, v1, p2}, Lcom/facebook/imagepipeline/animated/impl/d$b;->a(ILandroid/graphics/Bitmap;)V

    .line 12
    sget-object v4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v3, v4, :cond_3

    .line 13
    invoke-direct {p0, v0, v2}, Lcom/facebook/imagepipeline/animated/impl/d;->a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/animated/base/a;->e(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v1

    .line 15
    iget-object v2, v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->f:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    sget-object v3, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    if-ne v2, v3, :cond_5

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/animated/impl/d;->a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/d;->a:Lcom/facebook/imagepipeline/animated/base/a;

    invoke-interface {v1, p1, v0}, Lcom/facebook/imagepipeline/animated/base/a;->f(ILandroid/graphics/Canvas;)V

    .line 18
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/animated/impl/d;->e(Landroid/graphics/Bitmap;)V

    return-void
.end method
