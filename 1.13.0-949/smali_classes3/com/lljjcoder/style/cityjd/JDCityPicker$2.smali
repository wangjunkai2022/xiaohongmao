.class Lcom/lljjcoder/style/cityjd/JDCityPicker$2;
.super Ljava/lang/Object;
.source "JDCityPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/cityjd/JDCityPicker;->initJDCityPickerPop()V
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

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$2;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$2;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$100(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$2;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$000(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/lljjcoder/utils/utils;->setBackgroundAlpha(Landroid/content/Context;F)V

    .line 3
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$2;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$200(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/Interface/OnCityItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$2;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$200(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/Interface/OnCityItemClickListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lljjcoder/Interface/OnCityItemClickListener;->onCancel()V

    :cond_0
    return-void
.end method
