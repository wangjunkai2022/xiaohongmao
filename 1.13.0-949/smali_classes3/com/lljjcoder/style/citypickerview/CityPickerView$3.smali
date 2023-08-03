.class Lcom/lljjcoder/style/citypickerview/CityPickerView$3;
.super Ljava/lang/Object;
.source "CityPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citypickerview/CityPickerView;->initCityPickerPopwindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/citypickerview/CityPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {p1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$300(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityParseHelper;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {p1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$000(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lljjcoder/citywheel/CityConfig;->getWheelType()Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    move-result-object p1

    sget-object v0, Lcom/lljjcoder/citywheel/CityConfig$WheelType;->PRO:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {p1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$200(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/Interface/OnCityItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {v0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$300(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityParseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBean()Lcom/lljjcoder/bean/ProvinceBean;

    move-result-object v0

    new-instance v1, Lcom/lljjcoder/bean/CityBean;

    invoke-direct {v1}, Lcom/lljjcoder/bean/CityBean;-><init>()V

    new-instance v2, Lcom/lljjcoder/bean/DistrictBean;

    invoke-direct {v2}, Lcom/lljjcoder/bean/DistrictBean;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/lljjcoder/Interface/OnCityItemClickListener;->onSelected(Lcom/lljjcoder/bean/ProvinceBean;Lcom/lljjcoder/bean/CityBean;Lcom/lljjcoder/bean/DistrictBean;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {p1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$000(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lljjcoder/citywheel/CityConfig;->getWheelType()Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    move-result-object p1

    sget-object v0, Lcom/lljjcoder/citywheel/CityConfig$WheelType;->PRO_CITY:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {p1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$200(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/Interface/OnCityItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {v0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$300(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityParseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBean()Lcom/lljjcoder/bean/ProvinceBean;

    move-result-object v0

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    .line 6
    invoke-static {v1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$300(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityParseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getCityBean()Lcom/lljjcoder/bean/CityBean;

    move-result-object v1

    new-instance v2, Lcom/lljjcoder/bean/DistrictBean;

    invoke-direct {v2}, Lcom/lljjcoder/bean/DistrictBean;-><init>()V

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lcom/lljjcoder/Interface/OnCityItemClickListener;->onSelected(Lcom/lljjcoder/bean/ProvinceBean;Lcom/lljjcoder/bean/CityBean;Lcom/lljjcoder/bean/DistrictBean;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {p1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$200(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/Interface/OnCityItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {v0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$300(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityParseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBean()Lcom/lljjcoder/bean/ProvinceBean;

    move-result-object v0

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    .line 9
    invoke-static {v1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$300(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityParseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getCityBean()Lcom/lljjcoder/bean/CityBean;

    move-result-object v1

    iget-object v2, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    .line 10
    invoke-static {v2}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$300(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityParseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lljjcoder/citywheel/CityParseHelper;->getDistrictBean()Lcom/lljjcoder/bean/DistrictBean;

    move-result-object v2

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lcom/lljjcoder/Interface/OnCityItemClickListener;->onSelected(Lcom/lljjcoder/bean/ProvinceBean;Lcom/lljjcoder/bean/CityBean;Lcom/lljjcoder/bean/DistrictBean;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {p1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$200(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/Interface/OnCityItemClickListener;

    move-result-object p1

    new-instance v0, Lcom/lljjcoder/bean/ProvinceBean;

    invoke-direct {v0}, Lcom/lljjcoder/bean/ProvinceBean;-><init>()V

    new-instance v1, Lcom/lljjcoder/bean/CityBean;

    invoke-direct {v1}, Lcom/lljjcoder/bean/CityBean;-><init>()V

    new-instance v2, Lcom/lljjcoder/bean/DistrictBean;

    invoke-direct {v2}, Lcom/lljjcoder/bean/DistrictBean;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/lljjcoder/Interface/OnCityItemClickListener;->onSelected(Lcom/lljjcoder/bean/ProvinceBean;Lcom/lljjcoder/bean/CityBean;Lcom/lljjcoder/bean/DistrictBean;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-virtual {p1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->hide()V

    return-void
.end method
