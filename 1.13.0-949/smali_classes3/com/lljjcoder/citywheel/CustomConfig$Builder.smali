.class public Lcom/lljjcoder/citywheel/CustomConfig$Builder;
.super Ljava/lang/Object;
.source "CustomConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lljjcoder/citywheel/CustomConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cancelText:Ljava/lang/String;

.field private cancelTextColorStr:Ljava/lang/String;

.field private cancelTextSize:I

.field private cityDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/CustomCityData;",
            ">;"
        }
    .end annotation
.end field

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

.field private mWheelType:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

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
    iput v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->visibleItems:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isProvinceCyclic:Z

    .line 4
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isCityCyclic:Z

    .line 5
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isDistrictCyclic:Z

    const-string v1, "#000000"

    .line 6
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cancelTextColorStr:Ljava/lang/String;

    const-string v1, "\u53d6\u6d88"

    .line 7
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cancelText:Ljava/lang/String;

    const/16 v1, 0x10

    .line 8
    iput v1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cancelTextSize:I

    const-string v2, "#0000FF"

    .line 9
    iput-object v2, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->confirmTextColorStr:Ljava/lang/String;

    const-string v2, "\u786e\u5b9a"

    .line 10
    iput-object v2, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->confirmText:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->confirmTextSize:I

    const-string v1, "\u9009\u62e9\u5730\u533a"

    .line 12
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->mTitle:Ljava/lang/String;

    const-string v1, "#E9E9E9"

    .line 13
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->titleBackgroundColorStr:Ljava/lang/String;

    const-string v1, "#585858"

    .line 14
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->titleTextColorStr:Ljava/lang/String;

    const/16 v1, 0x12

    .line 15
    iput v1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->titleTextSize:I

    .line 16
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isShowBackground:Z

    .line 17
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->drawShadows:Z

    const-string v0, "#C7C7C7"

    .line 18
    iput-object v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->lineColor:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO_CITY_DIS:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->mWheelType:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    const/4 v0, 0x3

    .line 20
    iput v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->lineHeigh:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cityDataList:Ljava/util/List;

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->defaultProvinceName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->defaultCityName:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->defaultDistrict:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->titleBackgroundColorStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->visibleItems:I

    return p0
.end method

.method static synthetic access$1100(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isProvinceCyclic:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isDistrictCyclic:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isCityCyclic:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->defaultDistrict:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->defaultCityName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->defaultProvinceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Lcom/lljjcoder/citywheel/CustomConfig$WheelType;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->mWheelType:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isShowBackground:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->customItemLayout:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->titleTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->customItemTextViewId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->drawShadows:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->lineColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->lineHeigh:I

    return p0
.end method

.method static synthetic access$2400(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cityDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->titleTextSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cancelTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cancelText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cancelTextSize:I

    return p0
.end method

.method static synthetic access$700(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->confirmTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->confirmText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->confirmTextSize:I

    return p0
.end method


# virtual methods
.method public build()Lcom/lljjcoder/citywheel/CustomConfig;
    .locals 1

    new-instance v0, Lcom/lljjcoder/citywheel/CustomConfig;

    invoke-direct {v0, p0}, Lcom/lljjcoder/citywheel/CustomConfig;-><init>(Lcom/lljjcoder/citywheel/CustomConfig$Builder;)V

    return-object v0
.end method

.method public cancelText(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cancelText:Ljava/lang/String;

    return-object p0
.end method

.method public cancelTextColor(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cancelTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method public cancelTextSize(I)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cancelTextSize:I

    return-object p0
.end method

.method public city(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->defaultCityName:Ljava/lang/String;

    return-object p0
.end method

.method public cityCyclic(Z)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isCityCyclic:Z

    return-object p0
.end method

.method public confirTextColor(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->confirmTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method public confirmText(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->confirmText:Ljava/lang/String;

    return-object p0
.end method

.method public confirmTextSize(I)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->confirmTextSize:I

    return-object p0
.end method

.method public district(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->defaultDistrict:Ljava/lang/String;

    return-object p0
.end method

.method public districtCyclic(Z)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isDistrictCyclic:Z

    return-object p0
.end method

.method public drawShadows(Z)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->drawShadows:Z

    return-object p0
.end method

.method public province(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->defaultProvinceName:Ljava/lang/String;

    return-object p0
.end method

.method public provinceCyclic(Z)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isProvinceCyclic:Z

    return-object p0
.end method

.method public setCityData(Ljava/util/List;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/CustomCityData;",
            ">;)",
            "Lcom/lljjcoder/citywheel/CustomConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->cityDataList:Ljava/util/List;

    return-object p0
.end method

.method public setCityWheelType(Lcom/lljjcoder/citywheel/CustomConfig$WheelType;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->mWheelType:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    return-object p0
.end method

.method public setCustomItemLayout(Ljava/lang/Integer;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->customItemLayout:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCustomItemTextViewId(Ljava/lang/Integer;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->customItemTextViewId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setLineColor(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->lineColor:Ljava/lang/String;

    return-object p0
.end method

.method public setLineHeigh(I)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->lineHeigh:I

    return-object p0
.end method

.method public showBackground(Z)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->isShowBackground:Z

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public titleBackgroundColor(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->titleBackgroundColorStr:Ljava/lang/String;

    return-object p0
.end method

.method public titleTextColor(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->titleTextColorStr:Ljava/lang/String;

    return-object p0
.end method

.method public titleTextSize(I)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->titleTextSize:I

    return-object p0
.end method

.method public visibleItemsCount(I)Lcom/lljjcoder/citywheel/CustomConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CustomConfig$Builder;->visibleItems:I

    return-object p0
.end method
