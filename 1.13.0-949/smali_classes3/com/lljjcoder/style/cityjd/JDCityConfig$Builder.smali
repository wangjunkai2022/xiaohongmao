.class public Lcom/lljjcoder/style/cityjd/JDCityConfig$Builder;
.super Ljava/lang/Object;
.source "JDCityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lljjcoder/style/cityjd/JDCityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public showType:Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;->PRO_CITY_DIS:Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    iput-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityConfig$Builder;->showType:Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    return-void
.end method


# virtual methods
.method public build()Lcom/lljjcoder/style/cityjd/JDCityConfig;
    .locals 1

    new-instance v0, Lcom/lljjcoder/style/cityjd/JDCityConfig;

    invoke-direct {v0, p0}, Lcom/lljjcoder/style/cityjd/JDCityConfig;-><init>(Lcom/lljjcoder/style/cityjd/JDCityConfig$Builder;)V

    return-object v0
.end method

.method public setJDCityShowType(Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;)Lcom/lljjcoder/style/cityjd/JDCityConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityConfig$Builder;->showType:Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    return-object p0
.end method
