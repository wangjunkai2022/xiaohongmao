.class public Lcom/lljjcoder/style/citylist/bean/CityInfoBean;
.super Ljava/lang/Object;
.source "CityInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean$1;

    invoke-direct {v0}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean$1;-><init>()V

    sput-object v0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->id:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->name:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->cityList:Ljava/util/ArrayList;

    return-void
.end method

.method public static findCity(Ljava/util/List;Ljava/lang/String;)Lcom/lljjcoder/style/citylist/bean/CityInfoBean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    .line 3
    invoke-virtual {v2}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->cityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setCityList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->cityList:Ljava/util/ArrayList;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->name:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->cityList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
