.class Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;
.super Ljava/lang/Object;
.source "CustomCityPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citycustome/CustomCityPicker;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$300(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    move-result-object p1

    sget-object v0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$400(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getCurrentItem()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$000(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/citywheel/CustomConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCityDataList()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/bean/CustomCityData;

    .line 5
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$200(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;

    move-result-object v0

    new-instance v1, Lcom/lljjcoder/bean/CustomCityData;

    invoke-direct {v1}, Lcom/lljjcoder/bean/CustomCityData;-><init>()V

    new-instance v2, Lcom/lljjcoder/bean/CustomCityData;

    invoke-direct {v2}, Lcom/lljjcoder/bean/CustomCityData;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;->onSelected(Lcom/lljjcoder/bean/CustomCityData;Lcom/lljjcoder/bean/CustomCityData;Lcom/lljjcoder/bean/CustomCityData;)V

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$300(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    move-result-object p1

    sget-object v0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO_CITY:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$400(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getCurrentItem()I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$000(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/citywheel/CustomConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCityDataList()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/bean/CustomCityData;

    .line 10
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$500(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getCurrentItem()I

    move-result v0

    .line 11
    invoke-virtual {p1}, Lcom/lljjcoder/bean/CustomCityData;->getList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/bean/CustomCityData;

    .line 13
    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {v1}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$200(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;

    move-result-object v1

    new-instance v2, Lcom/lljjcoder/bean/CustomCityData;

    invoke-direct {v2}, Lcom/lljjcoder/bean/CustomCityData;-><init>()V

    invoke-virtual {v1, p1, v0, v2}, Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;->onSelected(Lcom/lljjcoder/bean/CustomCityData;Lcom/lljjcoder/bean/CustomCityData;Lcom/lljjcoder/bean/CustomCityData;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$300(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    move-result-object p1

    sget-object v0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO_CITY_DIS:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    if-ne p1, v0, :cond_5

    .line 15
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$400(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getCurrentItem()I

    move-result p1

    .line 16
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$000(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/citywheel/CustomConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCityDataList()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/bean/CustomCityData;

    .line 18
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$500(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getCurrentItem()I

    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/lljjcoder/bean/CustomCityData;->getList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 20
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/bean/CustomCityData;

    .line 21
    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {v1}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$600(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getCurrentItem()I

    move-result v1

    .line 22
    invoke-virtual {v0}, Lcom/lljjcoder/bean/CustomCityData;->getList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    .line 23
    :cond_4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lljjcoder/bean/CustomCityData;

    .line 24
    iget-object v2, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {v2}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$200(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;->onSelected(Lcom/lljjcoder/bean/CustomCityData;Lcom/lljjcoder/bean/CustomCityData;Lcom/lljjcoder/bean/CustomCityData;)V

    .line 25
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-virtual {p1}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->hide()V

    return-void
.end method
