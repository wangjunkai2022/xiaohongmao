.class public Lcom/facebook/drawee/drawable/r;
.super Lcom/facebook/drawee/drawable/h;
.source "ScaleTypeDrawable.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field e:Lcom/facebook/drawee/drawable/s$c;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field g:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field h:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field i:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field j:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "scaleType"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->g:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/facebook/drawee/drawable/r;->h:I

    .line 4
    iput p1, p0, Lcom/facebook/drawee/drawable/r;->i:I

    .line 5
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    .line 6
    iput-object p2, p0, Lcom/facebook/drawee/drawable/r;->e:Lcom/facebook/drawee/drawable/s$c;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;Landroid/graphics/PointF;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawable",
            "scaleType",
            "focusPoint"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->g:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/facebook/drawee/drawable/r;->h:I

    .line 10
    iput p1, p0, Lcom/facebook/drawee/drawable/r;->i:I

    .line 11
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    .line 12
    iput-object p2, p0, Lcom/facebook/drawee/drawable/r;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 13
    iput-object p3, p0, Lcom/facebook/drawee/drawable/r;->g:Landroid/graphics/PointF;

    return-void
.end method

.method private A()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->e:Lcom/facebook/drawee/drawable/s$c;

    instance-of v1, v0, Lcom/facebook/drawee/drawable/s$o;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast v0, Lcom/facebook/drawee/drawable/s$o;

    invoke-interface {v0}, Lcom/facebook/drawee/drawable/s$o;->getState()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/drawable/r;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 4
    :goto_1
    iput-object v0, p0, Lcom/facebook/drawee/drawable/r;->f:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    iget v4, p0, Lcom/facebook/drawee/drawable/r;->h:I

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/facebook/drawee/drawable/r;->i:I

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eq v4, v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    if-nez v2, :cond_6

    if-eqz v1, :cond_7

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/r;->z()V

    :cond_7
    return-void
.end method


# virtual methods
.method public B()Landroid/graphics/PointF;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->g:Landroid/graphics/PointF;

    return-object v0
.end method

.method public C()Lcom/facebook/drawee/drawable/s$c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->e:Lcom/facebook/drawee/drawable/s$c;

    return-object v0
.end method

.method public D(Landroid/graphics/PointF;)V
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusPoint"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->g:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->g:Landroid/graphics/PointF;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->g:Landroid/graphics/PointF;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/r;->g:Landroid/graphics/PointF;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->g:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/r;->z()V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public E(Lcom/facebook/drawee/drawable/s$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->e:Lcom/facebook/drawee/drawable/s$c;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->e:Lcom/facebook/drawee/drawable/s$c;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/facebook/drawee/drawable/r;->f:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/r;->z()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/r;->A()V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->j:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 5
    iget-object v1, p0, Lcom/facebook/drawee/drawable/r;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 6
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public f(Landroid/graphics/Matrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/drawable/h;->v(Landroid/graphics/Matrix;)V

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/r;->A()V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->j:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/r;->z()V

    return-void
.end method

.method public x(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newDelegate"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/h;->x(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/r;->z()V

    return-object p1
.end method

.method z()V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iput v1, p0, Lcom/facebook/drawee/drawable/r;->i:I

    iput v1, p0, Lcom/facebook/drawee/drawable/r;->h:I

    .line 3
    iput-object v2, p0, Lcom/facebook/drawee/drawable/r;->j:Landroid/graphics/Matrix;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 6
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/facebook/drawee/drawable/r;->h:I

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, p0, Lcom/facebook/drawee/drawable/r;->i:I

    if-lez v6, :cond_6

    if-gtz v7, :cond_1

    goto :goto_2

    :cond_1
    if-ne v6, v3, :cond_2

    if-ne v7, v4, :cond_2

    .line 9
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    iput-object v2, p0, Lcom/facebook/drawee/drawable/r;->j:Landroid/graphics/Matrix;

    return-void

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/facebook/drawee/drawable/r;->e:Lcom/facebook/drawee/drawable/s$c;

    sget-object v4, Lcom/facebook/drawee/drawable/s$c;->a:Lcom/facebook/drawee/drawable/s$c;

    if-ne v3, v4, :cond_3

    .line 12
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 13
    iput-object v2, p0, Lcom/facebook/drawee/drawable/r;->j:Landroid/graphics/Matrix;

    return-void

    .line 14
    :cond_3
    invoke-virtual {v0, v1, v1, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    iget-object v3, p0, Lcom/facebook/drawee/drawable/r;->e:Lcom/facebook/drawee/drawable/s$c;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->g:Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_4

    iget v2, v0, Landroid/graphics/PointF;->x:F

    move v8, v2

    goto :goto_0

    :cond_4
    const/high16 v8, 0x3f000000    # 0.5f

    :goto_0
    if-eqz v0, :cond_5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v9, v0

    goto :goto_1

    :cond_5
    const/high16 v9, 0x3f000000    # 0.5f

    :goto_1
    invoke-interface/range {v3 .. v9}, Lcom/facebook/drawee/drawable/s$c;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 16
    iget-object v0, p0, Lcom/facebook/drawee/drawable/r;->k:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/facebook/drawee/drawable/r;->j:Landroid/graphics/Matrix;

    return-void

    .line 17
    :cond_6
    :goto_2
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 18
    iput-object v2, p0, Lcom/facebook/drawee/drawable/r;->j:Landroid/graphics/Matrix;

    return-void
.end method
