.class public Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;
.super Ljava/lang/Object;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$c;,
        Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$b;
    }
.end annotation


# instance fields
.field protected final a:Landroid/view/View;

.field protected b:Landroid/animation/AnimatorSet;

.field protected c:Landroid/animation/AnimatorSet;

.field private d:F

.field private e:F


# direct methods
.method protected constructor <init>(Landroid/view/View;IIFFI)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "showAnimator",
            "hideAnimator",
            "pivotXRelative",
            "pivotYRelative",
            "hideDelay"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->a:Landroid/view/View;

    .line 3
    iput p4, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->d:F

    .line 4
    iput p5, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->e:F

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p3

    check-cast p3, Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->b:Landroid/animation/AnimatorSet;

    int-to-long p4, p6

    .line 6
    invoke-virtual {p3, p4, p5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 7
    iget-object p3, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->c:Landroid/animation/AnimatorSet;

    .line 9
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 10
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->b:Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$a;

    invoke-direct {p3, p0, p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$a;-><init>(Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->c()V

    .line 2
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->c()V

    .line 5
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->a:Landroid/view/View;

    iget v1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->d:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 2
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->a:Landroid/view/View;

    iget v1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;->e:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
