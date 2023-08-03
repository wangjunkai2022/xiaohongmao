.class public Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;
.super Landroid/widget/RelativeLayout;
.source "PlaneImagerView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;

.field private i:Landroid/content/Context;

.field private j:Lcom/qennnsad/aknkaksd/util/roomanim/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->i:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->i:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->f()V

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;)Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->h:Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;

    return-object p0
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;)Lcom/qennnsad/aknkaksd/util/roomanim/c;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->j:Lcom/qennnsad/aknkaksd/util/roomanim/c;

    return-object p0
.end method

.method private f()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->a:Landroid/widget/ImageView;

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x256

    const/16 v2, 0x11e

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->a:Landroid/widget/ImageView;

    const v1, 0x7f080558

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 6
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->b:Landroid/widget/ImageView;

    .line 7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x3c

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->b:Landroid/widget/ImageView;

    const v2, 0x7f080557

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 11
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->i:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->c:Landroid/widget/ImageView;

    .line 12
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x28

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->i:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->d:Landroid/widget/ImageView;

    .line 17
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x46

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 18
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 21
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->i:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->e:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 25
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->i:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->f:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 29
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->g:Landroid/widget/ImageView;

    .line 30
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x1a8

    const/16 v2, 0xdc

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 31
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->g:Landroid/widget/ImageView;

    const v1, 0x7f080559

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 34
    new-instance v0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->h:Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;

    .line 35
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x190

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->h:Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->h:Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->e(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->e(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->e(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->e(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->e(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0, p0, p1}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->d(Landroid/view/View;F)V

    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p2, v3

    const/high16 v3, 0x43960000    # 300.0f

    sub-float/2addr p2, v3

    const/4 v3, 0x1

    aput p2, v1, v3

    const-string v4, "translationX"

    .line 1
    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v5, v0, [F

    .line 2
    fill-array-data v5, :array_0

    const-string v6, "translationY"

    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v6, v0, [F

    aput p2, v6, v2

    const/high16 p2, -0x3bea0000    # -600.0f

    aput p2, v6, v3

    .line 3
    invoke-static {p1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v2, 0x5dc

    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_1

    const-string v2, "alpha"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x10cc

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 7
    new-instance v1, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$a;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$a;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    new-instance v1, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$b;

    invoke-direct {v1, p0, p2}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$b;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    new-instance p1, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$c;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$c;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;)V

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0x7d0

    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43480000    # 200.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public e(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    const-string v2, "rotationY"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    const-string v1, "rotation"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        -0x3e100000    # -30.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x45e10000    # 7200.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->a:Landroid/widget/ImageView;

    const/4 p2, 0x0

    const/16 p3, 0x256

    const/16 p4, 0x11e

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->b:Landroid/widget/ImageView;

    const/16 p2, 0x27

    const/16 p3, 0x87

    const/16 p4, 0x63

    const/16 p5, 0xc3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->c:Landroid/widget/ImageView;

    const/16 p2, 0x5e

    const/16 p3, 0xb6

    const/16 p4, 0x86

    const/16 p5, 0xde

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->d:Landroid/widget/ImageView;

    const/16 p2, 0x49

    const/16 p3, 0xc2

    const/16 p4, 0x8f

    const/16 p5, 0x108

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->e:Landroid/widget/ImageView;

    const/16 p2, 0xc8

    const/16 p3, 0xe2

    const/16 p4, 0xf0

    const/16 p5, 0x10a

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->f:Landroid/widget/ImageView;

    const/16 p2, 0x10e

    const/16 p3, 0xe8

    const/16 p4, 0x14a

    const/16 p5, 0x124

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->g:Landroid/widget/ImageView;

    const/16 p2, 0xb0

    const/16 p3, 0x244

    const/16 p4, 0x258

    const/16 p5, 0x320

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->h:Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;

    const/16 p2, 0x64

    const/16 p3, 0x12c

    const/16 p4, 0x1f4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/RelativeLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    const/16 p1, 0x258

    const/16 p2, 0x320

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGitfSpecialsStop(Lcom/qennnsad/aknkaksd/util/roomanim/c;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->j:Lcom/qennnsad/aknkaksd/util/roomanim/c;

    return-void
.end method
