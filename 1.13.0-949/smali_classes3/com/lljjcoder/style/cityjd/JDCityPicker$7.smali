.class Lcom/lljjcoder/style/cityjd/JDCityPicker$7;
.super Ljava/lang/Object;
.source "JDCityPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/cityjd/JDCityPicker;->updateIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$7;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$7;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$300(Lcom/lljjcoder/style/cityjd/JDCityPicker;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$7;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1400(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1200(Lcom/lljjcoder/style/cityjd/JDCityPicker;Landroid/widget/TextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$7;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1300(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1200(Lcom/lljjcoder/style/cityjd/JDCityPicker;Landroid/widget/TextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$7;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1100(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1200(Lcom/lljjcoder/style/cityjd/JDCityPicker;Landroid/widget/TextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void
.end method
