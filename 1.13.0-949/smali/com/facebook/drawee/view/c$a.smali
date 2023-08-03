.class Lcom/facebook/drawee/view/c$a;
.super Ljava/lang/Object;
.source "DraweeTransition.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/view/c;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/drawee/drawable/s$b;

.field final synthetic b:Lcom/facebook/drawee/view/c;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/view/c;Lcom/facebook/drawee/drawable/s$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$scaleType"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/view/c$a;->b:Lcom/facebook/drawee/view/c;

    iput-object p2, p0, Lcom/facebook/drawee/view/c$a;->a:Lcom/facebook/drawee/drawable/s$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
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
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/view/c$a;->a:Lcom/facebook/drawee/drawable/s$b;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/s$b;->i(F)V

    return-void
.end method
