.class public Lcom/github/chrisbanes/photoview/l;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/chrisbanes/photoview/l$f;,
        Lcom/github/chrisbanes/photoview/l$e;
    }
.end annotation


# static fields
.field private static F:F = 3.0f

.field private static G:F = 1.75f

.field private static H:F = 1.0f

.field private static I:I = 0xc8

.field private static final J:I = -0x1

.field private static final K:I = 0x0

.field private static final L:I = 0x1

.field private static final M:I = 0x2

.field private static final N:I = -0x1

.field private static final O:I = 0x0

.field private static final P:I = 0x1

.field private static final Q:I = 0x2

.field private static R:I = 0x1


# instance fields
.field private A:I

.field private B:F

.field private C:Z

.field private D:Landroid/widget/ImageView$ScaleType;

.field private E:Lcom/github/chrisbanes/photoview/d;

.field private a:Landroid/view/animation/Interpolator;

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/GestureDetector;

.field private j:Lcom/github/chrisbanes/photoview/c;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/Matrix;

.field private final n:Landroid/graphics/RectF;

.field private final o:[F

.field private p:Lcom/github/chrisbanes/photoview/e;

.field private q:Lcom/github/chrisbanes/photoview/g;

.field private r:Lcom/github/chrisbanes/photoview/f;

.field private s:Lcom/github/chrisbanes/photoview/k;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnLongClickListener;

.field private v:Lcom/github/chrisbanes/photoview/h;

.field private w:Lcom/github/chrisbanes/photoview/i;

.field private x:Lcom/github/chrisbanes/photoview/j;

.field private y:Lcom/github/chrisbanes/photoview/l$f;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/l;->a:Landroid/view/animation/Interpolator;

    .line 3
    sget v0, Lcom/github/chrisbanes/photoview/l;->I:I

    iput v0, p0, Lcom/github/chrisbanes/photoview/l;->b:I

    .line 4
    sget v0, Lcom/github/chrisbanes/photoview/l;->H:F

    iput v0, p0, Lcom/github/chrisbanes/photoview/l;->c:F

    .line 5
    sget v0, Lcom/github/chrisbanes/photoview/l;->G:F

    iput v0, p0, Lcom/github/chrisbanes/photoview/l;->d:F

    .line 6
    sget v0, Lcom/github/chrisbanes/photoview/l;->F:F

    iput v0, p0, Lcom/github/chrisbanes/photoview/l;->e:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/github/chrisbanes/photoview/l;->f:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/github/chrisbanes/photoview/l;->g:Z

    .line 9
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    .line 10
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/l;->l:Landroid/graphics/Matrix;

    .line 11
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    .line 12
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/l;->n:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 13
    iput-object v1, p0, Lcom/github/chrisbanes/photoview/l;->o:[F

    const/4 v1, 0x2

    .line 14
    iput v1, p0, Lcom/github/chrisbanes/photoview/l;->z:I

    .line 15
    iput v1, p0, Lcom/github/chrisbanes/photoview/l;->A:I

    .line 16
    iput-boolean v0, p0, Lcom/github/chrisbanes/photoview/l;->C:Z

    .line 17
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/l;->D:Landroid/widget/ImageView$ScaleType;

    .line 18
    new-instance v0, Lcom/github/chrisbanes/photoview/l$a;

    invoke-direct {v0, p0}, Lcom/github/chrisbanes/photoview/l$a;-><init>(Lcom/github/chrisbanes/photoview/l;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/l;->E:Lcom/github/chrisbanes/photoview/d;

    .line 19
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 22
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/github/chrisbanes/photoview/l;->B:F

    .line 24
    new-instance v0, Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/github/chrisbanes/photoview/l;->E:Lcom/github/chrisbanes/photoview/d;

    invoke-direct {v0, v1, v2}, Lcom/github/chrisbanes/photoview/c;-><init>(Landroid/content/Context;Lcom/github/chrisbanes/photoview/d;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/l;->j:Lcom/github/chrisbanes/photoview/c;

    .line 25
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/github/chrisbanes/photoview/l$b;

    invoke-direct {v1, p0}, Lcom/github/chrisbanes/photoview/l$b;-><init>(Lcom/github/chrisbanes/photoview/l;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/l;->i:Landroid/view/GestureDetector;

    .line 26
    new-instance p1, Lcom/github/chrisbanes/photoview/l$c;

    invoke-direct {p1, p0}, Lcom/github/chrisbanes/photoview/l$c;-><init>(Lcom/github/chrisbanes/photoview/l;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method private A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->y:Lcom/github/chrisbanes/photoview/l$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/l$f;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/github/chrisbanes/photoview/l;->y:Lcom/github/chrisbanes/photoview/l$f;

    :cond_0
    return-void
.end method

.method private B()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->G()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/l;->X(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private C()Z
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->G()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/l;->F(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/github/chrisbanes/photoview/l;->I(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    cmpg-float v11, v2, v4

    if-gtz v11, :cond_3

    .line 4
    sget-object v11, Lcom/github/chrisbanes/photoview/l$d;->a:[I

    iget-object v12, p0, Lcom/github/chrisbanes/photoview/l;->D:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v9, :cond_2

    if-eq v11, v7, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v6

    .line 5
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    sub-float/2addr v4, v2

    .line 6
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_1

    .line 7
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    .line 8
    :goto_1
    iput v9, p0, Lcom/github/chrisbanes/photoview/l;->A:I

    goto :goto_2

    .line 9
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v2, v10

    if-lez v11, :cond_4

    .line 10
    iput v1, p0, Lcom/github/chrisbanes/photoview/l;->A:I

    neg-float v4, v2

    goto :goto_2

    .line 11
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v11, v2, v4

    if-gez v11, :cond_5

    .line 12
    iput v8, p0, Lcom/github/chrisbanes/photoview/l;->A:I

    sub-float/2addr v4, v2

    goto :goto_2

    .line 13
    :cond_5
    iput v5, p0, Lcom/github/chrisbanes/photoview/l;->A:I

    const/4 v4, 0x0

    .line 14
    :goto_2
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/github/chrisbanes/photoview/l;->J(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v11, v3, v2

    if-gtz v11, :cond_8

    .line 15
    sget-object v1, Lcom/github/chrisbanes/photoview/l$d;->a:[I

    iget-object v5, p0, Lcom/github/chrisbanes/photoview/l;->D:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v9, :cond_7

    if-eq v1, v7, :cond_6

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    .line 16
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_6
    sub-float/2addr v2, v3

    .line 17
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v2, v0

    move v10, v2

    goto :goto_4

    .line 18
    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v10, v0

    .line 19
    :goto_4
    iput v9, p0, Lcom/github/chrisbanes/photoview/l;->z:I

    goto :goto_5

    .line 20
    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v3, v10

    if-lez v6, :cond_9

    .line 21
    iput v1, p0, Lcom/github/chrisbanes/photoview/l;->z:I

    neg-float v10, v3

    goto :goto_5

    .line 22
    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_a

    sub-float v10, v2, v0

    .line 23
    iput v8, p0, Lcom/github/chrisbanes/photoview/l;->z:I

    goto :goto_5

    .line 24
    :cond_a
    iput v5, p0, Lcom/github/chrisbanes/photoview/l;->z:I

    .line 25
    :goto_5
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v8
.end method

.method private F(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/l;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->n:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/l;->n:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private G()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->l:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->l:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->l:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private I(Landroid/widget/ImageView;)I
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private J(Landroid/widget/ImageView;)I
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private Q(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->o:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/l;->o:[F

    aget p1, p1, p2

    return p1
.end method

.method private T()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget v0, p0, Lcom/github/chrisbanes/photoview/l;->B:F

    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/l;->l0(F)V

    .line 3
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->G()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/l;->X(Landroid/graphics/Matrix;)V

    .line 4
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->C()Z

    return-void
.end method

.method private X(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->p:Lcom/github/chrisbanes/photoview/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/l;->F(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->p:Lcom/github/chrisbanes/photoview/e;

    invoke-interface {v0, p1}, Lcom/github/chrisbanes/photoview/e;->a(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/github/chrisbanes/photoview/l;)Lcom/github/chrisbanes/photoview/c;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->j:Lcom/github/chrisbanes/photoview/c;

    return-object p0
.end method

.method static synthetic b(Lcom/github/chrisbanes/photoview/l;)Lcom/github/chrisbanes/photoview/j;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->x:Lcom/github/chrisbanes/photoview/j;

    return-object p0
.end method

.method static synthetic c(Lcom/github/chrisbanes/photoview/l;Landroid/widget/ImageView;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/l;->J(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/github/chrisbanes/photoview/l;Landroid/widget/ImageView;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/l;->I(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/github/chrisbanes/photoview/l;)F
    .locals 0

    iget p0, p0, Lcom/github/chrisbanes/photoview/l;->e:F

    return p0
.end method

.method static synthetic f(Lcom/github/chrisbanes/photoview/l;)Lcom/github/chrisbanes/photoview/h;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->v:Lcom/github/chrisbanes/photoview/h;

    return-object p0
.end method

.method static synthetic g(Lcom/github/chrisbanes/photoview/l;)Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->u:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic h(Lcom/github/chrisbanes/photoview/l;)Lcom/github/chrisbanes/photoview/i;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->w:Lcom/github/chrisbanes/photoview/i;

    return-object p0
.end method

.method static synthetic i()F
    .locals 1

    sget v0, Lcom/github/chrisbanes/photoview/l;->H:F

    return v0
.end method

.method static synthetic j()I
    .locals 1

    sget v0, Lcom/github/chrisbanes/photoview/l;->R:I

    return v0
.end method

.method static synthetic k(Lcom/github/chrisbanes/photoview/l;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->t:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic l(Lcom/github/chrisbanes/photoview/l;)Lcom/github/chrisbanes/photoview/k;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->s:Lcom/github/chrisbanes/photoview/k;

    return-object p0
.end method

.method static synthetic m(Lcom/github/chrisbanes/photoview/l;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic n(Lcom/github/chrisbanes/photoview/l;)Lcom/github/chrisbanes/photoview/g;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->q:Lcom/github/chrisbanes/photoview/g;

    return-object p0
.end method

.method static synthetic o(Lcom/github/chrisbanes/photoview/l;)Lcom/github/chrisbanes/photoview/f;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->r:Lcom/github/chrisbanes/photoview/f;

    return-object p0
.end method

.method static synthetic p(Lcom/github/chrisbanes/photoview/l;)Lcom/github/chrisbanes/photoview/d;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->E:Lcom/github/chrisbanes/photoview/d;

    return-object p0
.end method

.method static synthetic q(Lcom/github/chrisbanes/photoview/l;)I
    .locals 0

    iget p0, p0, Lcom/github/chrisbanes/photoview/l;->b:I

    return p0
.end method

.method static synthetic r(Lcom/github/chrisbanes/photoview/l;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->a:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic s(Lcom/github/chrisbanes/photoview/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->B()V

    return-void
.end method

.method static synthetic t(Lcom/github/chrisbanes/photoview/l;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic u(Lcom/github/chrisbanes/photoview/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/chrisbanes/photoview/l;->f:Z

    return p0
.end method

.method static synthetic v(Lcom/github/chrisbanes/photoview/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/chrisbanes/photoview/l;->g:Z

    return p0
.end method

.method static synthetic w(Lcom/github/chrisbanes/photoview/l;)I
    .locals 0

    iget p0, p0, Lcom/github/chrisbanes/photoview/l;->z:I

    return p0
.end method

.method private w0(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/l;->J(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/github/chrisbanes/photoview/l;->I(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 5
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 6
    iget-object v5, p0, Lcom/github/chrisbanes/photoview/l;->D:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 7
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 8
    :cond_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 10
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 11
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 12
    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 15
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 16
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 17
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 18
    iget v0, p0, Lcom/github/chrisbanes/photoview/l;->B:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    .line 19
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 20
    :cond_4
    sget-object p1, Lcom/github/chrisbanes/photoview/l$d;->a:[I

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->D:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_0

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 24
    :cond_8
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/l;->k:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 25
    :goto_0
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->T()V

    return-void
.end method

.method static synthetic x(Lcom/github/chrisbanes/photoview/l;)I
    .locals 0

    iget p0, p0, Lcom/github/chrisbanes/photoview/l;->A:I

    return p0
.end method

.method static synthetic y(Lcom/github/chrisbanes/photoview/l;)Lcom/github/chrisbanes/photoview/l$f;
    .locals 0

    iget-object p0, p0, Lcom/github/chrisbanes/photoview/l;->y:Lcom/github/chrisbanes/photoview/l$f;

    return-object p0
.end method

.method static synthetic z(Lcom/github/chrisbanes/photoview/l;Lcom/github/chrisbanes/photoview/l$f;)Lcom/github/chrisbanes/photoview/l$f;
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->y:Lcom/github/chrisbanes/photoview/l$f;

    return-object p1
.end method


# virtual methods
.method public D(Landroid/graphics/Matrix;)V
    .locals 1

    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->G()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public E()Landroid/graphics/RectF;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->C()Z

    .line 2
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->G()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/l;->F(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public H()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->l:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public K()F
    .locals 1

    iget v0, p0, Lcom/github/chrisbanes/photoview/l;->e:F

    return v0
.end method

.method public L()F
    .locals 1

    iget v0, p0, Lcom/github/chrisbanes/photoview/l;->d:F

    return v0
.end method

.method public M()F
    .locals 1

    iget v0, p0, Lcom/github/chrisbanes/photoview/l;->c:F

    return v0
.end method

.method public N()F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/github/chrisbanes/photoview/l;->Q(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    .line 2
    invoke-direct {p0, v1, v4}, Lcom/github/chrisbanes/photoview/l;->Q(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public O()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->D:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public P(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public R()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/l;->C:Z

    return v0
.end method

.method public S()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/l;->C:Z

    return v0
.end method

.method public U(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/chrisbanes/photoview/l;->f:Z

    return-void
.end method

.method public V(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 1
    iput p1, p0, Lcom/github/chrisbanes/photoview/l;->B:F

    .line 2
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/l;->v0()V

    .line 3
    iget p1, p0, Lcom/github/chrisbanes/photoview/l;->B:F

    invoke-virtual {p0, p1}, Lcom/github/chrisbanes/photoview/l;->l0(F)V

    .line 4
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->B()V

    return-void
.end method

.method public W(Landroid/graphics/Matrix;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 3
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->B()V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Y(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/l;->c:F

    iget v1, p0, Lcom/github/chrisbanes/photoview/l;->d:F

    invoke-static {v0, v1, p1}, Lcom/github/chrisbanes/photoview/n;->a(FFF)V

    .line 2
    iput p1, p0, Lcom/github/chrisbanes/photoview/l;->e:F

    return-void
.end method

.method public Z(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/l;->c:F

    iget v1, p0, Lcom/github/chrisbanes/photoview/l;->e:F

    invoke-static {v0, p1, v1}, Lcom/github/chrisbanes/photoview/n;->a(FFF)V

    .line 2
    iput p1, p0, Lcom/github/chrisbanes/photoview/l;->d:F

    return-void
.end method

.method public a0(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/l;->d:F

    iget v1, p0, Lcom/github/chrisbanes/photoview/l;->e:F

    invoke-static {p1, v0, v1}, Lcom/github/chrisbanes/photoview/n;->a(FFF)V

    .line 2
    iput p1, p0, Lcom/github/chrisbanes/photoview/l;->c:F

    return-void
.end method

.method public b0(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->t:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public c0(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->i:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public d0(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->u:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public e0(Lcom/github/chrisbanes/photoview/e;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->p:Lcom/github/chrisbanes/photoview/e;

    return-void
.end method

.method public f0(Lcom/github/chrisbanes/photoview/f;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->r:Lcom/github/chrisbanes/photoview/f;

    return-void
.end method

.method public g0(Lcom/github/chrisbanes/photoview/g;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->q:Lcom/github/chrisbanes/photoview/g;

    return-void
.end method

.method public h0(Lcom/github/chrisbanes/photoview/h;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->v:Lcom/github/chrisbanes/photoview/h;

    return-void
.end method

.method public i0(Lcom/github/chrisbanes/photoview/i;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->w:Lcom/github/chrisbanes/photoview/i;

    return-void
.end method

.method public j0(Lcom/github/chrisbanes/photoview/j;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->x:Lcom/github/chrisbanes/photoview/j;

    return-void
.end method

.method public k0(Lcom/github/chrisbanes/photoview/k;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->s:Lcom/github/chrisbanes/photoview/k;

    return-void
.end method

.method public l0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->B()V

    return-void
.end method

.method public m0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 2
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->B()V

    return-void
.end method

.method public n0(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/chrisbanes/photoview/l;->p0(FZ)V

    return-void
.end method

.method public o0(FFFZ)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/l;->c:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/github/chrisbanes/photoview/l;->e:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    .line 2
    iget-object p4, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    new-instance v6, Lcom/github/chrisbanes/photoview/l$e;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/l;->N()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/github/chrisbanes/photoview/l$e;-><init>(Lcom/github/chrisbanes/photoview/l;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p4, p0, Lcom/github/chrisbanes/photoview/l;->m:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 4
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->B()V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/l;->w0(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/l;->C:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/n;->c(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/l;->N()F

    move-result v0

    iget v3, p0, Lcom/github/chrisbanes/photoview/l;->c:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/l;->E()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v9, Lcom/github/chrisbanes/photoview/l$e;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/l;->N()F

    move-result v5

    iget v6, p0, Lcom/github/chrisbanes/photoview/l;->c:F

    .line 6
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/github/chrisbanes/photoview/l$e;-><init>(Lcom/github/chrisbanes/photoview/l;FFFF)V

    .line 7
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/l;->N()F

    move-result v0

    iget v3, p0, Lcom/github/chrisbanes/photoview/l;->e:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/l;->E()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    new-instance v9, Lcom/github/chrisbanes/photoview/l$e;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/l;->N()F

    move-result v5

    iget v6, p0, Lcom/github/chrisbanes/photoview/l;->e:F

    .line 11
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/github/chrisbanes/photoview/l$e;-><init>(Lcom/github/chrisbanes/photoview/l;FFFF)V

    .line 12
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->A()V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->j:Lcom/github/chrisbanes/photoview/c;

    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/c;->e()Z

    move-result p1

    .line 18
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->j:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/c;->d()Z

    move-result v0

    .line 19
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/l;->j:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v3, p2}, Lcom/github/chrisbanes/photoview/c;->f(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/l;->j:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/c;->e()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-nez v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->j:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/c;->d()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 22
    :cond_7
    iput-boolean v1, p0, Lcom/github/chrisbanes/photoview/l;->g:Z

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, p1

    .line 23
    :goto_5
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/l;->i:Landroid/view/GestureDetector;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method public p0(FZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 4
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/github/chrisbanes/photoview/l;->o0(FFFZ)V

    return-void
.end method

.method public q0(FFF)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/github/chrisbanes/photoview/n;->a(FFF)V

    .line 2
    iput p1, p0, Lcom/github/chrisbanes/photoview/l;->c:F

    .line 3
    iput p2, p0, Lcom/github/chrisbanes/photoview/l;->d:F

    .line 4
    iput p3, p0, Lcom/github/chrisbanes/photoview/l;->e:F

    return-void
.end method

.method public r0(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/github/chrisbanes/photoview/n;->d(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->D:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->D:Landroid/widget/ImageView$ScaleType;

    .line 3
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/l;->v0()V

    :cond_0
    return-void
.end method

.method public s0(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/l;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public t0(I)V
    .locals 0

    iput p1, p0, Lcom/github/chrisbanes/photoview/l;->b:I

    return-void
.end method

.method public u0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/github/chrisbanes/photoview/l;->C:Z

    .line 2
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/l;->v0()V

    return-void
.end method

.method public v0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/l;->C:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/l;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/l;->w0(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/l;->T()V

    :goto_0
    return-void
.end method
