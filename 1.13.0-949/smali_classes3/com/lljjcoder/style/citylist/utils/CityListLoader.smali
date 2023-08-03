.class public Lcom/lljjcoder/style/citylist/utils/CityListLoader;
.super Ljava/lang/Object;
.source "CityListLoader.java"


# static fields
.field public static final BUNDATA:Ljava/lang/String; = "bundata"

.field private static volatile instance:Lcom/lljjcoder/style/citylist/utils/CityListLoader;

.field private static mCityListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private static mProListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->mCityListData:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->mProListData:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lljjcoder/style/citylist/utils/CityListLoader;
    .locals 2

    .line 1
    sget-object v0, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->instance:Lcom/lljjcoder/style/citylist/utils/CityListLoader;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/lljjcoder/style/citylist/utils/CityListLoader;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->instance:Lcom/lljjcoder/style/citylist/utils/CityListLoader;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/lljjcoder/style/citylist/utils/CityListLoader;

    invoke-direct {v1}, Lcom/lljjcoder/style/citylist/utils/CityListLoader;-><init>()V

    sput-object v1, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->instance:Lcom/lljjcoder/style/citylist/utils/CityListLoader;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->instance:Lcom/lljjcoder/style/citylist/utils/CityListLoader;

    return-object v0
.end method


# virtual methods
.method public getCityListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->mCityListData:Ljava/util/List;

    return-object v0
.end method

.method public getProListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->mProListData:Ljava/util/List;

    return-object v0
.end method

.method public loadCityData(Landroid/content/Context;)V
    .locals 6

    const-string v0, "china_city_data.json"

    .line 1
    invoke-static {p1, v0}, Lcom/lljjcoder/utils/utils;->getJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/lljjcoder/style/citylist/utils/CityListLoader$1;

    invoke-direct {v0, p0}, Lcom/lljjcoder/style/citylist/utils/CityListLoader$1;-><init>(Lcom/lljjcoder/style/citylist/utils/CityListLoader;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    .line 8
    invoke-virtual {v2}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getCityList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    .line 9
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 10
    sget-object v4, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->mCityListData:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public loadProData(Landroid/content/Context;)V
    .locals 2

    const-string v0, "china_city_data.json"

    .line 1
    invoke-static {p1, v0}, Lcom/lljjcoder/utils/utils;->getJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/lljjcoder/style/citylist/utils/CityListLoader$2;

    invoke-direct {v0, p0}, Lcom/lljjcoder/style/citylist/utils/CityListLoader$2;-><init>(Lcom/lljjcoder/style/citylist/utils/CityListLoader;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sput-object p1, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->mProListData:Ljava/util/List;

    return-void
.end method
