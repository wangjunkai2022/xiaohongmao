.class Lcom/tangxiaolv/telegramgallery/o$v;
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

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$v;->a:I

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->m(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->x(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/h;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->o(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/tangxiaolv/telegramgallery/o;->s(Lcom/tangxiaolv/telegramgallery/o;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->a:I

    invoke-static {p1, v1}, Lcom/tangxiaolv/telegramgallery/o;->n(Lcom/tangxiaolv/telegramgallery/o;I)I

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/tangxiaolv/telegramgallery/o;->y(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/tangxiaolv/telegramgallery/o;->z(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1, v2}, Lcom/tangxiaolv/telegramgallery/o;->A(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 9
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1, v1}, Lcom/tangxiaolv/telegramgallery/o;->D(Lcom/tangxiaolv/telegramgallery/o;F)F

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->C(Lcom/tangxiaolv/telegramgallery/o;)F

    move-result v3

    invoke-static {p1, v3}, Lcom/tangxiaolv/telegramgallery/o;->E(Lcom/tangxiaolv/telegramgallery/o;F)V

    .line 11
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/o;->v(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/o$z;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 12
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/o;->i(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/h;

    move-result-object v4

    new-array v5, v0, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const-string v7, "translationY"

    invoke-static {v4, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/o;->F(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    move-result-object v4

    new-array v5, v0, [F

    aput v2, v5, v6

    invoke-static {v4, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/o;->G(Lcom/tangxiaolv/telegramgallery/o;)I

    move-result v2

    if-nez v2, :cond_1

    .line 17
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/o$v;->b:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/o;->g(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/b;

    move-result-object v2

    new-array v0, v0, [F

    aput v1, v0, v6

    const-string v1, "alpha"

    invoke-static {v2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_1
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xc8

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 20
    new-instance v0, Lcom/tangxiaolv/telegramgallery/o$v$a;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/o$v$a;-><init>(Lcom/tangxiaolv/telegramgallery/o$v;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
