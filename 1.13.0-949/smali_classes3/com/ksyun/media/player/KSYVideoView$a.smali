.class Lcom/ksyun/media/player/KSYVideoView$a;
.super Landroid/view/SurfaceView;
.source "KSYVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYVideoView;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/KSYVideoView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->a:Lcom/ksyun/media/player/KSYVideoView;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->h:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/player/KSYVideoView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ksyun/media/player/KSYVideoView$a;-><init>(Lcom/ksyun/media/player/KSYVideoView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/player/KSYVideoView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->a:Lcom/ksyun/media/player/KSYVideoView;

    .line 7
    invoke-direct {p0, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->h:I

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->i:I

    return-void
.end method

.method private c(II)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->b:I

    if-eqz v0, :cond_8

    iget v1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->c:I

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 4
    iget v2, p0, Lcom/ksyun/media/player/KSYVideoView$a;->d:I

    if-lez v2, :cond_1

    iget v3, p0, Lcom/ksyun/media/player/KSYVideoView$a;->e:I

    if-lez v3, :cond_1

    mul-int v0, v0, v2

    .line 5
    div-int/2addr v0, v3

    :cond_1
    int-to-float v3, v0

    int-to-float p1, p1

    div-float/2addr v3, p1

    int-to-float v4, v1

    int-to-float p2, p2

    div-float/2addr v4, p2

    .line 6
    iget v5, p0, Lcom/ksyun/media/player/KSYVideoView$a;->h:I

    div-int/lit8 v6, v5, 0x5a

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 7
    iget v1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->b:I

    .line 8
    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->c:I

    if-lez v2, :cond_2

    .line 9
    iget v6, p0, Lcom/ksyun/media/player/KSYVideoView$a;->e:I

    if-lez v6, :cond_2

    mul-int v1, v1, v2

    .line 10
    div-int/2addr v1, v6

    .line 11
    :cond_2
    iget v2, p0, Lcom/ksyun/media/player/KSYVideoView$a;->i:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    if-eq v2, v7, :cond_3

    goto :goto_0

    :cond_3
    int-to-float v0, v0

    div-float v0, p1, v0

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_0

    :cond_4
    int-to-float v0, v0

    div-float v0, p1, v0

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_0

    .line 14
    :cond_5
    div-int/lit8 v5, v5, 0x5a

    rem-int/2addr v5, v7

    if-eqz v5, :cond_6

    div-float v3, p2, p1

    div-float v4, p1, p2

    goto :goto_0

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 15
    :goto_0
    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->h:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/2addr v0, v7

    if-eqz v0, :cond_7

    mul-float p1, p1, v6

    mul-float p1, p1, v3

    float-to-int p1, p1

    .line 16
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->g:I

    mul-float p2, p2, v6

    mul-float p2, p2, v4

    float-to-int p1, p2

    .line 17
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->f:I

    goto :goto_1

    :cond_7
    mul-float p1, p1, v6

    mul-float p1, p1, v3

    float-to-int p1, p1

    .line 18
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->f:I

    mul-float p2, p2, v6

    mul-float p2, p2, v4

    float-to-int p1, p2

    .line 19
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->g:I

    :goto_1
    return-void

    .line 20
    :cond_8
    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->f:I

    .line 21
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->f:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->i:I

    .line 7
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->b:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->c:I

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->b:I

    .line 3
    iput p2, p0, Lcom/ksyun/media/player/KSYVideoView$a;->c:I

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->g:I

    return v0
.end method

.method public b(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->d:I

    .line 2
    iput p2, p0, Lcom/ksyun/media/player/KSYVideoView$a;->e:I

    return-void
.end method

.method public b(I)Z
    .locals 0

    .line 4
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->h:I

    .line 5
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->b:I

    .line 23
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->c:I

    .line 24
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->d:I

    .line 25
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->e:I

    .line 26
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->f:I

    .line 27
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->g:I

    .line 28
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->h:I

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->i:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/player/KSYVideoView$a;->c(II)V

    .line 2
    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView$a;->f:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/ksyun/media/player/KSYVideoView$a;->g:I

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    :goto_0
    return-void
.end method
