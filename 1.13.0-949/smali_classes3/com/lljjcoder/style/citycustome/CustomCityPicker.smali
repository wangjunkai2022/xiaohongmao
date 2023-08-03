.class public Lcom/lljjcoder/style/citycustome/CustomCityPicker;
.super Ljava/lang/Object;
.source "CustomCityPicker.java"

# interfaces
.implements Lcom/lljjcoder/style/citypickerview/widget/CanShow;
.implements Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;


# instance fields
.field private config:Lcom/lljjcoder/citywheel/CustomConfig;

.field private listener:Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mRelativeTitleBg:Landroid/widget/RelativeLayout;

.field private mTvCancel:Landroid/widget/TextView;

.field private mTvOK:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

.field private mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

.field private mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

.field private popview:Landroid/view/View;

.field private popwindow:Landroid/widget/PopupWindow;

.field private type:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->listener:Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;

    .line 3
    sget-object v0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO_CITY_DIS:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->type:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    .line 4
    iput-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/citywheel/CustomConfig;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->listener:Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/citywheel/CustomConfig$WheelType;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->type:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    return-object p0
.end method

.method private initView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8bbe\u7f6e\u76f8\u5173\u7684config"

    invoke-static {v0, v1}, Lcom/lljjcoder/style/citylist/Toast/ToastUtils;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    sget v1, Lcom/lljjcoder/style/citypickerview/R$layout;->pop_citypicker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popview:Landroid/view/View;

    .line 5
    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->id_province:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    .line 6
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->id_city:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    .line 7
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->id_district:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    .line 8
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->rl_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mRelativeTitleBg:Landroid/widget/RelativeLayout;

    .line 9
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->tv_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvOK:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvTitle:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popview:Landroid/view/View;

    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->tv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvCancel:Landroid/widget/TextView;

    .line 12
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popview:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popwindow:Landroid/widget/PopupWindow;

    .line 13
    sget v1, Lcom/lljjcoder/style/citypickerview/R$style;->AnimBottom:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 14
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popwindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popwindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 16
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popwindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 17
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 18
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popwindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/lljjcoder/style/citycustome/CustomCityPicker$1;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker$1;-><init>(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 19
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getWheelType()Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->type:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    .line 20
    invoke-direct {p0, v0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->setWheelShowLevel(Lcom/lljjcoder/citywheel/CustomConfig$WheelType;)V

    .line 21
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitleBackgroundColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "#"

    if-nez v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitleBackgroundColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mRelativeTitleBg:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v2}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitleBackgroundColorStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mRelativeTitleBg:Landroid/widget/RelativeLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitleBackgroundColorStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 25
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v2}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitleTextSize()I

    move-result v0

    if-lez v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v2}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitleTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitleTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 30
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitleTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v2}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitleTextColorStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CustomConfig;->getTitleTextColorStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getConfirmTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 34
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getConfirmTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvOK:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v2}, Lcom/lljjcoder/citywheel/CustomConfig;->getConfirmTextColorStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 36
    :cond_7
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvOK:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v3}, Lcom/lljjcoder/citywheel/CustomConfig;->getConfirmTextColorStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getConfirmText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvOK:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v2}, Lcom/lljjcoder/citywheel/CustomConfig;->getConfirmText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_9
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getConfirmTextSize()I

    move-result v0

    if-lez v0, :cond_a

    .line 40
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvOK:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v2}, Lcom/lljjcoder/citywheel/CustomConfig;->getConfirmTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    :cond_a
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCancelTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 42
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCancelTextColorStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 43
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getCancelTextColorStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 44
    :cond_b
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvCancel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getCancelTextColorStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCancelText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 46
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getCancelText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_d
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCancelTextSize()I

    move-result v0

    if-lez v0, :cond_e

    .line 48
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getCancelTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    :cond_e
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->addChangingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;)V

    .line 50
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->addChangingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;)V

    .line 51
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, p0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->addChangingListener(Lcom/lljjcoder/style/citypickerview/widget/wheel/OnWheelChangedListener;)V

    .line 52
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/lljjcoder/style/citycustome/CustomCityPicker$2;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker$2;-><init>(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mTvOK:Landroid/widget/TextView;

    new-instance v1, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker$3;-><init>(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->isShowBackground()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mContext:Landroid/content/Context;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/lljjcoder/utils/utils;->setBackgroundAlpha(Landroid/content/Context;F)V

    .line 56
    :cond_f
    invoke-direct {p0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->setUpData()V

    return-void
.end method

.method private setUpData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCityDataList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getDefaultProvinceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lljjcoder/bean/CustomCityData;

    invoke-virtual {v3}, Lcom/lljjcoder/bean/CustomCityData;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v4}, Lcom/lljjcoder/citywheel/CustomConfig;->getDefaultProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 5
    :goto_1
    new-instance v3, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;

    iget-object v4, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Lcom/lljjcoder/citywheel/CityConfig;->NONE:Ljava/lang/Integer;

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v0

    if-eq v0, v4, :cond_3

    .line 7
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 8
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    goto :goto_2

    .line 9
    :cond_3
    sget v0, Lcom/lljjcoder/style/citypickerview/R$layout;->default_item_city:I

    invoke-virtual {v3, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 10
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->default_item_city_name_tv:I

    invoke-virtual {v3, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    .line 11
    :goto_2
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setViewAdapter(Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;)V

    if-eq v2, v1, :cond_4

    .line 12
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(I)V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getVisibleItems()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setVisibleItems(I)V

    .line 14
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getVisibleItems()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setVisibleItems(I)V

    .line 15
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getVisibleItems()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setVisibleItems(I)V

    .line 16
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->isProvinceCyclic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCyclic(Z)V

    .line 17
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->isCityCyclic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCyclic(Z)V

    .line 18
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->isDistrictCyclic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCyclic(Z)V

    .line 19
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->isDrawShadows()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setDrawShadows(Z)V

    .line 20
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->isDrawShadows()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setDrawShadows(Z)V

    .line 21
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->isDrawShadows()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setDrawShadows(Z)V

    .line 22
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getLineColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineColorStr(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getLineHeigh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineWidth(I)V

    .line 24
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getLineColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineColorStr(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getLineHeigh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineWidth(I)V

    .line 26
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getLineColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineColorStr(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getLineHeigh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setLineWidth(I)V

    .line 28
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->type:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    sget-object v1, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO_CITY:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO_CITY_DIS:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    if-ne v0, v1, :cond_6

    .line 29
    :cond_5
    invoke-direct {p0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->updateCities()V

    :cond_6
    return-void
.end method

.method private setWheelShowLevel(Lcom/lljjcoder/citywheel/CustomConfig$WheelType;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO_CITY:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateAreas()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getCurrentItem()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getCurrentItem()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v2}, Lcom/lljjcoder/citywheel/CustomConfig;->getCityDataList()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/bean/CustomCityData;

    .line 5
    invoke-virtual {v0}, Lcom/lljjcoder/bean/CustomCityData;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/bean/CustomCityData;

    .line 8
    invoke-virtual {v0}, Lcom/lljjcoder/bean/CustomCityData;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getDefaultDistrict()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lljjcoder/bean/CustomCityData;

    invoke-virtual {v4}, Lcom/lljjcoder/bean/CustomCityData;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v5}, Lcom/lljjcoder/citywheel/CustomConfig;->getDefaultDistrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    .line 12
    :goto_1
    new-instance v4, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;

    iget-object v5, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 13
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v0

    sget-object v5, Lcom/lljjcoder/citywheel/CityConfig;->NONE:Ljava/lang/Integer;

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    .line 14
    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v0

    if-eq v0, v5, :cond_4

    .line 15
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 16
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    goto :goto_2

    .line 17
    :cond_4
    sget v0, Lcom/lljjcoder/style/citypickerview/R$layout;->default_item_city:I

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 18
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->default_item_city_name_tv:I

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    :goto_2
    if-eq v3, v1, :cond_5

    .line 19
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(I)V

    goto :goto_3

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(I)V

    .line 21
    :goto_3
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewDistrict:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setViewAdapter(Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private updateCities()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->getCurrentItem()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getCityDataList()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/bean/CustomCityData;

    .line 4
    invoke-virtual {v0}, Lcom/lljjcoder/bean/CustomCityData;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v1}, Lcom/lljjcoder/citywheel/CustomConfig;->getDefaultCityName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lljjcoder/bean/CustomCityData;

    invoke-virtual {v4}, Lcom/lljjcoder/bean/CustomCityData;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v5}, Lcom/lljjcoder/citywheel/CustomConfig;->getDefaultCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 8
    :goto_1
    new-instance v4, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;

    iget-object v5, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v0

    sget-object v5, Lcom/lljjcoder/citywheel/CityConfig;->NONE:Ljava/lang/Integer;

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v0

    if-eq v0, v5, :cond_3

    .line 10
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemLayout()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 11
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->getCustomItemTextViewId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    goto :goto_2

    .line 12
    :cond_3
    sget v0, Lcom/lljjcoder/style/citypickerview/R$layout;->default_item_city:I

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    .line 13
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->default_item_city_name_tv:I

    invoke-virtual {v4, v0}, Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    .line 14
    :goto_2
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setViewAdapter(Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;)V

    if-eq v3, v1, :cond_4

    .line 15
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(I)V

    goto :goto_3

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setCurrentItem(I)V

    .line 17
    :goto_3
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    invoke-virtual {v0, v4}, Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;->setViewAdapter(Lcom/lljjcoder/style/citypickerview/widget/wheel/adapters/WheelViewAdapter;)V

    .line 18
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->type:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    sget-object v1, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO_CITY_DIS:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    if-ne v0, v1, :cond_5

    .line 19
    invoke-direct {p0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->updateAreas()V

    :cond_5
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popwindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onChanged(Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewProvince:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    if-ne p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->updateCities()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->mViewCity:Lcom/lljjcoder/style/citypickerview/widget/wheel/WheelView;

    if-ne p1, p2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->updateAreas()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCustomConfig(Lcom/lljjcoder/citywheel/CustomConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->config:Lcom/lljjcoder/citywheel/CustomConfig;

    return-void
.end method

.method public setOnCustomCityPickerItemClickListener(Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->listener:Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;

    return-void
.end method

.method public showCityPicker()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->initView()V

    .line 2
    invoke-virtual {p0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popwindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->popview:Landroid/view/View;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method
