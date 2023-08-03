.class public Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# static fields
.field private static final v:F = 0.67f


# instance fields
.field private final a:Li7/g;

.field private b:Z

.field private c:Landroid/view/MotionEvent;

.field private d:Landroid/view/MotionEvent;

.field private e:Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private r:Z

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method constructor <init>(Li7/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    .line 3
    new-instance p1, Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

    invoke-direct {p1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;II)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    if-eq p2, p3, :cond_0

    if-eq p2, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private b()F
    .locals 2

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->l:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->j:F

    .line 3
    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->k:F

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->l:F

    .line 5
    :cond_0
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->l:F

    return v0
.end method

.method private i()F
    .locals 2

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->m:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->h:F

    .line 3
    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->i:F

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->m:F

    .line 5
    :cond_0
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->m:F

    return v0
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3
    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    .line 4
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->d:Landroid/view/MotionEvent;

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->b:Z

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    .line 9
    iput v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    .line 10
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->r:Z

    return-void
.end method

.method private q(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->d:Landroid/view/MotionEvent;

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->l:F

    .line 5
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->m:F

    .line 6
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->n:F

    .line 7
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 8
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    .line 9
    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 10
    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 11
    iget v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 12
    iget v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ltz v1, :cond_2

    if-ltz v2, :cond_2

    if-ltz v3, :cond_2

    if-gez v4, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 17
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 18
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 19
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 20
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float/2addr v6, p1

    sub-float/2addr v7, v5

    sub-float/2addr v10, v8

    sub-float/2addr v11, v9

    .line 21
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

    invoke-virtual {p1, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 22
    iput v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->h:F

    .line 23
    iput v7, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->i:F

    .line 24
    iput v10, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->j:F

    .line 25
    iput v11, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->k:F

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v10, v10, p1

    add-float/2addr v8, v10

    .line 26
    iput v8, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->f:F

    mul-float v11, v11, p1

    add-float/2addr v9, v11

    .line 27
    iput v9, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->g:F

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->q:J

    .line 29
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->o:F

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->p:F

    return-void

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->r:Z

    .line 32
    iget-boolean p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->b:Z

    if-eqz p2, :cond_3

    .line 33
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    invoke-interface {p2, p1, p0}, Li7/g;->c(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)V

    :cond_3
    return-void
.end method


# virtual methods
.method c()Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->e:Liamutkarshtiwari/github/io/ananas/editimage/gesture/Vector2D;

    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->j:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->k:F

    return v0
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method g()F
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->f:F

    return v0
.end method

.method h()F
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->g:F

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->h:F

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->i:F

    return v0
.end method

.method public l()F
    .locals 2

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->n:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->b()F

    move-result v0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->i()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->n:F

    .line 3
    :cond_0
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->n:F

    return v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->q:J

    return-wide v0
.end method

.method n()Z
    .locals 1

    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->b:Z

    return v0
.end method

.method o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->p()V

    .line 3
    :cond_0
    iget-boolean v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->r:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    .line 4
    :cond_1
    iget-boolean v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->b:Z

    const/4 v4, -0x1

    const/4 v5, 0x5

    if-nez v1, :cond_8

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v5, :cond_2

    goto/16 :goto_3

    .line 5
    :cond_2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    :cond_3
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->q:J

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 9
    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    if-ltz v1, :cond_4

    if-ne v1, v0, :cond_5

    .line 11
    :cond_4
    invoke-direct {p0, p2, v5, v4}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    .line 13
    :cond_5
    iput-boolean v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->u:Z

    .line 14
    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->q(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 15
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    invoke-interface {p2, p1, p0}, Li7/g;->b(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)Z

    move-result p1

    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->b:Z

    goto/16 :goto_3

    .line 16
    :cond_6
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->p()V

    goto/16 :goto_3

    .line 17
    :cond_7
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    .line 18
    iput-boolean v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->u:Z

    goto/16 :goto_3

    :cond_8
    if-eq v0, v3, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 v6, 0x3

    if-eq v0, v6, :cond_13

    if-eq v0, v5, :cond_f

    const/4 v4, 0x6

    if-eq v0, v4, :cond_9

    goto/16 :goto_3

    .line 19
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 21
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-le v0, v1, :cond_d

    .line 22
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    if-ne v5, v0, :cond_a

    .line 23
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    invoke-direct {p0, p2, v0, v4}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_b

    .line 24
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    invoke-interface {v1, p1, p0}, Li7/g;->c(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)V

    .line 25
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    .line 26
    iput-boolean v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->u:Z

    .line 27
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    .line 28
    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->q(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 29
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    invoke-interface {v0, p1, p0}, Li7/g;->b(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)Z

    move-result v0

    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->b:Z

    goto :goto_0

    .line 30
    :cond_a
    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    if-ne v5, v1, :cond_c

    .line 31
    invoke-direct {p0, p2, v0, v4}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_b

    .line 32
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    invoke-interface {v1, p1, p0}, Li7/g;->c(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)V

    .line 33
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    .line 34
    iput-boolean v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->u:Z

    .line 35
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    .line 36
    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->q(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 37
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    invoke-interface {v0, p1, p0}, Li7/g;->b(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)Z

    move-result v0

    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->b:Z

    goto :goto_0

    :cond_b
    const/4 v2, 0x1

    .line 38
    :cond_c
    :goto_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 39
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    .line 40
    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->q(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_d
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_16

    .line 41
    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->q(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 42
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    if-ne v5, v0, :cond_e

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    .line 43
    :cond_e
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 44
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->f:F

    .line 45
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->g:F

    .line 46
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    invoke-interface {p2, p1, p0}, Li7/g;->c(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)V

    .line 47
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->p()V

    .line 48
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    .line 49
    iput-boolean v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->u:Z

    goto/16 :goto_3

    .line 50
    :cond_f
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    invoke-interface {v0, p1, p0}, Li7/g;->c(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)V

    .line 51
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    .line 52
    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    .line 53
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->p()V

    .line 54
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    .line 55
    iget-boolean v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->u:Z

    if-eqz v5, :cond_10

    goto :goto_2

    :cond_10
    move v0, v1

    :goto_2
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    .line 57
    iput-boolean v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->u:Z

    .line 58
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 59
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    if-ne v0, v1, :cond_12

    .line 60
    :cond_11
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->t:I

    invoke-direct {p0, p2, v0, v4}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->s:I

    .line 62
    :cond_12
    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->q(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 63
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    invoke-interface {p2, p1, p0}, Li7/g;->b(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)Z

    move-result p1

    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->b:Z

    goto :goto_3

    .line 64
    :cond_13
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    invoke-interface {p2, p1, p0}, Li7/g;->c(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)V

    .line 65
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->p()V

    goto :goto_3

    .line 66
    :cond_14
    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->q(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 67
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->o:F

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->p:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    .line 68
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->a:Li7/g;

    invoke-interface {v0, p1, p0}, Li7/g;->a(Landroid/view/View;Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 69
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 70
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->c:Landroid/view/MotionEvent;

    goto :goto_3

    .line 71
    :cond_15
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/b;->p()V

    :cond_16
    :goto_3
    const/4 v2, 0x1

    :goto_4
    return v2
.end method
