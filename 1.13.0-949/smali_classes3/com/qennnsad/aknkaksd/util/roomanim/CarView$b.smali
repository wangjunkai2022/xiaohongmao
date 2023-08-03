.class Lcom/qennnsad/aknkaksd/util/roomanim/CarView$b;
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
.field final synthetic a:Landroid/animation/AnimatorSet;

.field final synthetic b:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/roomanim/CarView;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$b;->b:Lcom/qennnsad/aknkaksd/util/roomanim/CarView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$b;->a:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/CarView$b;->a:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

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
