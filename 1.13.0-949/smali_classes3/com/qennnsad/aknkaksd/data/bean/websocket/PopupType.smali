.class public final enum Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;
.super Ljava/lang/Enum;
.source "PopupWindowMsg.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;",
        "",
        "(Ljava/lang/String;I)V",
        "Url",
        "Message",
        "Room",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

.field public static final enum Message:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field public static final enum Room:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "anchorid"
    .end annotation
.end field

.field public static final enum Url:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    sget-object v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->Url:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->Message:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->Room:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    const-string v1, "Url"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->Url:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    const-string v1, "Message"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->Message:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    const-string v1, "Room"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->Room:Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    invoke-static {}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->$values()[Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->$VALUES:[Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;
    .locals 1

    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    return-object p0
.end method

.method public static values()[Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;->$VALUES:[Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupType;

    return-object v0
.end method
