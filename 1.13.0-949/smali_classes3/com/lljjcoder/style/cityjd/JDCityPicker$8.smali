.class Lcom/lljjcoder/style/cityjd/JDCityPicker$8;
.super Ljava/lang/Object;
.source "JDCityPicker.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/cityjd/JDCityPicker;->tabSelectedIndicatorAnimation(Landroid/widget/TextView;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

.field final synthetic val$params:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$8;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    iput-object p2, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$8;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$8;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$8;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1500(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$8;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
