.class Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;
.super Ljava/lang/Object;
.source "CarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->l(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;->a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;->a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->b(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;->a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->c(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;->a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->d(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;->a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->a(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;->a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->e(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;->a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->f(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;->a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->g(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;->a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->h(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 9
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;->a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->i(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Lcom/qennnsad/aknkaksd/util/roomanim/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$f;->a:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/CarView;->i(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;)Lcom/qennnsad/aknkaksd/util/roomanim/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/c;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
