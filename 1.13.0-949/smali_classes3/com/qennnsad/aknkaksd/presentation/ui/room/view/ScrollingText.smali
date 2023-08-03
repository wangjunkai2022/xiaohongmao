.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;
.super Landroid/view/View;
.source "ScrollingText.java"


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:F

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private final o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->l:Z

    .line 4
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->m:I

    .line 5
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->n:I

    .line 6
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$b;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->o:Landroid/os/Handler;

    .line 7
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->l:Z

    .line 11
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->m:I

    .line 12
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->n:I

    .line 13
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$b;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->o:Landroid/os/Handler;

    .line 14
    sget-object v2, Lcom/qennnsad/aknkaksd/g$u;->BB:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    const/high16 v2, -0x1000000

    .line 15
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->g:I

    const/4 p2, 0x4

    const/high16 v2, 0x41800000    # 16.0f

    .line 16
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->h:F

    const/4 p2, 0x5

    .line 17
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->i:I

    const/4 p2, 0x2

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->j:Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->d()V

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->o:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->i:I

    return p0
.end method

.method private c(II)I
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method private d()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->b:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c:I

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startdrawx-out:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "---textwidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Scrollingtext0"

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->d:I

    const/16 v0, 0xa

    .line 10
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->k:I

    .line 11
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->e:Z

    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->e:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 2
    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->g:I

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->d()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->l:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->n:I

    .line 4
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->m:I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->j:Ljava/lang/String;

    const-string v1, "horizontal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->e:Z

    if-eqz v0, :cond_3

    .line 7
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c:I

    neg-int v2, v1

    if-ge v0, v2, :cond_1

    .line 8
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->k:I

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    .line 9
    :cond_1
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->k:I

    add-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->m:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->m:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 14
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    add-int/lit8 p1, p1, -0x4

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    goto/16 :goto_1

    .line 15
    :cond_3
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c:I

    neg-int v1, v1

    if-ge v0, v1, :cond_4

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    .line 17
    :cond_4
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    if-gez v0, :cond_5

    .line 18
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->m:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->m:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 21
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    add-int/lit8 p1, p1, -0x4

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->a:I

    goto :goto_1

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->j:Ljava/lang/String;

    const-string v1, "vertical"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 24
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->m:I

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->n:I

    add-int/lit8 v3, v2, -0xa

    if-lt v1, v3, :cond_7

    add-int/lit8 v3, v2, 0xa

    if-gt v1, v3, :cond_7

    .line 25
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    int-to-float v0, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 26
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$a;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 28
    :cond_7
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 29
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->i:I

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 30
    :goto_0
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->m:I

    add-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->m:I

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->d:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-le p1, v0, :cond_8

    .line 32
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->m:I

    .line 33
    :cond_8
    iput-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->l:Z

    :cond_9
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c:I

    invoke-direct {p0, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c(II)I

    move-result p1

    .line 3
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->d:I

    invoke-direct {p0, v0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c(II)I

    move-result p2

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 5
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->e:Z

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->j:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "horizontal"

    .line 7
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->j:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->d()V

    return-void
.end method

.method public setTextList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "{0}{1}\u3000\u3000\u3000\u3000"

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->f:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->d()V

    return-void
.end method
