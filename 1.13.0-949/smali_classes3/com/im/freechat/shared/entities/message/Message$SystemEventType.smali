.class public final enum Lcom/im/freechat/shared/entities/message/Message$SystemEventType;
.super Ljava/lang/Enum;
.source "Message.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/shared/entities/message/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemEventType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/shared/entities/message/Message$SystemEventType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/shared/entities/message/Message$SystemEventType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/Message$SystemEventType;",
        "",
        "event",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getEvent",
        "()Ljava/lang/String;",
        "MESSAGE_DELETE",
        "MESSAGE_MODIFY",
        "CREATE_GROUP",
        "ADD_MANAGER",
        "REMOVE_MANAGER",
        "ADD_MEMBER",
        "MEMBER_LEFT",
        "BANNED_MEMBER",
        "UNBANNED_MEMBER",
        "KICKED_MEMBER",
        "CLEAR_CHAT_HISTORY",
        "NONE",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final enum ADD_MANAGER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final enum ADD_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final enum BANNED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final enum CLEAR_CHAT_HISTORY:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final enum CREATE_GROUP:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final Companion:Lcom/im/freechat/shared/entities/message/Message$SystemEventType$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final enum KICKED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final enum MEMBER_LEFT:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final enum MESSAGE_DELETE:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final enum MESSAGE_MODIFY:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final enum NONE:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final enum REMOVE_MANAGER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

.field public static final enum UNBANNED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;


# instance fields
.field private final event:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/shared/entities/message/Message$SystemEventType;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->MESSAGE_DELETE:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->MESSAGE_MODIFY:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->CREATE_GROUP:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->ADD_MANAGER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->REMOVE_MANAGER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->ADD_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->MEMBER_LEFT:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->BANNED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->UNBANNED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->KICKED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->CLEAR_CHAT_HISTORY:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->NONE:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "MESSAGE_DELETE"

    const/4 v2, 0x0

    const-string v3, "msg.del"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->MESSAGE_DELETE:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    .line 2
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "MESSAGE_MODIFY"

    const/4 v2, 0x1

    const-string v3, "msg.modify"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->MESSAGE_MODIFY:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    .line 3
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "CREATE_GROUP"

    const/4 v2, 0x2

    const-string v3, "system.create_conv"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->CREATE_GROUP:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    .line 4
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "ADD_MANAGER"

    const/4 v2, 0x3

    const-string v3, "system.manage_add"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->ADD_MANAGER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    .line 5
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "REMOVE_MANAGER"

    const/4 v2, 0x4

    const-string v3, "system.manage_remove"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->REMOVE_MANAGER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    .line 6
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "ADD_MEMBER"

    const/4 v2, 0x5

    const-string v3, "system.member_join"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->ADD_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    .line 7
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "MEMBER_LEFT"

    const/4 v2, 0x6

    const-string v3, "system.member_left"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->MEMBER_LEFT:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    .line 8
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "BANNED_MEMBER"

    const/4 v2, 0x7

    const-string v3, "system.ban"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->BANNED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    .line 9
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "UNBANNED_MEMBER"

    const/16 v2, 0x8

    const-string v3, "system.remove_ban"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->UNBANNED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    .line 10
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "KICKED_MEMBER"

    const/16 v2, 0x9

    const-string v3, "system.member_kicked"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->KICKED_MEMBER:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    .line 11
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "CLEAR_CHAT_HISTORY"

    const/16 v2, 0xa

    const-string v3, "system.clear_conv"

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->CLEAR_CHAT_HISTORY:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    .line 12
    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    const-string v1, "NONE"

    const/16 v2, 0xb

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->NONE:Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-static {}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->$values()[Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->$VALUES:[Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    new-instance v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/shared/entities/message/Message$SystemEventType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->Companion:Lcom/im/freechat/shared/entities/message/Message$SystemEventType$Companion;

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

    iput-object p3, p0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->event:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/shared/entities/message/Message$SystemEventType;
    .locals 1

    const-class v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/shared/entities/message/Message$SystemEventType;
    .locals 1

    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->$VALUES:[Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/shared/entities/message/Message$SystemEventType;

    return-object v0
.end method


# virtual methods
.method public final getEvent()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/Message$SystemEventType;->event:Ljava/lang/String;

    return-object v0
.end method
