.class public Lmaster/flame/danmaku/danmaku/model/android/a;
.super Lmaster/flame/danmaku/danmaku/model/b;
.source "AndroidDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/b<",
        "Landroid/graphics/Canvas;",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/graphics/Camera;

.field private g:Landroid/graphics/Matrix;

.field private final h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

.field private i:Lmaster/flame/danmaku/danmaku/model/android/b;

.field public j:Landroid/graphics/Canvas;

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:I

.field private p:F

.field private q:I

.field private r:Z

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/b;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->f:Landroid/graphics/Camera;

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->g:Landroid/graphics/Matrix;

    .line 4
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/a$a;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    .line 5
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/i;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/i;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->i:Lmaster/flame/danmaku/danmaku/model/android/b;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->n:F

    const/16 v1, 0xa0

    .line 7
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->o:I

    .line 8
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->p:F

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->q:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->r:Z

    const/16 v0, 0x800

    .line 11
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->s:I

    .line 12
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->t:I

    return-void
.end method

.method private E(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->i:Lmaster/flame/danmaku/danmaku/model/android/b;

    invoke-virtual {v0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/android/b;->e(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V

    .line 2
    iget p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/android/a;->N(Lmaster/flame/danmaku/danmaku/model/d;FF)V

    return-void
.end method

.method private static final H(Landroid/graphics/Canvas;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result p0

    return p0
.end method

.method private static final I(Landroid/graphics/Canvas;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result p0

    return p0
.end method

.method private declared-synchronized J(Lmaster/flame/danmaku/danmaku/model/d;Z)Landroid/text/TextPaint;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->l(Lmaster/flame/danmaku/danmaku/model/d;Z)Landroid/text/TextPaint;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private K(Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    sget v1, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private L(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private M(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FF)I
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->f:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 2
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->m:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->f:Landroid/graphics/Camera;

    invoke-virtual {v2, v1, v1, v0}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 4
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->f:Landroid/graphics/Camera;

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->i:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 5
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->f:Landroid/graphics/Camera;

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->h:F

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 6
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->f:Landroid/graphics/Camera;

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->g:Landroid/graphics/Matrix;

    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 8
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->f:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result p1

    .line 11
    iget-object p3, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->g:Landroid/graphics/Matrix;

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return p1
.end method

.method private N(Lmaster/flame/danmaku/danmaku/model/d;FF)V
    .locals 2

    .line 1
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->n:I

    mul-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    add-float/2addr p2, v1

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p3, v0

    .line 2
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->m:I

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    int-to-float v0, v0

    add-float/2addr p2, v0

    add-float/2addr p3, v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/a;->t()F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 4
    iput p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    return-void
.end method

.method private T(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->j:Landroid/graphics/Canvas;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->k:I

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->l:I

    .line 4
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->r:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lmaster/flame/danmaku/danmaku/model/android/a;->I(Landroid/graphics/Canvas;)I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->s:I

    .line 6
    invoke-static {p1}, Lmaster/flame/danmaku/danmaku/model/android/a;->H(Landroid/graphics/Canvas;)I

    move-result p1

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->t:I

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->p(Z)V

    return-void
.end method

.method public B(F)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->r(F)V

    return-void
.end method

.method public C(I)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->u(I)V

    return-void
.end method

.method public bridge synthetic D(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a;->S(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public declared-synchronized F(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FFZ)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->i:Lmaster/flame/danmaku/danmaku/model/android/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/b;->d(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FFZLmaster/flame/danmaku/danmaku/model/android/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public G()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->j:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public O(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a;->T(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public P(F)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->t(F)V

    return-void
.end method

.method public Q(FFI)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-virtual {v0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->q(FFI)V

    return-void
.end method

.method public R(F)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->s(F)V

    return-void
.end method

.method public S(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->v(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/a;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x442a8000    # 682.0f

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v0, v0, v1

    float-to-int v1, v0

    .line 2
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->q:I

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 3
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->q:I

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->q:I

    return v0
.end method

.method public c(I[F)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    iput-boolean v2, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->n:Z

    .line 2
    iput-boolean v2, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->p:Z

    .line 3
    iput-boolean v1, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->r:Z

    .line 4
    aget p1, p2, v2

    aget v1, p2, v1

    aget p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/a;->Q(FFI)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    iput-boolean v1, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->n:Z

    .line 6
    iput-boolean v2, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->p:Z

    .line 7
    iput-boolean v2, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->r:Z

    .line 8
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a;->R(F)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    iput-boolean v2, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->n:Z

    .line 10
    iput-boolean v2, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->p:Z

    .line 11
    iput-boolean v2, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->r:Z

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    iput-boolean v2, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->n:Z

    .line 13
    iput-boolean v1, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->p:Z

    .line 14
    iput-boolean v2, p1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->r:Z

    .line 15
    aget p1, p2, v2

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a;->P(F)V

    :goto_0
    return-void
.end method

.method public d(FIF)V
    .locals 0

    .line 1
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->n:F

    .line 2
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->o:I

    .line 3
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->p:F

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->o:I

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->p:F

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->s:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->l:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->k:I

    return v0
.end method

.method public h(II)V
    .locals 2

    .line 1
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->k:I

    .line 2
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->l:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide v0, 0x3fdeb7c166fdfe3aL    # 0.4799655442984406

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->m:F

    return-void
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->n:F

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->r:Z

    return v0
.end method

.method public j(Lmaster/flame/danmaku/danmaku/model/d;Z)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/a;->J(Lmaster/flame/danmaku/danmaku/model/d;Z)Landroid/text/TextPaint;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->f(Lmaster/flame/danmaku/danmaku/model/android/a$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;Z)V

    .line 4
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/a;->E(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V

    .line 5
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-static {p2}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->f(Lmaster/flame/danmaku/danmaku/model/android/a$a;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;Z)V

    :cond_1
    return-void
.end method

.method public k(I)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-static {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->b(Lmaster/flame/danmaku/danmaku/model/android/a$a;I)I

    return-void
.end method

.method public l(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 12

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result v7

    .line 2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->g()F

    move-result v8

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->j:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->n()I

    move-result v2

    const/4 v3, 0x7

    const/4 v9, 0x1

    if-ne v2, v3, :cond_4

    .line 5
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->c()I

    move-result v2

    sget v3, Lmaster/flame/danmaku/danmaku/model/c;->b:I

    if-ne v2, v3, :cond_0

    return v1

    .line 6
    :cond_0
    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->h:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->i:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->j:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v2, v8, v7}, Lmaster/flame/danmaku/danmaku/model/android/a;->M(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FF)I

    const/4 v2, 0x1

    .line 8
    :goto_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->c()I

    move-result v3

    .line 9
    sget v4, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    if-eq v3, v4, :cond_3

    .line 10
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->e(Lmaster/flame/danmaku/danmaku/model/android/a$a;)Landroid/graphics/Paint;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    move-object v10, v0

    move v11, v2

    goto :goto_2

    :cond_4
    move-object v10, v0

    const/4 v11, 0x0

    :goto_2
    if-eqz v10, :cond_5

    .line 12
    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    sget v2, Lmaster/flame/danmaku/danmaku/model/c;->b:I

    if-ne v0, v2, :cond_5

    return v1

    .line 13
    :cond_5
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->i:Lmaster/flame/danmaku/danmaku/model/android/b;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->j:Landroid/graphics/Canvas;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    iget-object v6, v1, Lmaster/flame/danmaku/danmaku/model/android/a$a;->c:Landroid/text/TextPaint;

    move-object v1, p1

    move v3, v8

    move v4, v7

    move-object v5, v10

    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/b;->c(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;Landroid/text/TextPaint;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v10, :cond_6

    .line 14
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->c:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 15
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->d:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_3

    .line 16
    :cond_6
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/a$a;->c:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/a;->K(Landroid/graphics/Paint;)V

    .line 17
    :goto_3
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->j:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v8

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/a;->F(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FFZ)V

    const/4 v9, 0x2

    :cond_7
    if-eqz v11, :cond_8

    .line 18
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->j:Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a;->L(Landroid/graphics/Canvas;)V

    :cond_8
    return v9

    :cond_9
    return v1
.end method

.method public m(I)V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-static {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->d(Lmaster/flame/danmaku/danmaku/model/android/a$a;I)I

    return-void
.end method

.method public n(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->i:Lmaster/flame/danmaku/danmaku/model/android/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/b;->g(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_0
    return-void
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->a(Lmaster/flame/danmaku/danmaku/model/android/a$a;)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->t:I

    return v0
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->r:Z

    return-void
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->c(Lmaster/flame/danmaku/danmaku/model/android/a$a;)I

    move-result v0

    return v0
.end method

.method public s(Lmaster/flame/danmaku/danmaku/model/d;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->i:Lmaster/flame/danmaku/danmaku/model/android/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/b;->f(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    :cond_0
    return-void
.end method

.method public t()F
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->m()F

    move-result v0

    return v0
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->i:Lmaster/flame/danmaku/danmaku/model/android/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/b;->b()V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->h:Lmaster/flame/danmaku/danmaku/model/android/a$a;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->i()V

    return-void
.end method

.method public bridge synthetic v(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/Object;FFZ)V
    .locals 0

    check-cast p2, Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p5}, Lmaster/flame/danmaku/danmaku/model/android/a;->F(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FFZ)V

    return-void
.end method

.method public w()Lmaster/flame/danmaku/danmaku/model/android/b;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->i:Lmaster/flame/danmaku/danmaku/model/android/b;

    return-object v0
.end method

.method public bridge synthetic x()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/a;->G()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public y(Lmaster/flame/danmaku/danmaku/model/android/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->i:Lmaster/flame/danmaku/danmaku/model/android/b;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/a;->i:Lmaster/flame/danmaku/danmaku/model/android/b;

    :cond_0
    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/a;->O(Landroid/graphics/Canvas;)V

    return-void
.end method
