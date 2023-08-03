.class public final enum Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;
.super Ljava/lang/Enum;
.source "JDCityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lljjcoder/style/cityjd/JDCityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

.field public static final enum PRO_CITY:Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

.field public static final enum PRO_CITY_DIS:Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    const-string v1, "PRO_CITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;->PRO_CITY:Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    new-instance v1, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    const-string v3, "PRO_CITY_DIS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;->PRO_CITY_DIS:Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;->$VALUES:[Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;
    .locals 1

    const-class v0, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    return-object p0
.end method

.method public static values()[Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;
    .locals 1

    sget-object v0, Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;->$VALUES:[Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    invoke-virtual {v0}, [Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lljjcoder/style/cityjd/JDCityConfig$ShowType;

    return-object v0
.end method
