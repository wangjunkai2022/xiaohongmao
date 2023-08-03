.class public Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;
.super Landroid/view/View;
.source "CustomPaintView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Canvas;

.field private e:F

.field private f:F

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->d:Landroid/graphics/Canvas;

    .line 3
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->d:Landroid/graphics/Canvas;

    .line 6
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->d:Landroid/graphics/Canvas;

    .line 9
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->d:Landroid/graphics/Canvas;

    .line 12
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b:Landroid/graphics/Bitmap;

    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->d:Landroid/graphics/Canvas;

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->a:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->a:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 11
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 13
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 14
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c:Landroid/graphics/Paint;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    :cond_0
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->a()V

    return-void
.end method

.method public getPaintBit()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->b:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->a()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v9, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v9, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto :goto_2

    .line 5
    :cond_0
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->d:Landroid/graphics/Canvas;

    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->e:F

    iget v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->f:F

    iget-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->g:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c:Landroid/graphics/Paint;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->a:Landroid/graphics/Paint;

    :goto_0
    move-object v6, p1

    move v4, v7

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6
    iput v7, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->e:F

    .line 7
    iput v8, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->f:F

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 9
    :cond_3
    iput v7, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->e:F

    .line 10
    iput v8, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->f:F

    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->h:I

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setEraser(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->g:Z

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->a:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->h:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setEraserStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->a:Landroid/graphics/Paint;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
