.class public Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;
.super Landroid/widget/RelativeLayout;
.source "ShipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/content/Context;

.field private e:F

.field private f:F

.field private g:Landroid/animation/AnimatorSet;

.field private h:I

.field private i:Lcom/qennnsad/aknkaksd/util/roomanim/c;

.field private j:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->d:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->d:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->i()V

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->g:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Lcom/qennnsad/aknkaksd/util/roomanim/c;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->i:Lcom/qennnsad/aknkaksd/util/roomanim/c;

    return-object p0
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->c:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic e(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->b:Landroid/widget/ImageView;

    return-object p1
.end method

.method private i()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->a:Landroid/widget/ImageView;

    const v1, 0x7f080651

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->j:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->e:F

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->f:F

    return-void
.end method


# virtual methods
.method public h(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->j:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;

    invoke-virtual {p0, v0, p1}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->j(Landroid/view/View;I)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->k(Landroid/view/View;)V

    return-void
.end method

.method public j(Landroid/view/View;I)V
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    iget v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->e:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v4, 0x41f00000    # 30.0f

    add-float/2addr v2, v4

    const/4 v4, 0x1

    aput v2, v1, v4

    const-string v2, "translationY"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v0, [F

    const/high16 v5, -0x3c1f0000    # -450.0f

    aput v5, v2, v3

    .line 2
    div-int/lit8 v5, p2, 0x2

    add-int/lit16 v5, v5, -0x1c2

    int-to-float v5, v5

    aput v5, v2, v4

    const-string v6, "translationX"

    invoke-static {p1, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v7, 0x7d0

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v7, v0, [F

    .line 3
    fill-array-data v7, :array_0

    const-string v8, "alpha"

    invoke-static {p1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v8, v0, [F

    aput v5, v8, v3

    int-to-float p2, p2

    aput p2, v8, v4

    .line 4
    invoke-static {p1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v3, 0xfa0

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 p2, -0x1

    .line 5
    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 6
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 7
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 9
    invoke-virtual {p2, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 10
    new-instance v0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$a;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$a;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    new-instance v0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$b;

    invoke-direct {v0, p0, p2}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$b;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public k(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    iget v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->f:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string v2, "translationY"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v0, [F

    .line 2
    fill-array-data v2, :array_0

    const-string v3, "translationX"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x1f40

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v2, -0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 4
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->g:Landroid/animation/AnimatorSet;

    .line 6
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->a:Landroid/widget/ImageView;

    iget p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->h:I

    const/16 p3, -0xc8

    const/16 p4, 0x64

    const/16 p5, 0x258

    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->j:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;

    const/4 p2, 0x0

    const/16 p3, 0x1c2

    invoke-virtual {p1, p2, p2, p3, p5}, Landroid/widget/RelativeLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->h:I

    const/16 p2, 0x258

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGitfSpecialsStop(Lcom/qennnsad/aknkaksd/util/roomanim/c;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->i:Lcom/qennnsad/aknkaksd/util/roomanim/c;

    return-void
.end method
