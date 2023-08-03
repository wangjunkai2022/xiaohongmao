.class public abstract Lcom/facebook/drawee/drawable/p;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/m;
.implements Lcom/facebook/drawee/drawable/t;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/facebook/drawee/drawable/u;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final a:Landroid/graphics/drawable/Drawable;

.field protected b:Z

.field protected c:Z

.field protected d:F

.field protected final e:Landroid/graphics/Path;

.field protected f:Z

.field protected g:I

.field protected final h:Landroid/graphics/Path;

.field private final i:[F

.field final j:[F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field k:[F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final l:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final m:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final n:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final o:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field p:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final q:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final r:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final s:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final t:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final u:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field v:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field w:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final x:Landroid/graphics/Matrix;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private y:F

.field private z:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->c:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/facebook/drawee/drawable/p;->d:F

    .line 5
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/facebook/drawee/drawable/p;->e:Landroid/graphics/Path;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/p;->f:Z

    .line 7
    iput v0, p0, Lcom/facebook/drawee/drawable/p;->g:I

    .line 8
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->h:Landroid/graphics/Path;

    const/16 v3, 0x8

    new-array v4, v3, [F

    .line 9
    iput-object v4, p0, Lcom/facebook/drawee/drawable/p;->i:[F

    new-array v3, v3, [F

    .line 10
    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->j:[F

    .line 11
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    .line 12
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->m:Landroid/graphics/RectF;

    .line 13
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->n:Landroid/graphics/RectF;

    .line 14
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->o:Landroid/graphics/RectF;

    .line 15
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->q:Landroid/graphics/Matrix;

    .line 16
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->r:Landroid/graphics/Matrix;

    .line 17
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->s:Landroid/graphics/Matrix;

    .line 18
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->t:Landroid/graphics/Matrix;

    .line 19
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->u:Landroid/graphics/Matrix;

    .line 20
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/facebook/drawee/drawable/p;->x:Landroid/graphics/Matrix;

    .line 21
    iput v1, p0, Lcom/facebook/drawee/drawable/p;->y:F

    .line 22
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->z:Z

    .line 23
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->A:Z

    .line 24
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/p;->B:Z

    .line 25
    iput-object p1, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "width"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/p;->g:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/p;->d:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/facebook/drawee/drawable/p;->g:I

    .line 3
    iput p2, p0, Lcom/facebook/drawee/drawable/p;->d:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/p;->B:Z

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method b()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->c:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/facebook/drawee/drawable/p;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->z:Z

    return v0
.end method

.method public clearColorFilter()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public d(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCircle"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/p;->b:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/p;->B:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RoundedDrawable#draw"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-void
.end method

.method protected e()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->B:Z

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/p;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 4
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v2

    .line 6
    iget-object v3, p0, Lcom/facebook/drawee/drawable/p;->h:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    .line 7
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 8
    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/facebook/drawee/drawable/p;->j:[F

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 10
    iget-object v4, p0, Lcom/facebook/drawee/drawable/p;->i:[F

    aget v4, v4, v0

    iget v5, p0, Lcom/facebook/drawee/drawable/p;->y:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/facebook/drawee/drawable/p;->d:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->h:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    iget v3, p0, Lcom/facebook/drawee/drawable/p;->d:F

    neg-float v4, v3

    div-float/2addr v4, v2

    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 13
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 14
    iget v0, p0, Lcom/facebook/drawee/drawable/p;->y:F

    iget-boolean v3, p0, Lcom/facebook/drawee/drawable/p;->z:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/facebook/drawee/drawable/p;->d:F

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-float/2addr v0, v3

    .line 15
    iget-object v3, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 16
    iget-boolean v3, p0, Lcom/facebook/drawee/drawable/p;->b:Z

    if-eqz v3, :cond_3

    .line 17
    iget-object v3, p0, Lcom/facebook/drawee/drawable/p;->e:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    .line 18
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    .line 19
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    .line 20
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 21
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 22
    :cond_3
    iget-boolean v2, p0, Lcom/facebook/drawee/drawable/p;->z:Z

    if-eqz v2, :cond_6

    .line 23
    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->k:[F

    if-nez v2, :cond_4

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 24
    iput-object v2, p0, Lcom/facebook/drawee/drawable/p;->k:[F

    :cond_4
    const/4 v2, 0x0

    .line 25
    :goto_3
    iget-object v3, p0, Lcom/facebook/drawee/drawable/p;->j:[F

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 26
    iget-object v3, p0, Lcom/facebook/drawee/drawable/p;->k:[F

    iget-object v4, p0, Lcom/facebook/drawee/drawable/p;->i:[F

    aget v4, v4, v2

    iget v5, p0, Lcom/facebook/drawee/drawable/p;->d:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 27
    :cond_5
    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->e:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/p;->k:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 28
    :cond_6
    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->e:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/p;->i:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 29
    :goto_4
    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    neg-float v0, v0

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 30
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->e:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 31
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/p;->B:Z

    :cond_7
    return-void
.end method

.method protected f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->C:Lcom/facebook/drawee/drawable/u;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/facebook/drawee/drawable/p;->s:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/u;->f(Landroid/graphics/Matrix;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->C:Lcom/facebook/drawee/drawable/u;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/u;->q(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->s:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->n:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/p;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/p;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->q:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/p;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->o:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 9
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->z:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->p:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/p;->p:Landroid/graphics/RectF;

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->p:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/p;->d:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 14
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->v:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/p;->v:Landroid/graphics/Matrix;

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->v:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->p:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_2

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->v:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 19
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->s:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/p;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->q:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->r:Landroid/graphics/Matrix;

    .line 20
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->v:Landroid/graphics/Matrix;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->w:Landroid/graphics/Matrix;

    .line 21
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 22
    :cond_5
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/p;->f:Z

    .line 23
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->s:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->u:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 24
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->x:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->s:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 25
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->z:Z

    if-eqz v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->x:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->v:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->x:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 28
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->t:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->s:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 29
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->r:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 30
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->z:Z

    if-eqz v0, :cond_8

    .line 31
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->w:Landroid/graphics/Matrix;

    if-nez v0, :cond_7

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->v:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/p;->w:Landroid/graphics/Matrix;

    goto :goto_3

    .line 33
    :cond_7
    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->v:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_3

    .line 34
    :cond_8
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->w:Landroid/graphics/Matrix;

    if-eqz v0, :cond_9

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 36
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/p;->m:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 37
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/p;->B:Z

    .line 38
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->m:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/p;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_a
    return-void
.end method

.method public g(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/p;->y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/facebook/drawee/drawable/p;->y:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/p;->B:Z

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public h(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1
    :goto_0
    invoke-static {v3}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 2
    iget-object v3, p0, Lcom/facebook/drawee/drawable/p;->i:[F

    invoke-static {v3, p1}, Ljava/util/Arrays;->fill([FF)V

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 3
    :cond_1
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->c:Z

    .line 4
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/p;->B:Z

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public i(Lcom/facebook/drawee/drawable/u;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transformCallback"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/drawable/p;->C:Lcom/facebook/drawee/drawable/u;

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->A:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->b:Z

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/facebook/drawee/drawable/p;->g:I

    return v0
.end method

.method public m()[F
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->i:[F

    return-object v0
.end method

.method public n(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paintFilterBitmap"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->A:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/p;->A:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public o(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleDownInsideBorders"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/p;->z:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/p;->z:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/p;->B:Z

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public p()F
    .locals 1

    iget v0, p0, Lcom/facebook/drawee/drawable/p;->d:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p2    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "mode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/p;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public t()F
    .locals 1

    iget v0, p0, Lcom/facebook/drawee/drawable/p;->y:F

    return v0
.end method

.method public u([F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radii"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/drawable/p;->i:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 2
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/p;->c:Z

    goto :goto_3

    .line 3
    :cond_0
    array-length v3, p1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v5, "radii should have exactly 8 values"

    invoke-static {v3, v5}, Lcom/facebook/common/internal/j;->e(ZLjava/lang/Object;)V

    .line 4
    iget-object v3, p0, Lcom/facebook/drawee/drawable/p;->i:[F

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/p;->c:Z

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    .line 6
    iget-boolean v5, p0, Lcom/facebook/drawee/drawable/p;->c:Z

    aget v6, p1, v3

    cmpl-float v6, v6, v0

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/facebook/drawee/drawable/p;->c:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_3
    :goto_3
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/p;->B:Z

    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
