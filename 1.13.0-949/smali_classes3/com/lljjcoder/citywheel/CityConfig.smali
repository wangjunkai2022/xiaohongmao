.class public Lcom/lljjcoder/citywheel/CityConfig;
.super Ljava/lang/Object;
.source "CityConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lljjcoder/citywheel/CityConfig$Builder;,
        Lcom/lljjcoder/citywheel/CityConfig$WheelType;
    }
.end annotation


# static fields
.field public static final NONE:Ljava/lang/Integer;


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

.field public mWheelType:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

.field private showGAT:Z

.field private titleBackgroundColorStr:Ljava/lang/String;

.field private titleTextColorStr:Ljava/lang/String;

.field private titleTextSize:I

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, -0x457

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/lljjcoder/citywheel/CityConfig;->NONE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/lljjcoder/citywheel/CityConfig$Builder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->visibleItems:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isProvinceCyclic:Z

    .line 4
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isCityCyclic:Z

    .line 5
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isDistrictCyclic:Z

    const-string v1, "#000000"

    .line 6
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelTextColorStr:Ljava/lang/String;

    const-string v1, "\u53d6\u6d88"

    .line 7
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelText:Ljava/lang/String;

    const/16 v1, 0x10

    .line 8
    iput v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelTextSize:I

    const-string v2, "#0000FF"

    .line 9
    iput-object v2, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmTextColorStr:Ljava/lang/String;

    const-string v2, "\u786e\u5b9a"

    .line 10
    iput-object v2, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmText:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmTextSize:I

    const-string v1, "\u9009\u62e9\u5730\u533a"

    .line 12
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->mTitle:Ljava/lang/String;

    const-string v1, "#E9E9E9"

    .line 13
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleBackgroundColorStr:Ljava/lang/String;

    const-string v1, "#585858"

    .line 14
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleTextColorStr:Ljava/lang/String;

    const/16 v1, 0x12

    .line 15
    iput v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleTextSize:I

    const-string v1, "\u6d59\u6c5f"

    .line 16
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultProvinceName:Ljava/lang/String;

    const-string v1, "\u676d\u5dde"

    .line 17
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultCityName:Ljava/lang/String;

    const-string v1, "\u6ee8\u6c5f\u533a"

    .line 18
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultDistrict:Ljava/lang/String;

    .line 19
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->drawShadows:Z

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->showGAT:Z

    const-string v1, "#C7C7C7"

    .line 21
    iput-object v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->lineColor:Ljava/lang/String;

    const/4 v1, 0x3

    .line 22
    iput v1, p0, Lcom/lljjcoder/citywheel/CityConfig;->lineHeigh:I

    .line 23
    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isShowBackground:Z

    .line 24
    sget-object v0, Lcom/lljjcoder/citywheel/CityConfig$WheelType;->PRO_CITY_DIS:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->mWheelType:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    .line 25
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$000(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleBackgroundColorStr:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$100(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->mTitle:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$200(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleTextColorStr:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$300(Lcom/lljjcoder/citywheel/CityConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleTextSize:I

    .line 29
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$400(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelTextColorStr:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$500(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelText:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$600(Lcom/lljjcoder/citywheel/CityConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelTextSize:I

    .line 32
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$700(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmTextColorStr:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$800(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmText:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$900(Lcom/lljjcoder/citywheel/CityConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmTextSize:I

    .line 35
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$1000(Lcom/lljjcoder/citywheel/CityConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->visibleItems:I

    .line 36
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$1100(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isProvinceCyclic:Z

    .line 37
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$1200(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isDistrictCyclic:Z

    .line 38
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$1300(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isCityCyclic:Z

    .line 39
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$1400(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultDistrict:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$1500(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultCityName:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$1600(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultProvinceName:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$1700(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->mWheelType:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    .line 43
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$1800(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isShowBackground:Z

    .line 44
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$1900(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->customItemLayout:Ljava/lang/Integer;

    .line 45
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$2000(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->customItemTextViewId:Ljava/lang/Integer;

    .line 46
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$2100(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->drawShadows:Z

    .line 47
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$2200(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->lineColor:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$2300(Lcom/lljjcoder/citywheel/CityConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->lineHeigh:I

    .line 49
    invoke-static {p1}, Lcom/lljjcoder/citywheel/CityConfig$Builder;->access$2400(Lcom/lljjcoder/citywheel/CityConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->showGAT:Z

    return-void
.end method


# virtual methods
.method public getCancelText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCancelTextColorStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelTextColorStr:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCancelTextSize()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelTextSize:I

    return v0
.end method

.method public getConfirmText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getConfirmTextColorStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmTextColorStr:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getConfirmTextSize()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmTextSize:I

    return v0
.end method

.method public getCustomItemLayout()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->customItemLayout:Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/lljjcoder/citywheel/CityConfig;->NONE:Ljava/lang/Integer;

    :cond_0
    return-object v0
.end method

.method public getCustomItemTextViewId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->customItemTextViewId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/lljjcoder/citywheel/CityConfig;->NONE:Ljava/lang/Integer;

    :cond_0
    return-object v0
.end method

.method public getDefaultCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultCityName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDefaultDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultDistrict:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getDefaultProvinceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultProvinceName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLineColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->lineColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLineHeigh()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->lineHeigh:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTitleBackgroundColorStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleBackgroundColorStr:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTitleTextColorStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleTextColorStr:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTitleTextSize()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleTextSize:I

    return v0
.end method

.method public getVisibleItems()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->visibleItems:I

    return v0
.end method

.method public getWheelType()Lcom/lljjcoder/citywheel/CityConfig$WheelType;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->mWheelType:Lcom/lljjcoder/citywheel/CityConfig$WheelType;

    return-object v0
.end method

.method public isCityCyclic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isCityCyclic:Z

    return v0
.end method

.method public isDistrictCyclic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isDistrictCyclic:Z

    return v0
.end method

.method public isDrawShadows()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->drawShadows:Z

    return v0
.end method

.method public isProvinceCyclic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isProvinceCyclic:Z

    return v0
.end method

.method public isShowBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->isShowBackground:Z

    return v0
.end method

.method public isShowGAT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lljjcoder/citywheel/CityConfig;->showGAT:Z

    return v0
.end method

.method public setCancelText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelText:Ljava/lang/String;

    return-void
.end method

.method public setCancelTextColorStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelTextColorStr:Ljava/lang/String;

    return-void
.end method

.method public setCancelTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->cancelTextSize:I

    return-void
.end method

.method public setCityCyclic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->isCityCyclic:Z

    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmText:Ljava/lang/String;

    return-void
.end method

.method public setConfirmTextColorStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmTextColorStr:Ljava/lang/String;

    return-void
.end method

.method public setConfirmTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->confirmTextSize:I

    return-void
.end method

.method public setCustomItemLayout(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->customItemLayout:Ljava/lang/Integer;

    return-void
.end method

.method public setCustomItemTextViewId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->customItemTextViewId:Ljava/lang/Integer;

    return-void
.end method

.method public setDefaultCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultCityName:Ljava/lang/String;

    return-void
.end method

.method public setDefaultDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultDistrict:Ljava/lang/String;

    return-void
.end method

.method public setDefaultProvinceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->defaultProvinceName:Ljava/lang/String;

    return-void
.end method

.method public setDistrictCyclic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->isDistrictCyclic:Z

    return-void
.end method

.method public setDrawShadows(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->drawShadows:Z

    return-void
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->lineColor:Ljava/lang/String;

    return-void
.end method

.method public setLineHeigh(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->lineHeigh:I

    return-void
.end method

.method public setProvinceCyclic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->isProvinceCyclic:Z

    return-void
.end method

.method public setShowBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->isShowBackground:Z

    return-void
.end method

.method public setShowGAT(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->showGAT:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitleBackgroundColorStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleBackgroundColorStr:Ljava/lang/String;

    return-void
.end method

.method public setTitleTextColorStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleTextColorStr:Ljava/lang/String;

    return-void
.end method

.method public setTitleTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->titleTextSize:I

    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/citywheel/CityConfig;->visibleItems:I

    return-void
.end method
