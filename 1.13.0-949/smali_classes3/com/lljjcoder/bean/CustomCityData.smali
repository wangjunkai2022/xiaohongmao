.class public Lcom/lljjcoder/bean/CustomCityData;
.super Ljava/lang/Object;
.source "CustomCityData.java"


# instance fields
.field private id:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/CustomCityData;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/bean/CustomCityData;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/bean/CustomCityData;->list:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/lljjcoder/bean/CustomCityData;->id:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/lljjcoder/bean/CustomCityData;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/bean/CustomCityData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/CustomCityData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lljjcoder/bean/CustomCityData;->list:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/bean/CustomCityData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/bean/CustomCityData;->id:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/CustomCityData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lljjcoder/bean/CustomCityData;->list:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/bean/CustomCityData;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/bean/CustomCityData;->name:Ljava/lang/String;

    return-object v0
.end method
