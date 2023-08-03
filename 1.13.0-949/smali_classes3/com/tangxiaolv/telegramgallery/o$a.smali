.class Lcom/tangxiaolv/telegramgallery/o$a;
.super Lcom/tangxiaolv/telegramgallery/a;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o;->b1(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o;I)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$a;->a:I

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/o;->K(Lcom/tangxiaolv/telegramgallery/o;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->i(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/h;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->F(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->G(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->g(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Components/b;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->u(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/k;->g()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 7
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/o;->o(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/d;

    move-result-object v3

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/o;->u(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tangxiaolv/telegramgallery/k;->x()I

    move-result v4

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    .line 8
    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/o;->G(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v5

    if-eq v5, v2, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 9
    :goto_0
    invoke-virtual {v3, p1, v4, v5}, Lcom/tangxiaolv/telegramgallery/Components/d;->g(Landroid/graphics/Bitmap;IZ)V

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->u(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/k;->j()I

    move-result p1

    .line 11
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/o;->u(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/k;->i()I

    move-result v3

    .line 12
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/o;->q(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v4

    int-to-float v4, v4

    int-to-float p1, p1

    div-float/2addr v4, p1

    .line 13
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/o;->B(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 14
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v6, v2}, Lcom/tangxiaolv/telegramgallery/o;->L(Lcom/tangxiaolv/telegramgallery/o;I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, p1

    .line 15
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1, v2}, Lcom/tangxiaolv/telegramgallery/o;->M(Lcom/tangxiaolv/telegramgallery/o;I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    cmpl-float v3, v4, v5

    if-lez v3, :cond_2

    move v4, v5

    :cond_2
    cmpl-float v3, v6, p1

    if-lez v3, :cond_3

    move v6, p1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    div-float/2addr v6, v4

    invoke-static {p1, v6}, Lcom/tangxiaolv/telegramgallery/o;->y(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 17
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/o;->z(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 18
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {p1, v3}, Lcom/tangxiaolv/telegramgallery/o;->A(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 19
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/tangxiaolv/telegramgallery/o;->O(Lcom/tangxiaolv/telegramgallery/o;J)J

    .line 20
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1, v2}, Lcom/tangxiaolv/telegramgallery/o;->P(Lcom/tangxiaolv/telegramgallery/o;Z)Z

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v3}, Lcom/tangxiaolv/telegramgallery/o;->s(Lcom/tangxiaolv/telegramgallery/o;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 22
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->r(Lcom/tangxiaolv/telegramgallery/o;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    .line 23
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/o;->x(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/h;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/high16 v7, 0x42400000    # 48.0f

    .line 24
    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v1

    aput v0, v6, v2

    const-string v0, "translationY"

    .line 25
    invoke-static {v4, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    const-string v4, "animationValue"

    .line 26
    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    .line 27
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->o(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/d;

    move-result-object v0

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v5

    .line 28
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 29
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->r(Lcom/tangxiaolv/telegramgallery/o;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 30
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->r(Lcom/tangxiaolv/telegramgallery/o;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$a$a;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/o$a$a;-><init>(Lcom/tangxiaolv/telegramgallery/o$a;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 31
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->r(Lcom/tangxiaolv/telegramgallery/o;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
