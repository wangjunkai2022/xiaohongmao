.class public Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;
.super Landroid/view/View;
.source "PaintModeView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->c:F

    .line 3
    invoke-virtual {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 5
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->c:F

    .line 6
    invoke-virtual {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 8
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->c:F

    .line 9
    invoke-virtual {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 11
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->c:F

    .line 12
    invoke-virtual {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->a:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->a:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getStokenColor()I
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->b:I

    return v0
.end method

.method public getStokenWidth()F
    .locals 2

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->c:F

    .line 3
    :cond_0
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->c:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->a:Landroid/graphics/Paint;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->c:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->d:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->d:F

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setPaintStrokeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->b:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPaintStrokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/PaintModeView;->c:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
