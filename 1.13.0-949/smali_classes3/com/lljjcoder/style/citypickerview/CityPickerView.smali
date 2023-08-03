.class public Lcom/lljjcoder/style/citypickerview/CityPickerView;
.super Ljava/lang/Object;
.source "CityPickerView.java"

# interfaces
.implements Lcom/lljjcoder/style/citypickerview/widget/CanShow;
.implements Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private config:Lcom/lljjcoder/citywheel/CityConfig;

.field private context:Landroid/content/Context;

.field private mBaseListener:Lcom/lljjcoder/Interface/OnCityItemClickListener;

.field private mRelativeTitleBg:Landroid/widget/RelativeLayout;

.field private mTvCancel:Landroid/widget/TextView;

.field private mTvOK:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

.field private mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

.field private mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

.field private parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

.field private popview:Landroid/view/View;

.field private popwindow:Landroid/widget/PopupWindow;

.field private proArra:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/ProvinceBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "citypicker_log"

    .line 2
    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityConfig;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/Interface/OnCityItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mBaseListener:Lcom/lljjcoder/Interface/OnCityItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityParseHelper;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    return-object p0
.end method

.method private getProArrData(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/ProvinceBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/ProvinceBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {p1}, Lcom/lljjcoder/citywheel/CityConfig;->isShowGAT()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->proArra:Ljava/util/List;

    .line 9
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->proArra:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->proArra:Ljava/util/List;

    return-object p1
.end method

.method private initCityPickerPopwindow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-direct {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBeanArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->context:Landroid/content/Context;

    const-string v1, "\u8bf7\u5728Activity\u4e2d\u589e\u52a0init\u64cd\u4f5c"

    invoke-static {v0, v1}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7
    sget v1, Lcom/lljjcoder/style/citypickerview/R$layout;->pop_citypicker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popview:Landroid/view/View;

    .line 8
    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->id_province:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    .line 9
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->id_city:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    .line 10
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->id_district:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    .line 11
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->rl_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mRelativeTitleBg:Landroid/widget/RelativeLayout;

    .line 12
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->tv_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvOK:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvTitle:Landroid/widget/TextView;

    .line 14
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvCancel:Landroid/widget/TextView;

    .line 15
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popview:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popwindow:Landroid/widget/PopupWindow;

    .line 16
    sget v1, Lcom/lljjcoder/style/citypickerview/R$style;->AnimBottom:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 17
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popwindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popwindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 19
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popwindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 20
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 21
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popwindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/lljjcoder/style/citypickerview/CityPickerView$1;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView$1;-><init>(Lcom/lljjcoder/style/citypickerview/CityPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 22
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getTitleBackgroundColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "#"

    if-nez v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getTitleBackgroundColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mRelativeTitleBg:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getTitleBackgroundColorStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mRelativeTitleBg:Landroid/widget/RelativeLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v4}, Lcom/lljjcoder/citywheel/CityConfig;->getTitleBackgroundColorStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 26
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 27
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getTitleTextSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 29
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getTitleTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getTitleTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 31
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getTitleTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getTitleTextColorStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 33
    :cond_6
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvTitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v4}, Lcom/lljjcoder/citywheel/CityConfig;->getTitleTextColorStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getConfirmTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getConfirmTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvOK:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getConfirmTextColorStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvOK:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v4}, Lcom/lljjcoder/citywheel/CityConfig;->getConfirmTextColorStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getConfirmText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 39
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvOK:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getConfirmText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_a
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getConfirmTextSize()I

    move-result v0

    if-lez v0, :cond_b

    .line 41
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvOK:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getConfirmTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getCancelTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 43
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getCancelTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 44
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getCancelTextColorStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 45
    :cond_c
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvCancel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getCancelTextColorStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getCancelText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 47
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getCancelText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_e
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getCancelTextSize()I

    move-result v0

    if-lez v0, :cond_f

    .line 49
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getCancelTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    :cond_f
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getWheelType()Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    move-result-object v0

    sget-object v1, Lcom/lljjcoder/citywheel/CityConfig$WheelType;->PRO:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    const/16 v3, 0x8

    if-ne v0, v1, :cond_10

    .line 51
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 53
    :cond_10
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getWheelType()Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    move-result-object v0

    sget-object v1, Lcom/lljjcoder/citywheel/CityConfig$WheelType;->PRO_CITY:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    if-ne v0, v1, :cond_11

    .line 54
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 55
    :cond_11
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_4
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->addChangingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;)V

    .line 59
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->addChangingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;)V

    .line 60
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->addChangingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;)V

    .line 61
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/lljjcoder/style/citypickerview/CityPickerView$2;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView$2;-><init>(Lcom/lljjcoder/style/citypickerview/CityPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mTvOK:Landroid/widget/TextView;

    new-instance v1, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView$3;-><init>(Lcom/lljjcoder/style/citypickerview/CityPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->setUpData()V

    .line 64
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->isShowBackground()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 65
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->context:Landroid/content/Context;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/lljjcoder/utils/utils;->setBackgroundAlpha(Landroid/content/Context;F)V

    :cond_12
    return-void

    .line 66
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "please set config first..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setUpData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBeenArray()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->getProArrData(Ljava/util/List;)Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getDefaultProvinceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->proArra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->proArra:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->proArra:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lljjcoder/bean/ProvinceBean;

    invoke-virtual {v2}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getDefaultProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 6
    :goto_1
    new-instance v2, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->proArra:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 7
    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v3, v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setViewAdapter(Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;)V

    .line 8
    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/lljjcoder/citywheel/CityConfig;->NONE:Ljava/lang/Integer;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v3

    if-eq v3, v4, :cond_3

    .line 9
    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 10
    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    goto :goto_2

    .line 11
    :cond_3
    sget v3, Lcom/lljjcoder/style/citypickerview/R$layout;->default_item_city:I

    invoke-virtual {v2, v3}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 12
    sget v3, Lcom/lljjcoder/style/citypickerview/R$id;->default_item_city_name_tv:I

    invoke-virtual {v2, v3}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    :goto_2
    if-eq v1, v0, :cond_4

    .line 13
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(I)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getVisibleItems()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setVisibleItems(I)V

    .line 15
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getVisibleItems()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setVisibleItems(I)V

    .line 16
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getVisibleItems()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setVisibleItems(I)V

    .line 17
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->isProvinceCyclic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCyclic(Z)V

    .line 18
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->isCityCyclic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCyclic(Z)V

    .line 19
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->isDistrictCyclic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCyclic(Z)V

    .line 20
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->isDrawShadows()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setDrawShadows(Z)V

    .line 21
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->isDrawShadows()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setDrawShadows(Z)V

    .line 22
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->isDrawShadows()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setDrawShadows(Z)V

    .line 23
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getLineColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineColorStr(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getLineHeigh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineWidth(I)V

    .line 25
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getLineColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineColorStr(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getLineHeigh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineWidth(I)V

    .line 27
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getLineColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineColorStr(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getLineHeigh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineWidth(I)V

    .line 29
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->updateCities()V

    .line 30
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->updateAreas()V

    :cond_5
    :goto_3
    return-void
.end method

.method private updateAreas()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getCurrentItem()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getPro_CityMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getCity_DisMap()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getWheelType()Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    move-result-object v1

    sget-object v2, Lcom/lljjcoder/citywheel/CityConfig$WheelType;->PRO_CITY:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    .line 4
    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getWheelType()Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    move-result-object v1

    sget-object v2, Lcom/lljjcoder/citywheel/CityConfig$WheelType;->PRO_CITY_DIS:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    if-ne v1, v2, :cond_9

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getPro_CityMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v2}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBean()Lcom/lljjcoder/bean/ProvinceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/bean/CityBean;

    .line 6
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v1, v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->setCityBean(Lcom/lljjcoder/bean/CityBean;)V

    .line 7
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getWheelType()Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    move-result-object v1

    sget-object v2, Lcom/lljjcoder/citywheel/CityConfig$WheelType;->PRO_CITY_DIS:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    if-ne v1, v2, :cond_9

    .line 8
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getCity_DisMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    .line 9
    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBean()Lcom/lljjcoder/bean/ProvinceBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lljjcoder/bean/CityBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v2}, Lcom/lljjcoder/citywheel/CityConfig;->getDefaultDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 12
    iget-object v5, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v5}, Lcom/lljjcoder/citywheel/CityConfig;->getDefaultDistrict()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lljjcoder/bean/DistrictBean;

    invoke-virtual {v6}, Lcom/lljjcoder/bean/DistrictBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    .line 13
    :goto_1
    new-instance v5, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;

    iget-object v6, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->context:Landroid/content/Context;

    invoke-direct {v5, v6, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 14
    iget-object v6, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v6}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/lljjcoder/citywheel/CityConfig;->NONE:Ljava/lang/Integer;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    .line 15
    invoke-virtual {v6}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v6

    if-eq v6, v7, :cond_5

    .line 16
    iget-object v6, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v6}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 17
    iget-object v6, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v6}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    goto :goto_2

    .line 18
    :cond_5
    sget v6, Lcom/lljjcoder/style/citypickerview/R$layout;->default_item_city:I

    invoke-virtual {v5, v6}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 19
    sget v6, Lcom/lljjcoder/style/citypickerview/R$id;->default_item_city_name_tv:I

    invoke-virtual {v5, v6}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    .line 20
    :goto_2
    iget-object v6, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v6, v5}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setViewAdapter(Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;)V

    const/4 v5, 0x0

    .line 21
    iget-object v6, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v6}, Lcom/lljjcoder/citywheel/CityParseHelper;->getDisMap()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_6

    return-void

    :cond_6
    if-eq v3, v2, :cond_7

    .line 22
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(I)V

    .line 23
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getDisMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBean()Lcom/lljjcoder/bean/ProvinceBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Lcom/lljjcoder/bean/CityBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getDefaultDistrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/lljjcoder/bean/DistrictBean;

    goto :goto_3

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(I)V

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 28
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/lljjcoder/bean/DistrictBean;

    .line 29
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v0, v5}, Lcom/lljjcoder/citywheel/CityParseHelper;->setDistrictBean(Lcom/lljjcoder/bean/DistrictBean;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private updateCities()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getCurrentItem()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->proArra:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/bean/ProvinceBean;

    .line 4
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v1, v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->setProvinceBean(Lcom/lljjcoder/bean/ProvinceBean;)V

    .line 5
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getPro_CityMap()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getPro_CityMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CityConfig;->getDefaultCityName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 9
    iget-object v4, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v4}, Lcom/lljjcoder/citywheel/CityConfig;->getDefaultCityName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lljjcoder/bean/CityBean;

    invoke-virtual {v5}, Lcom/lljjcoder/bean/CityBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    .line 10
    :goto_1
    new-instance v4, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;

    iget-object v5, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v0

    sget-object v5, Lcom/lljjcoder/citywheel/CityConfig;->NONE:Ljava/lang/Integer;

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v0

    if-eq v0, v5, :cond_5

    .line 12
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 13
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    goto :goto_2

    .line 14
    :cond_5
    sget v0, Lcom/lljjcoder/style/citypickerview/R$layout;->default_item_city:I

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 15
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->default_item_city_name_tv:I

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setViewAdapter(Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;)V

    if-eq v3, v1, :cond_6

    .line 17
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(I)V

    goto :goto_3

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(I)V

    .line 19
    :goto_3
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->updateAreas()V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->context:Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-direct {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    .line 3
    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBeanArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v0, p1}, Lcom/lljjcoder/citywheel/CityParseHelper;->initData(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onChanged(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    if-ne p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->updateCities()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    if-ne p1, p2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->updateAreas()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    if-ne p1, p2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getCity_DisMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {p1}, Lcom/lljjcoder/citywheel/CityParseHelper;->getCity_DisMap()Ljava/util/Map;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    .line 8
    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->getProvinceBean()Lcom/lljjcoder/bean/ProvinceBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityParseHelper;->getCityBean()Lcom/lljjcoder/bean/CityBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/bean/CityBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/bean/DistrictBean;

    .line 9
    iget-object p2, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->parseHelper:Lcom/lljjcoder/citywheel/CityParseHelper;

    invoke-virtual {p2, p1}, Lcom/lljjcoder/citywheel/CityParseHelper;->setDistrictBean(Lcom/lljjcoder/bean/DistrictBean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setConfig(Lcom/lljjcoder/citywheel/CityConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->config:Lcom/lljjcoder/citywheel/CityConfig;

    return-void
.end method

.method public setOnCityItemClickListener(Lcom/lljjcoder/Interface/OnCityItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->mBaseListener:Lcom/lljjcoder/Interface/OnCityItemClickListener;

    return-void
.end method

.method public showCityPicker()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->initCityPickerPopwindow()V

    .line 2
    invoke-virtual {p0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popwindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView;->popview:Landroid/view/View;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method
