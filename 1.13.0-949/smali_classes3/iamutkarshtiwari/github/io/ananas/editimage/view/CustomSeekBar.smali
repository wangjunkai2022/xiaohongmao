.class public Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;
.super Landroid/widget/SeekBar;
.source "CustomSeekBar.java"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;->a:Landroid/graphics/Rect;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;->b:Landroid/graphics/Paint;

    const/4 p1, 0x6

    .line 5
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;->c:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;->d:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 7
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;->e:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;->c:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v4

    sub-int/2addr v3, v4

    .line 4
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;->c:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;->b:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;->a:Landroid/graphics/Rect;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomSeekBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 8
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
