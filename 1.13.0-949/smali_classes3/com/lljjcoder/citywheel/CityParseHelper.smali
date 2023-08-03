.class public Lcom/lljjcoder/citywheel/CityParseHelper;
.super Ljava/lang/Object;
.source "CityParseHelper.java"


# instance fields
.field private mCityBean:Lcom/lljjcoder/bean/CityBean;

.field private mCityBeanArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/bean/CityBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCity_DisMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/DistrictBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lljjcoder/bean/DistrictBean;",
            ">;"
        }
    .end annotation
.end field

.field private mDistrictBean:Lcom/lljjcoder/bean/DistrictBean;

.field private mDistrictBeanArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/bean/DistrictBean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPro_CityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/CityBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProvinceBean:Lcom/lljjcoder/bean/ProvinceBean;

.field private mProvinceBeanArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/bean/ProvinceBean;",
            ">;"
        }
    .end annotation
.end field

.field private mProvinceBeenArray:Ljava/util/List;
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

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeanArrayList:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mPro_CityMap:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mCity_DisMap:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mDisMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCityBean()Lcom/lljjcoder/bean/CityBean;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mCityBean:Lcom/lljjcoder/bean/CityBean;

    return-object v0
.end method

.method public getCityBeanArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/bean/CityBean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mCityBeanArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCity_DisMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/DistrictBean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mCity_DisMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDisMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lljjcoder/bean/DistrictBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mDisMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDistrictBean()Lcom/lljjcoder/bean/DistrictBean;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mDistrictBean:Lcom/lljjcoder/bean/DistrictBean;

    return-object v0
.end method

.method public getDistrictBeanArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/bean/DistrictBean;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mDistrictBeanArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPro_CityMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/CityBean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mPro_CityMap:Ljava/util/Map;

    return-object v0
.end method

.method public getProvinceBean()Lcom/lljjcoder/bean/ProvinceBean;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBean:Lcom/lljjcoder/bean/ProvinceBean;

    return-object v0
.end method

.method public getProvinceBeanArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/bean/ProvinceBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeanArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProvinceBeenArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/ProvinceBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeenArray:Ljava/util/List;

    return-object v0
.end method

.method public initData(Landroid/content/Context;)V
    .locals 10

    const-string v0, "china_city_data.json"

    .line 1
    invoke-static {p1, v0}, Lcom/lljjcoder/utils/utils;->getJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/lljjcoder/citywheel/CityParseHelper$1;

    invoke-direct {v0, p0}, Lcom/lljjcoder/citywheel/CityParseHelper$1;-><init>(Lcom/lljjcoder/citywheel/CityParseHelper;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeanArrayList:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_5

    .line 6
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeanArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mCityBeanArrayList:Ljava/util/ArrayList;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeanArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mDistrictBeanArrayList:Ljava/util/ArrayList;

    .line 8
    iget-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeanArrayList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeanArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/bean/ProvinceBean;

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBean:Lcom/lljjcoder/bean/ProvinceBean;

    .line 10
    invoke-virtual {p1}, Lcom/lljjcoder/bean/ProvinceBean;->getCityList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/bean/CityBean;

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mCityBean:Lcom/lljjcoder/bean/CityBean;

    .line 13
    invoke-virtual {p1}, Lcom/lljjcoder/bean/CityBean;->getCityList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/bean/DistrictBean;

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mDistrictBean:Lcom/lljjcoder/bean/DistrictBean;

    .line 16
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeenArray:Ljava/util/List;

    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeanArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 18
    iget-object v1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeanArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lljjcoder/bean/ProvinceBean;

    .line 19
    invoke-virtual {v1}, Lcom/lljjcoder/bean/ProvinceBean;->getCityList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    .line 20
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lljjcoder/bean/CityBean;

    invoke-virtual {v4}, Lcom/lljjcoder/bean/CityBean;->getCityList()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 22
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 23
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lljjcoder/bean/DistrictBean;

    .line 24
    iget-object v7, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mDisMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lljjcoder/bean/CityBean;

    invoke-virtual {v9}, Lcom/lljjcoder/bean/CityBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lljjcoder/bean/DistrictBean;

    invoke-virtual {v9}, Lcom/lljjcoder/bean/DistrictBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 25
    :cond_3
    iget-object v5, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mCity_DisMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lljjcoder/bean/CityBean;

    invoke-virtual {v7}, Lcom/lljjcoder/bean/CityBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 26
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mPro_CityMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v3, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mCityBeanArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 29
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lljjcoder/bean/CityBean;

    .line 31
    invoke-virtual {v5}, Lcom/lljjcoder/bean/CityBean;->getCityList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 32
    :cond_5
    iget-object v2, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mDistrictBeanArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v2, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeenArray:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_5
    return-void
.end method

.method public setCityBean(Lcom/lljjcoder/bean/CityBean;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mCityBean:Lcom/lljjcoder/bean/CityBean;

    return-void
.end method

.method public setCityBeanArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/bean/CityBean;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mCityBeanArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setCity_DisMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/DistrictBean;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mCity_DisMap:Ljava/util/Map;

    return-void
.end method

.method public setDisMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lljjcoder/bean/DistrictBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mDisMap:Ljava/util/Map;

    return-void
.end method

.method public setDistrictBean(Lcom/lljjcoder/bean/DistrictBean;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mDistrictBean:Lcom/lljjcoder/bean/DistrictBean;

    return-void
.end method

.method public setDistrictBeanArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/bean/DistrictBean;",
            ">;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mDistrictBeanArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPro_CityMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/CityBean;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mPro_CityMap:Ljava/util/Map;

    return-void
.end method

.method public setProvinceBean(Lcom/lljjcoder/bean/ProvinceBean;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBean:Lcom/lljjcoder/bean/ProvinceBean;

    return-void
.end method

.method public setProvinceBeanArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/bean/ProvinceBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeanArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setProvinceBeenArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/ProvinceBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lljjcoder/citywheel/CityParseHelper;->mProvinceBeenArray:Ljava/util/List;

    return-void
.end method
