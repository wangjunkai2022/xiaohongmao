.class public final enum Lcom/im/freechat/shared/entities/chat/Status;
.super Ljava/lang/Enum;
.source "FriendStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/shared/entities/chat/Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/chat/Status;",
        "",
        "(Ljava/lang/String;I)V",
        "CURRENT_USER",
        "REQUEST_SENT",
        "REQUEST_RECEIVED",
        "REQUEST_REJECTED",
        "FRIEND",
        "NONE",
        "shared"
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/shared/entities/chat/Status;

.field public static final enum CURRENT_USER:Lcom/im/freechat/shared/entities/chat/Status;

.field public static final enum FRIEND:Lcom/im/freechat/shared/entities/chat/Status;

.field public static final enum NONE:Lcom/im/freechat/shared/entities/chat/Status;

.field public static final enum REQUEST_RECEIVED:Lcom/im/freechat/shared/entities/chat/Status;

.field public static final enum REQUEST_REJECTED:Lcom/im/freechat/shared/entities/chat/Status;

.field public static final enum REQUEST_SENT:Lcom/im/freechat/shared/entities/chat/Status;


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/shared/entities/chat/Status;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/im/freechat/shared/entities/chat/Status;

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->CURRENT_USER:Lcom/im/freechat/shared/entities/chat/Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_SENT:Lcom/im/freechat/shared/entities/chat/Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_RECEIVED:Lcom/im/freechat/shared/entities/chat/Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_REJECTED:Lcom/im/freechat/shared/entities/chat/Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->FRIEND:Lcom/im/freechat/shared/entities/chat/Status;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->NONE:Lcom/im/freechat/shared/entities/chat/Status;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Status;

    const-string v1, "CURRENT_USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/chat/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Status;->CURRENT_USER:Lcom/im/freechat/shared/entities/chat/Status;

    .line 2
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Status;

    const-string v1, "REQUEST_SENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/chat/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_SENT:Lcom/im/freechat/shared/entities/chat/Status;

    .line 3
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Status;

    const-string v1, "REQUEST_RECEIVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/chat/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_RECEIVED:Lcom/im/freechat/shared/entities/chat/Status;

    .line 4
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Status;

    const-string v1, "REQUEST_REJECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/chat/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_REJECTED:Lcom/im/freechat/shared/entities/chat/Status;

    .line 5
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Status;

    const-string v1, "FRIEND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/chat/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Status;->FRIEND:Lcom/im/freechat/shared/entities/chat/Status;

    .line 6
    new-instance v0, Lcom/im/freechat/shared/entities/chat/Status;

    const-string v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/im/freechat/shared/entities/chat/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Status;->NONE:Lcom/im/freechat/shared/entities/chat/Status;

    invoke-static {}, Lcom/im/freechat/shared/entities/chat/Status;->$values()[Lcom/im/freechat/shared/entities/chat/Status;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/shared/entities/chat/Status;->$VALUES:[Lcom/im/freechat/shared/entities/chat/Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/shared/entities/chat/Status;
    .locals 1

    const-class v0, Lcom/im/freechat/shared/entities/chat/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/chat/Status;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/shared/entities/chat/Status;
    .locals 1

    sget-object v0, Lcom/im/freechat/shared/entities/chat/Status;->$VALUES:[Lcom/im/freechat/shared/entities/chat/Status;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/shared/entities/chat/Status;

    return-object v0
.end method