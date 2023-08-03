.class Lcom/lljjcoder/style/cityjd/JDCityPicker$3;
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

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$302(Lcom/lljjcoder/style/cityjd/JDCityPicker;I)I

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$400(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$500(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$400(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$400(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->getSelectedPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$500(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$400(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->getSelectedPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$600(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    .line 7
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$700(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    return-void
.end method
