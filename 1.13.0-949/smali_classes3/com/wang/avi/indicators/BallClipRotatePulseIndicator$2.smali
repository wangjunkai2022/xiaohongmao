.class Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;
.super Ljava/lang/Object;
.source "BallClipRotatePulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;


# direct methods
.method constructor <init>(Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->scaleFloat2:F

    .line 2
    iget-object p1, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;->this$0:Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;

    invoke-virtual {p1}, Lcom/wang/avi/Indicator;->postInvalidate()V

    return-void
.end method