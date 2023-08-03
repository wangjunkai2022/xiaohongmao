.class public Lcom/lljjcoder/citywheel/CityConfig$Builder;
.super Ljava/lang/Object;
.source "CityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lljjcoder/citywheel/CityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cancelText:Ljava/lang/String;

.field private cancelTextColorStr:Ljava/lang/String;

.field private cancelTextSize:I

.field private confirmText:Ljava/lang/String;

.field private confirmTextColorStr:Ljava/lang/String;

.field private confirmTextSize:I

.field private customItemLayout:Ljava/lang/Integer;

.field private customItemTextViewId:Ljava/lang/Integer;

.field private defaultCityName:Ljava/lang/String;

.field private defaultDistrict:Ljava/lang/String;

.field private defaultProvinceName:Ljava/lang/String;

.field private drawShadows:Z

.field private isCityCyclic:Z

.field private isDistrictCyclic:Z

.field private isProvinceCyclic:Z

.field private isShowBackground:Z

.field private lineColor:Ljava/lang/String;

.field private lineHeigh:I

.field private mTitle:Ljava/lang/String;

.field private mWheelType:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

.field private showGAT:Z

.field private titleBackgroundColorStr:Ljava/lang/String;

.field private titleTextColorStr:Ljava/lang/String;

.field private titleTextSize:I

.field private visibleItems:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->visibleItems:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isProvinceCyclic:Z

    .line 4
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isCityCyclic:Z

    .line 5
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isDistrictCyclic:Z

    const-string v1, "#000000"

    .line 6
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->cancelTextColorStr:Ljava/lang/String;

    const-string v1, "\u53d6\u6d88"

    .line 7
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->cancelText:Ljava/lang/String;

    const/16 v1, 0x10

    .line 8
    iput v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->cancelTextSize:I

    const-string v2, "#0000FF"

    .line 9
    iput-object v2, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->confirmTextColorStr:Ljava/lang/String;

    const-string v2, "\u786e\u5b9a"

    .line 10
    iput-object v2, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->confirmText:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->confirmTextSize:I

    const-string v1, "\u9009\u62e9\u5730\u533a"

    .line 12
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->mTitle:Ljava/lang/String;

    const-string v1, "#E9E9E9"

    .line 13
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->titleBackgroundColorStr:Ljava/lang/String;

    const-string v1, "#585858"

    .line 14
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->titleTextColorStr:Ljava/lang/String;

    const/16 v1, 0x12

    .line 15
    iput v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->titleTextSize:I

    const-string v1, "\u6d59\u6c5f"

    .line 16
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->defaultProvinceName:Ljava/lang/String;

    const-string v1, "\u676d\u5dde"

    .line 17
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->defaultCityName:Ljava/lang/String;

    const-string v1, "\u6ee8\u6c5f\u533a"

    .line 18
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->defaultDistrict:Ljava/lang/String;

    .line 19
    sget-object v1, Lcom/lljjcoder/citywheel/CityConfig$WheelType;->PRO_CITY_DIS:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->mWheelType:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    .line 20
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isShowBackground:Z

    .line 21
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->drawShadows:Z

    const-string v0, "#C7C7C7"

    .line 22
    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->lineColor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->showGAT:Z

    const/4 v0, 0x3

    .line 24
    iput v0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->lineHeigh:I

    return-void
.end method

.method static synthetic access$000(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->titleBackgroundColorStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/lljjcoder/citywheel/CityConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->visibleItems:I

    return p0
.end method

.method static synthetic access$1100(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isProvinceCyclic:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isDistrictCyclic:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isCityCyclic:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->defaultDistrict:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->defaultCityName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->defaultProvinceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Lcom/lljjcoder/citywheel/CityConfig$WheelType;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->mWheelType:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isShowBackground:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->customItemLayout:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->titleTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->customItemTextViewId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->drawShadows:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->lineColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/lljjcoder/citywheel/CityConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->lineHeigh:I

    return p0
.end method

.method static synthetic access$2400(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->showGAT:Z

    return p0
.end method

.method static synthetic access$300(Lcom/lljjcoder/citywheel/CityConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->titleTextSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->cancelTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->cancelText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lljjcoder/citywheel/CityConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->cancelTextSize:I

    return p0
.end method

.method static synthetic access$700(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->confirmTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->confirmText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lljjcoder/citywheel/CityConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->confirmTextSize:I

    return p0
.end method


# virtual methods
.method public build()Lcom/lljjcoder/citywheel/CityConfig;
    .locals 1

    new-instance v0, Lcom/lljjcoder/citywheel/CityConfig;

    invoke-direct {v0, p0}, Lcom/lljjcoder/citywheel/CityConfig;-><init>(Lcom/lljjcoder/citywheel/CityConfig$Builder;)V

    return-object v0
.end method

.method public cancelText(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->cancelText:Ljava/lang/String;

    return-object p0
.end method

.method public cancelTextColor(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->cancelTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method public cancelTextSize(I)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->cancelTextSize:I

    return-object p0
.end method

.method public city(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->defaultCityName:Ljava/lang/String;

    return-object p0
.end method

.method public cityCyclic(Z)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isCityCyclic:Z

    return-object p0
.end method

.method public confirTextColor(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->confirmTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method public confirmText(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->confirmText:Ljava/lang/String;

    return-object p0
.end method

.method public confirmTextSize(I)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->confirmTextSize:I

    return-object p0
.end method

.method public district(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->defaultDistrict:Ljava/lang/String;

    return-object p0
.end method

.method public districtCyclic(Z)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isDistrictCyclic:Z

    return-object p0
.end method

.method public drawShadows(Z)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->drawShadows:Z

    return-object p0
.end method

.method public province(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->defaultProvinceName:Ljava/lang/String;

    return-object p0
.end method

.method public provinceCyclic(Z)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isProvinceCyclic:Z

    return-object p0
.end method

.method public setCityWheelType(Lcom/lljjcoder/citywheel/CityConfig$WheelType;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->mWheelType:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    return-object p0
.end method

.method public setCustomItemLayout(Ljava/lang/Integer;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->customItemLayout:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCustomItemTextViewId(Ljava/lang/Integer;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->customItemTextViewId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setLineColor(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->lineColor:Ljava/lang/String;

    return-object p0
.end method

.method public setLineHeigh(I)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->lineHeigh:I

    return-object p0
.end method

.method public setShowGAT(Z)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->showGAT:Z

    return-object p0
.end method

.method public showBackground(Z)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->isShowBackground:Z

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public titleBackgroundColor(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->titleBackgroundColorStr:Ljava/lang/String;

    return-object p0
.end method

.method public titleTextColor(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->titleTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method public titleTextSize(I)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->titleTextSize:I

    return-object p0
.end method

.method public visibleItemsCount(I)Lcom/lljjcoder/citywheel/CityConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CityConfig$Builder;->visibleItems:I

    return-object p0
.end method
