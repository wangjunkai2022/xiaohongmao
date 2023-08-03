.class public Lcom/lljjcoder/style/cityjd/JDCityPicker;
.super Ljava/lang/Object;
.source "JDCityPicker.java"


# instance fields
.field private areaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/DistrictBean;",
            ">;"
        }
    .end annotation
.end field

.field private cityConfig:Lcom/lljjcoder/style/cityjd/JDCityConfig;

.field private cityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/CityBean;",
            ">;"
        }
    .end annotation
.end field

.field private colorAlert:Ljava/lang/String;

.field private colorSelected:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mAreaAdapter:Lcom/lljjcoder/style/cityjd/AreaAdapter;

.field private mAreaTv:Landroid/widget/TextView;

.field private mBaseListener:Lcom/lljjcoder/Interface/OnCityItemClickListener;

.field private mCityAdapter:Lcom/lljjcoder/style/cityjd/CityAdapter;

.field private mCityListView:Landroid/widget/ListView;

.field private mCityTv:Landroid/widget/TextView;

.field private mCloseImg:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mProTv:Landroid/widget/TextView;

.field private mProvinceAdapter:Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

.field private mSelectedLine:Landroid/view/View;

.field private parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

.field private popview:Landroid/view/View;

.field private popwindow:Landroid/widget/PopupWindow;

.field private provinceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/ProvinceBean;",
            ">;"
        }
    .end annotation
.end field

.field private tabIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->provinceList:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->cityList:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->areaList:Ljava/util/List;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->tabIndex:I

    const-string v1, "#ff181c20"

    .line 6
    iput-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->colorSelected:Ljava/lang/String;

    const-string v1, "#ffff4444"

    .line 7
    iput-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->colorAlert:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->cityConfig:Lcom/lljjcoder/style/cityjd/JDCityConfig;

    .line 9
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;-><init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->hidePop()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lljjcoder/style/cityjd/JDCityPicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->selectedList(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/lljjcoder/style/cityjd/JDCityPicker;Landroid/widget/TextView;)Landroid/animation/AnimatorSet;
    .locals 0

    invoke-direct {p0, p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->tabSelectedIndicatorAnimation(Landroid/widget/TextView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mSelectedLine:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/lljjcoder/style/cityjd/JDCityPicker;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->provinceList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->cityList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/lljjcoder/style/cityjd/JDCityPicker;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->cityList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->areaList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/lljjcoder/style/cityjd/JDCityPicker;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->areaList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/lljjcoder/style/cityjd/JDCityPicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->updateTabsStyle(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/Interface/OnCityItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mBaseListener:Lcom/lljjcoder/Interface/OnCityItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lljjcoder/style/cityjd/JDCityPicker;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->tabIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/lljjcoder/style/cityjd/JDCityPicker;I)I
    .locals 0

    iput p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->tabIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/ProvinceAdapter;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProvinceAdapter:Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->updateTabVisible()V

    return-void
.end method

.method static synthetic access$700(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->updateIndicator()V

    return-void
.end method

.method static synthetic access$800(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/CityAdapter;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityAdapter:Lcom/lljjcoder/style/cityjd/CityAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/AreaAdapter;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaAdapter:Lcom/lljjcoder/style/cityjd/AreaAdapter;

    return-object p0
.end method

.method private callback(Lcom/lljjcoder/bean/DistrictBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->provinceList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProvinceAdapter:Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->getSelectedPosition()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->provinceList:Ljava/util/List;

    iget-object v3, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProvinceAdapter:Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    .line 4
    invoke-virtual {v3}, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->getSelectedPosition()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/bean/ProvinceBean;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->cityList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityAdapter:Lcom/lljjcoder/style/cityjd/CityAdapter;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/lljjcoder/style/cityjd/CityAdapter;->getSelectedPosition()I

    move-result v3

    if-eq v3, v1, :cond_1

    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->cityList:Ljava/util/List;

    iget-object v2, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityAdapter:Lcom/lljjcoder/style/cityjd/CityAdapter;

    .line 8
    invoke-virtual {v2}, Lcom/lljjcoder/style/cityjd/CityAdapter;->getSelectedPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/lljjcoder/bean/CityBean;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mBaseListener:Lcom/lljjcoder/Interface/OnCityItemClickListener;

    invoke-virtual {v1, v0, v2, p1}, Lcom/lljjcoder/Interface/OnCityItemClickListener;->onSelected(Lcom/lljjcoder/bean/ProvinceBean;Lcom/lljjcoder/bean/CityBean;Lcom/lljjcoder/bean/DistrictBean;)V

    .line 10
    invoke-direct {p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->hidePop()V

    return-void
.end method

.method private hidePop()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private initJDCityPickerPop()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->cityConfig:Lcom/lljjcoder/style/cityjd/JDCityConfig;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/lljjcoder/style/cityjd/JDCityConfig$Builder;

    invoke-direct {v0}, Lcom/lljjcoder/style/cityjd/JDCityConfig$Builder;-><init>()V

    sget-object v1, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;->PRO_CITY_DIS:Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/cityjd/JDCityConfig$Builder;->setJDCityShowType(Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;)Lcom/lljjcoder/style/cityjd/JDCityConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/style/cityjd/JDCityConfig$Builder;->build()Lcom/lljjcoder/style/cityjd/JDCityConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->cityConfig:Lcom/lljjcoder/style/cityjd/JDCityConfig;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->tabIndex:I

    .line 4
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-direct {v1}, Lcom/lljjcoder/citywheel/CityParseHelper;-><init>()V

    iput-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBeanArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->context:Landroid/content/Context;

    const-string v1, "\u8bf7\u8c03\u7528init\u65b9\u6cd5\u8fdb\u884c\u521d\u59cb\u5316\u76f8\u5173\u64cd\u4f5c"

    invoke-static {v0, v1}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 9
    sget v2, Lcom/lljjcoder/style/citypickerview/R$layout;->pop_jdcitypicker:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popview:Landroid/view/View;

    .line 10
    sget v2, Lcom/lljjcoder/style/citypickerview/R$id;->city_listview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityListView:Landroid/widget/ListView;

    .line 11
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popview:Landroid/view/View;

    sget v2, Lcom/lljjcoder/style/citypickerview/R$id;->province_tv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    .line 12
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popview:Landroid/view/View;

    sget v2, Lcom/lljjcoder/style/citypickerview/R$id;->city_tv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    .line 13
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popview:Landroid/view/View;

    sget v2, Lcom/lljjcoder/style/citypickerview/R$id;->area_tv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaTv:Landroid/widget/TextView;

    .line 14
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popview:Landroid/view/View;

    sget v2, Lcom/lljjcoder/style/citypickerview/R$id;->close_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCloseImg:Landroid/widget/ImageView;

    .line 15
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popview:Landroid/view/View;

    sget v2, Lcom/lljjcoder/style/citypickerview/R$id;->selected_line:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mSelectedLine:Landroid/view/View;

    .line 16
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popview:Landroid/view/View;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popwindow:Landroid/widget/PopupWindow;

    .line 17
    sget v2, Lcom/lljjcoder/style/citypickerview/R$style;->AnimBottom:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 18
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popwindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popwindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 20
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 21
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 22
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popwindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/lljjcoder/style/cityjd/JDCityPicker$1;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker$1;-><init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 23
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCloseImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/lljjcoder/style/cityjd/JDCityPicker$2;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker$2;-><init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    new-instance v1, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker$3;-><init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    new-instance v1, Lcom/lljjcoder/style/cityjd/JDCityPicker$4;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker$4;-><init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaTv:Landroid/widget/TextView;

    new-instance v1, Lcom/lljjcoder/style/cityjd/JDCityPicker$5;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker$5;-><init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityListView:Landroid/widget/ListView;

    new-instance v1, Lcom/lljjcoder/style/cityjd/JDCityPicker$6;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker$6;-><init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->context:Landroid/content/Context;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/lljjcoder/utils/utils;->setBackgroundAlpha(Landroid/content/Context;F)V

    .line 29
    invoke-direct {p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->updateIndicator()V

    .line 30
    invoke-direct {p0, v4}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->updateTabsStyle(I)V

    .line 31
    invoke-direct {p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->setProvinceListData()V

    return-void
.end method

.method private isShow()Z
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method private selectedList(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->tabIndex:I

    const-string v1, "\u8bf7\u9009\u62e9"

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    const/4 v4, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaAdapter:Lcom/lljjcoder/style/cityjd/AreaAdapter;

    invoke-virtual {v0, p1}, Lcom/lljjcoder/style/cityjd/AreaAdapter;->getItem(I)Lcom/lljjcoder/bean/DistrictBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    invoke-direct {p0, p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->callback(Lcom/lljjcoder/bean/DistrictBean;)V

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityAdapter:Lcom/lljjcoder/style/cityjd/CityAdapter;

    invoke-virtual {v0, p1}, Lcom/lljjcoder/style/cityjd/CityAdapter;->getItem(I)Lcom/lljjcoder/bean/CityBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v3, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lljjcoder/bean/CityBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityAdapter:Lcom/lljjcoder/style/cityjd/CityAdapter;

    invoke-virtual {v1, p1}, Lcom/lljjcoder/style/cityjd/CityAdapter;->updateSelectedPosition(I)V

    .line 8
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityAdapter:Lcom/lljjcoder/style/cityjd/CityAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->cityConfig:Lcom/lljjcoder/style/cityjd/JDCityConfig;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/lljjcoder/style/cityjd/JDCityConfig;->getShowType()Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    move-result-object p1

    sget-object v1, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;->PRO_CITY:Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    if-ne p1, v1, :cond_2

    .line 10
    new-instance p1, Lcom/lljjcoder/bean/DistrictBean;

    invoke-direct {p1}, Lcom/lljjcoder/bean/DistrictBean;-><init>()V

    invoke-direct {p0, p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->callback(Lcom/lljjcoder/bean/DistrictBean;)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Lcom/lljjcoder/style/cityjd/AreaAdapter;

    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/lljjcoder/bean/CityBean;->getCityList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/lljjcoder/style/cityjd/AreaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaAdapter:Lcom/lljjcoder/style/cityjd/AreaAdapter;

    .line 12
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/lljjcoder/bean/CityBean;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProvinceAdapter:Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    invoke-virtual {v0, p1}, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->getItem(I)Lcom/lljjcoder/bean/ProvinceBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v4, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v2, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProvinceAdapter:Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    invoke-virtual {v1, p1}, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->updateSelectedPosition(I)V

    .line 17
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProvinceAdapter:Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 18
    new-instance p1, Lcom/lljjcoder/style/cityjd/CityAdapter;

    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/lljjcoder/bean/ProvinceBean;->getCityList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/lljjcoder/style/cityjd/CityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityAdapter:Lcom/lljjcoder/style/cityjd/CityAdapter;

    .line 19
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/lljjcoder/bean/ProvinceBean;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private setProvinceListData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBeanArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->provinceList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->provinceList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProvinceAdapter:Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    .line 4
    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->context:Landroid/content/Context;

    const-string v1, "\u89e3\u6790\u672c\u5730\u57ce\u5e02\u6570\u636e\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private tabSelectedIndicatorAnimation(Landroid/widget/TextView;)Landroid/animation/AnimatorSet;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mSelectedLine:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getX()F

    move-result v3

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "X"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mSelectedLine:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    new-array v3, v1, [I

    .line 3
    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    aput v6, v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    aput p1, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4
    new-instance v3, Lcom/lljjcoder/style/cityjd/JDCityPicker$8;

    invoke-direct {v3, p0, v2}, Lcom/lljjcoder/style/cityjd/JDCityPicker$8;-><init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    new-instance v3, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object p1, v1, v5

    .line 7
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v2
.end method

.method private updateIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popview:Landroid/view/View;

    new-instance v1, Lcom/lljjcoder/style/cityjd/JDCityPicker$7;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker$7;-><init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateTabVisible()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->provinceList:Ljava/util/List;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->cityList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->areaList:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/16 v2, 0x8

    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateTabsStyle(I)V
    .locals 3

    const/4 v0, -0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->colorSelected:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->colorSelected:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->colorAlert:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->colorSelected:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->colorAlert:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->colorAlert:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->colorAlert:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mProTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mCityTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mAreaTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->context:Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-direct {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    .line 3
    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBeanArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v0, p1}, Lcom/lljjcoder/citywheel/CityParseHelper;->initData(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setConfig(Lcom/lljjcoder/style/cityjd/JDCityConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->cityConfig:Lcom/lljjcoder/style/cityjd/JDCityConfig;

    return-void
.end method

.method public setOnCityItemClickListener(Lcom/lljjcoder/Interface/OnCityItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->mBaseListener:Lcom/lljjcoder/Interface/OnCityItemClickListener;

    return-void
.end method

.method public showCityPicker()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->initJDCityPickerPop()V

    .line 2
    invoke-direct {p0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popwindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker;->popview:Landroid/view/View;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method
