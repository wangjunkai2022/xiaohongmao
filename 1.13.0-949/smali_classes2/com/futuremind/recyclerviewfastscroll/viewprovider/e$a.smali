.class Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;-><init>(Landroid/view/View;IIFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;


# direct methods
.method constructor <init>(Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$a;->c:Lcom/futuremind/recyclerviewfastscroll/viewprovider/e;

    iput-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$a;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-boolean p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$a;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$a;->b:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/e$a;->a:Z

    return-void
.end method
