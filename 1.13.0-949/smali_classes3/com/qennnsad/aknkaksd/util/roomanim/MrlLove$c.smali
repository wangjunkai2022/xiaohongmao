.class Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$c;
.super Ljava/lang/Object;
.source "MrlLove.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field final synthetic b:Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$c;->b:Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$c;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$c;->a:Landroid/view/View;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$c;->a:Landroid/view/View;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/MrlLove$c;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
