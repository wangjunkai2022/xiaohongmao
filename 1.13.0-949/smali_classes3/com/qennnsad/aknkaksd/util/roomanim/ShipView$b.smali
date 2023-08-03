.class Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$b;
.super Ljava/lang/Object;
.source "ShipView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->j(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/AnimatorSet;

.field final synthetic b:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$b;->b:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$b;->a:Landroid/animation/AnimatorSet;

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$b;->b:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->a(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$b;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$b;->b:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$b;->b:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->b(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Lcom/qennnsad/aknkaksd/util/roomanim/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$b;->b:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->b(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Lcom/qennnsad/aknkaksd/util/roomanim/c;

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
