.class Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$c;
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->b(Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;)Lcom/qennnsad/aknkaksd/util/roomanim/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;->b(Lcom/qennnsad/aknkaksd/util/roomanim/PlaneImagerView;)Lcom/qennnsad/aknkaksd/util/roomanim/c;

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
