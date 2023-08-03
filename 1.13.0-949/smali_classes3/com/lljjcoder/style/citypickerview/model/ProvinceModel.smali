.class public Lcom/lljjcoder/style/citypickerview/model/ProvinceModel;
.super Ljava/lang/Object;
.source "ProvinceModel.java"


# instance fields
.field private cityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citypickerview/model/CityModel;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citypickerview/model/CityModel;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/model/ProvinceModel;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/lljjcoder/style/citypickerview/model/ProvinceModel;->cityList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citypickerview/model/CityModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/model/ProvinceModel;->cityList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/model/ProvinceModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCityList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citypickerview/model/CityModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/model/ProvinceModel;->cityList:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/model/ProvinceModel;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvinceModel [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/model/ProvinceModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cityList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lljjcoder/style/citypickerview/model/ProvinceModel;->cityList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
