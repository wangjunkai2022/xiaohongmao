.class public Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;
.super Landroid/widget/RelativeLayout;
.source "MrlLove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$a;,
        Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$c;,
        Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Random;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/widget/RelativeLayout$LayoutParams;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:[Landroid/graphics/drawable/Drawable;

.field private t:Landroid/view/animation/Interpolator;

.field private u:Landroid/view/animation/Interpolator;

.field private v:Landroid/view/animation/Interpolator;

.field private w:Landroid/view/animation/Interpolator;

.field private x:[Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->a:Ljava/util/Random;

    .line 3
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->t:Landroid/view/animation/Interpolator;

    .line 4
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->u:Landroid/view/animation/Interpolator;

    .line 5
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->v:Landroid/view/animation/Interpolator;

    .line 6
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->w:Landroid/view/animation/Interpolator;

    .line 7
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->g()V

    .line 8
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->a:Ljava/util/Random;

    .line 11
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->t:Landroid/view/animation/Interpolator;

    .line 12
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->u:Landroid/view/animation/Interpolator;

    .line 13
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->v:Landroid/view/animation/Interpolator;

    .line 14
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->w:Landroid/view/animation/Interpolator;

    .line 15
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->g()V

    .line 16
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->f()V

    return-void
.end method

.method private b(Landroid/view/View;)Landroid/animation/Animator;
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->d(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->c(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 4
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v5

    aput-object v1, v4, v3

    .line 5
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->x:[Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->a:Ljava/util/Random;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    return-object v2
.end method

.method private c(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 7

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$b;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->e(I)Landroid/graphics/PointF;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->e(I)Landroid/graphics/PointF;

    move-result-object v4

    invoke-direct {v0, p0, v2, v4}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$b;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    new-instance v4, Landroid/graphics/PointF;

    iget v5, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->e:I

    iget v6, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->c:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    int-to-float v1, v5

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    aput-object v4, v2, v1

    new-instance v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->a:Ljava/util/Random;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->d:I

    iget v6, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->b:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$c;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$c;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v1, 0xdac

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private d(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 7

    .line 1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 4
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0x1f4

    .line 5
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    aput-object v3, v5, v1

    .line 7
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 8
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    return-object v4

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private e(I)Landroid/graphics/PointF;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->a:Ljava/util/Random;

    iget v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->e:I

    add-int/lit8 v2, v2, -0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->a:Ljava/util/Random;

    iget v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->d:I

    add-int/lit8 v2, v2, -0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    div-int/2addr v1, p1

    int-to-float p1, v1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private f()V
    .locals 3

    const/16 v0, 0x46

    .line 1
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->b:I

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->c:I

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/animation/Interpolator;

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->x:[Landroid/view/animation/Interpolator;

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->t:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->u:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->v:Landroid/view/animation/Interpolator;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->w:Landroid/view/animation/Interpolator;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 8
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->b:I

    iget v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->c:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->f:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    const/4 v2, -0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->f:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method private g()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 1
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08055a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->g:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08055e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->h:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08055f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->i:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080560

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->j:Landroid/graphics/drawable/Drawable;

    .line 9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08055d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->k:Landroid/graphics/drawable/Drawable;

    .line 11
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080561

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->l:Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080562

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->m:Landroid/graphics/drawable/Drawable;

    .line 15
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x6

    aput-object v0, v2, v3

    .line 16
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080563

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->n:Landroid/graphics/drawable/Drawable;

    .line 17
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x7

    aput-object v0, v2, v3

    .line 18
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080564

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->o:Landroid/graphics/drawable/Drawable;

    .line 19
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x8

    aput-object v0, v2, v3

    .line 20
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08055b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->p:Landroid/graphics/drawable/Drawable;

    .line 21
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x9

    aput-object v0, v2, v3

    .line 22
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08055c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->q:Landroid/graphics/drawable/Drawable;

    .line 23
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xa

    aput-object v0, v2, v3

    .line 24
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->r:Landroid/graphics/drawable/Drawable;

    .line 25
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->s:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->a:Ljava/util/Random;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->f:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->b(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$a;

    invoke-direct {v2, p0, v0}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$a;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->e:I

    return-void
.end method
