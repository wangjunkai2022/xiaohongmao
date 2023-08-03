.class Lcom/yalantis/ucrop/e$a;
.super Ljava/lang/Object;
.source "UCropFragment.java"

# interfaces
.implements Lcom/yalantis/ucrop/view/TransformImageView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yalantis/ucrop/e;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/e;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/e$a;->a:Lcom/yalantis/ucrop/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e$a;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->W(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/UCropView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/e$a;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->X(Lcom/yalantis/ucrop/e;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/e$a;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->Y(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/f;->b(Z)V

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/e$a;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0}, Lcom/yalantis/ucrop/e;->Y(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/f;

    move-result-object v0

    iget-object v1, p0, Lcom/yalantis/ucrop/e$a;->a:Lcom/yalantis/ucrop/e;

    invoke-virtual {v1, p1}, Lcom/yalantis/ucrop/e;->h0(Ljava/lang/Throwable;)Lcom/yalantis/ucrop/e$j;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yalantis/ucrop/f;->a(Lcom/yalantis/ucrop/e$j;)V

    return-void
.end method

.method public c(F)V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/e$a;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/e;->V(Lcom/yalantis/ucrop/e;F)V

    return-void
.end method

.method public d(F)V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/e$a;->a:Lcom/yalantis/ucrop/e;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/e;->U(Lcom/yalantis/ucrop/e;F)V

    return-void
.end method
