.class public final enum Lcom/im/freechat/data/sources/api/entities/chat/ChatType;
.super Ljava/lang/Enum;
.source "ChatRequest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/data/sources/api/entities/chat/ChatType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/chat/ChatType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "SINGLE",
        "GROUP",
        "CHAT_ROOM",
        "data_release"
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

.field public static final enum CHAT_ROOM:Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

.field public static final enum GROUP:Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

.field public static final enum SINGLE:Lcom/im/freechat/data/sources/api/entities/chat/ChatType;


# instance fields
.field private final type:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/data/sources/api/entities/chat/ChatType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    sget-object v1, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;->SINGLE:Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;->GROUP:Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;->CHAT_ROOM:Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;->SINGLE:Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    new-instance v0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    const-string v1, "GROUP"

    const/4 v2, 0x1

    const-string v3, "2"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;->GROUP:Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    new-instance v0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    const-string v1, "CHAT_ROOM"

    const/4 v2, 0x2

    const-string v3, "4"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;->CHAT_ROOM:Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    invoke-static {}, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;->$values()[Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;->$VALUES:[Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/data/sources/api/entities/chat/ChatType;
    .locals 1

    const-class v0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/data/sources/api/entities/chat/ChatType;
    .locals 1

    sget-object v0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;->$VALUES:[Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/data/sources/api/entities/chat/ChatType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/ChatType;->type:Ljava/lang/String;

    return-object v0
.end method
