.class Lcom/xw/repo/BubbleSeekBar$i;
.super Landroid/view/View;
.source "BubbleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xw/repo/BubbleSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/Rect;

.field private e:Ljava/lang/String;

.field final synthetic f:Lcom/xw/repo/BubbleSeekBar;


# direct methods
.method constructor <init>(Lcom/xw/repo/BubbleSeekBar;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/xw/repo/BubbleSeekBar$i;-><init>(Lcom/xw/repo/BubbleSeekBar;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Lcom/xw/repo/BubbleSeekBar;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xw/repo/BubbleSeekBar$i;-><init>(Lcom/xw/repo/BubbleSeekBar;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Lcom/xw/repo/BubbleSeekBar;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    .line 4
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar$i;->e:Ljava/lang/String;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar$i;->a:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$i;->a:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 9
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar$i;->b:Landroid/graphics/Path;

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar$i;->c:Landroid/graphics/RectF;

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar$i;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar$i;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v3}, Lcom/xw/repo/BubbleSeekBar;->n(Lcom/xw/repo/BubbleSeekBar;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 5
    iget-object v3, p0, Lcom/xw/repo/BubbleSeekBar$i;->b:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-double v3, v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    iget-object v11, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v11}, Lcom/xw/repo/BubbleSeekBar;->n(Lcom/xw/repo/BubbleSeekBar;)I

    move-result v11

    int-to-double v11, v11

    mul-double v7, v7, v11

    sub-double/2addr v3, v7

    double-to-float v3, v3

    .line 7
    iget-object v4, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v4}, Lcom/xw/repo/BubbleSeekBar;->n(Lcom/xw/repo/BubbleSeekBar;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float v4, v4, v7

    .line 8
    iget-object v7, p0, Lcom/xw/repo/BubbleSeekBar$i;->b:Landroid/graphics/Path;

    const/4 v8, 0x2

    .line 9
    invoke-static {v8}, Lcom/xw/repo/b;->a(I)I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v3, v11

    invoke-static {v8}, Lcom/xw/repo/b;->a(I)I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v4, v12

    .line 10
    invoke-virtual {v7, v11, v12, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 11
    iget-object v3, p0, Lcom/xw/repo/BubbleSeekBar$i;->b:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/xw/repo/BubbleSeekBar$i;->c:Landroid/graphics/RectF;

    const/high16 v11, 0x43160000    # 150.0f

    const/high16 v12, 0x43700000    # 240.0f

    invoke-virtual {v3, v7, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-double v11, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v5, v9

    iget-object v3, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v3}, Lcom/xw/repo/BubbleSeekBar;->n(Lcom/xw/repo/BubbleSeekBar;)I

    move-result v3

    int-to-double v9, v3

    mul-double v5, v5, v9

    add-double/2addr v11, v5

    double-to-float v3, v11

    .line 13
    iget-object v5, p0, Lcom/xw/repo/BubbleSeekBar$i;->b:Landroid/graphics/Path;

    .line 14
    invoke-static {v8}, Lcom/xw/repo/b;->a(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    invoke-static {v8}, Lcom/xw/repo/b;->a(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    .line 15
    invoke-virtual {v5, v3, v4, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 16
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 17
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v2}, Lcom/xw/repo/BubbleSeekBar;->p(Lcom/xw/repo/BubbleSeekBar;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->b:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar$i;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 19
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v2}, Lcom/xw/repo/BubbleSeekBar;->q(Lcom/xw/repo/BubbleSeekBar;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 20
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v2}, Lcom/xw/repo/BubbleSeekBar;->r(Lcom/xw/repo/BubbleSeekBar;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->a:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar$i;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/xw/repo/BubbleSeekBar$i;->d:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 22
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v2}, Lcom/xw/repo/BubbleSeekBar;->n(Lcom/xw/repo/BubbleSeekBar;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v3, v0

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    sub-float/2addr v2, v3

    .line 24
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar$i;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Lcom/xw/repo/BubbleSeekBar;->n(Lcom/xw/repo/BubbleSeekBar;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    iget-object p2, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p2}, Lcom/xw/repo/BubbleSeekBar;->n(Lcom/xw/repo/BubbleSeekBar;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 3
    iget-object p1, p0, Lcom/xw/repo/BubbleSeekBar$i;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iget-object v1, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v1}, Lcom/xw/repo/BubbleSeekBar;->n(Lcom/xw/repo/BubbleSeekBar;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v0}, Lcom/xw/repo/BubbleSeekBar;->n(Lcom/xw/repo/BubbleSeekBar;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$i;->f:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v0}, Lcom/xw/repo/BubbleSeekBar;->n(Lcom/xw/repo/BubbleSeekBar;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
