.class public Lcom/qennnsad/aknkaksd/util/roomanim/CarView;
.super Landroid/widget/RelativeLayout;
.source "CarView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/content/Context;

.field private k:Landroid/graphics/drawable/AnimationDrawable;

.field private l:Landroid/graphics/drawable/AnimationDrawable;

.field private m:Landroid/graphics/drawable/AnimationDrawable;

.field private n:Landroid/graphics/drawable/AnimationDrawable;

.field private o:Lcom/qennnsad/aknkaksd/util/roomanim/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->j:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->j:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->k()V

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->f:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->m:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic f(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->m:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic g(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->n:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic h(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->n:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic i(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Lcom/qennnsad/aknkaksd/util/roomanim/c;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->o:Lcom/qennnsad/aknkaksd/util/roomanim/c;

    return-object p0
.end method

.method private k()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->a:Landroid/widget/ImageView;

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x1e9

    const/16 v2, 0xc2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->a:Landroid/widget/ImageView;

    const v1, 0x7f08018c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 6
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->d:Landroid/widget/ImageView;

    const v1, 0x7f0804db

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->d:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x36

    const/16 v3, 0x3f

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 10
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 12
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->j:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->e:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 14
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->e:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 15
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->c:Landroid/widget/ImageView;

    const v1, 0x7f080195

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 19
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->b:Landroid/widget/ImageView;

    const v1, 0x7f080194

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 22
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 23
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->f:Landroid/widget/ImageView;

    const v1, 0x7f08018d

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 25
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 26
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->g:Landroid/widget/ImageView;

    const v1, 0x7f08018b

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 28
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 29
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->h:Landroid/widget/ImageView;

    const v1, 0x7f0804da

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 31
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 32
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->i:Landroid/widget/ImageView;

    const v1, 0x7f0804dc

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 34
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private l(FF)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, p1, v4

    const/high16 v6, 0x43960000    # 300.0f

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aput v5, v2, v6

    const-string v7, "translationX"

    .line 1
    invoke-static {v0, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v8, v1, [F

    const/4 v9, 0x0

    aput v9, v8, v3

    div-float v4, p2, v4

    aput v4, v8, v6

    const-string v10, "translationY"

    .line 2
    invoke-static {v0, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v11, v1, [F

    aput v5, v11, v3

    const/high16 v12, -0x3bea0000    # -600.0f

    aput v12, v11, v6

    .line 3
    invoke-static {v0, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v13, 0x5dc

    invoke-virtual {v11, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-array v15, v1, [F

    aput v4, v15, v3

    aput p2, v15, v6

    .line 4
    invoke-static {v0, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    new-array v9, v1, [F

    .line 5
    fill-array-data v9, :array_0

    const-string v12, "alpha"

    invoke-static {v0, v12, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 6
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    invoke-virtual {v13, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 8
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 9
    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 10
    new-instance v2, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$a;

    invoke-direct {v2, v0, v9}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$a;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    new-instance v2, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$b;

    invoke-direct {v2, v0, v13}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$b;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v9, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v2, v1, [F

    aput p1, v2, v3

    aput v5, v2, v6

    .line 12
    invoke-static {v0, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v8, v1, [F

    aput p2, v8, v3

    aput v4, v8, v6

    .line 13
    invoke-static {v0, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v9, v1, [F

    .line 14
    fill-array-data v9, :array_1

    invoke-static {v0, v12, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v14, 0x5dc

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-array v12, v1, [F

    aput v5, v12, v3

    const/high16 v5, -0x3bea0000    # -600.0f

    aput v5, v12, v6

    .line 15
    invoke-static {v0, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v1, v1, [F

    aput v4, v1, v3

    const/4 v3, 0x0

    aput v3, v1, v6

    .line 16
    invoke-static {v0, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 17
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 18
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 19
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 20
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 21
    new-instance v1, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$c;

    invoke-direct {v1, v0, v3}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$c;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    new-instance v1, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$d;

    invoke-direct {v1, v0, v9}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$d;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    new-instance v1, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$e;

    invoke-direct {v1, v0, v2}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$e;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v9, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    new-instance v1, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x7d0

    .line 25
    invoke-virtual {v11, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public j(FF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->m()V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->l(FF)V

    return-void
.end method

.method public m()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "rotationY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->e:Landroid/widget/ImageView;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 12
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->k:Landroid/graphics/drawable/AnimationDrawable;

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 14
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->l:Landroid/graphics/drawable/AnimationDrawable;

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->k:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->k:Landroid/graphics/drawable/AnimationDrawable;

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->l:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 4
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->l:Landroid/graphics/drawable/AnimationDrawable;

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->m:Landroid/graphics/drawable/AnimationDrawable;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 15
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->n:Landroid/graphics/drawable/AnimationDrawable;

    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->a:Landroid/widget/ImageView;

    const/16 p2, 0x77

    const/4 p3, 0x0

    const/16 p4, 0x269

    const/16 p5, 0xc2

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->d:Landroid/widget/ImageView;

    const/16 p4, 0x126

    const/16 p5, 0x61

    const/16 v0, 0x15f

    const/16 v1, 0xa0

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->e:Landroid/widget/ImageView;

    const/16 p4, 0x21a

    const/16 p5, 0x30

    const/16 v0, 0x245

    const/16 v1, 0x6c

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->c:Landroid/widget/ImageView;

    const/16 p4, 0xc

    const/16 p5, 0x36

    const/16 v0, 0x10a

    const/16 v2, 0xff

    invoke-virtual {p1, p4, p5, v0, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->b:Landroid/widget/ImageView;

    const/16 p4, 0x18

    const/4 p5, 0x5

    const/16 v0, 0xb9

    const/16 v2, 0xbe

    invoke-virtual {p1, p4, p5, v0, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->f:Landroid/widget/ImageView;

    const/16 p4, 0x1ee

    const/16 p5, 0xe8

    invoke-virtual {p1, p3, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->g:Landroid/widget/ImageView;

    const/16 p3, 0x171

    const/16 p4, 0x200

    const/16 p5, 0xf7

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->h:Landroid/widget/ImageView;

    const/16 p2, 0xf

    const/16 p3, 0x31

    const/16 p4, 0x27

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 9
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->i:Landroid/widget/ImageView;

    const/16 p2, 0xad

    const/16 p3, 0x65

    const/16 p4, 0xe3

    const/16 p5, 0xc4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    const/16 p1, 0x258

    const/16 p2, 0x104

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnimsopt(Lcom/qennnsad/aknkaksd/util/roomanim/c;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->o:Lcom/qennnsad/aknkaksd/util/roomanim/c;

    return-void
.end method
