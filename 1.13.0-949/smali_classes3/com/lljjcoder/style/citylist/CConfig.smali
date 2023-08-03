.class public Lcom/lljjcoder/style/citylist/CConfig;
.super Ljava/lang/Object;
.source "CConfig.java"


# static fields
.field private static sCityInfoBean:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCitySelected()Lcom/lljjcoder/style/citylist/bean/CityInfoBean;
    .locals 1

    sget-object v0, Lcom/lljjcoder/style/citylist/CConfig;->sCityInfoBean:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    return-object v0
.end method

.method public static setCity(Lcom/lljjcoder/style/citylist/bean/CityInfoBean;)V
    .locals 0

    sput-object p0, Lcom/lljjcoder/style/citylist/CConfig;->sCityInfoBean:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    return-void
.end method
