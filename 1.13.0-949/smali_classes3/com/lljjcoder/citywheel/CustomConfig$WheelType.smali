.class public final enum Lcom/lljjcoder/citywheel/CustomConfig$WheelType;
.super Ljava/lang/Enum;
.source "CustomConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lljjcoder/citywheel/CustomConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WheelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lljjcoder/citywheel/CustomConfig$WheelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

.field public static final enum PRO:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

.field public static final enum PRO_CITY:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

.field public static final enum PRO_CITY_DIS:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    const-string v1, "PRO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    new-instance v1, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    const-string v3, "PRO_CITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO_CITY:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    new-instance v3, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    const-string v5, "PRO_CITY_DIS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->PRO_CITY_DIS:Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->$VALUES:[Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lljjcoder/citywheel/CustomConfig$WheelType;
    .locals 1

    const-class v0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    return-object p0
.end method

.method public static values()[Lcom/lljjcoder/citywheel/CustomConfig$WheelType;
    .locals 1

    sget-object v0, Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->$VALUES:[Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    invoke-virtual {v0}, [Lcom/lljjcoder/citywheel/CustomConfig$WheelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lljjcoder/citywheel/CustomConfig$WheelType;

    return-object v0
.end method
