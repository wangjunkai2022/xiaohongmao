.class public final enum Lcom/giphy/sdk/analytics/models/enums/EventType;
.super Ljava/lang/Enum;
.source "EventType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giphy/sdk/analytics/models/enums/EventType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0003\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/giphy/sdk/analytics/models/enums/EventType;",
        "",
        "(Ljava/lang/String;I)V",
        "GIF_RECENT",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/giphy/sdk/analytics/models/enums/EventType;

.field public static final enum GIF_RECENT:Lcom/giphy/sdk/analytics/models/enums/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/giphy/sdk/analytics/models/enums/EventType;

    new-instance v1, Lcom/giphy/sdk/analytics/models/enums/EventType;

    const-string v2, "GIF_RECENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/analytics/models/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/analytics/models/enums/EventType;->GIF_RECENT:Lcom/giphy/sdk/analytics/models/enums/EventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/giphy/sdk/analytics/models/enums/EventType;->$VALUES:[Lcom/giphy/sdk/analytics/models/enums/EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/giphy/sdk/analytics/models/enums/EventType;
    .locals 1

    const-class v0, Lcom/giphy/sdk/analytics/models/enums/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giphy/sdk/analytics/models/enums/EventType;

    return-object p0
.end method

.method public static values()[Lcom/giphy/sdk/analytics/models/enums/EventType;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/analytics/models/enums/EventType;->$VALUES:[Lcom/giphy/sdk/analytics/models/enums/EventType;

    invoke-virtual {v0}, [Lcom/giphy/sdk/analytics/models/enums/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giphy/sdk/analytics/models/enums/EventType;

    return-object v0
.end method
