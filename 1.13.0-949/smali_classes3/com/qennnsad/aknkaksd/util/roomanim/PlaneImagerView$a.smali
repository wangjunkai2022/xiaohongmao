.class Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$a;
.super Ljava/lang/Object;
.source "PlaneImagerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->d(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ObjectAnimator;

.field final synthetic b:Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$a;->b:Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$a;->a:Landroid/animation/ObjectAnimator;

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$a;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$a;->b:Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->a(Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;)Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

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
