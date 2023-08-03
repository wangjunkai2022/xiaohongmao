.class public final enum Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;
.super Ljava/lang/Enum;
.source "WsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWsResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WsResponse.kt\ncom/im/freechat/data/sources/websocket/entities/WsSocketMessageType\n+ 2 WsResponse.kt\ncom/im/freechat/data/sources/websocket/entities/WsResponseKt\n*L\n1#1,40:1\n38#2:41\n38#2:42\n38#2:43\n38#2:44\n38#2:45\n38#2:46\n38#2:47\n38#2:48\n38#2:49\n38#2:50\n38#2:51\n38#2:52\n38#2:53\n38#2:54\n38#2:55\n38#2:56\n38#2:57\n38#2:58\n38#2:59\n*S KotlinDebug\n*F\n+ 1 WsResponse.kt\ncom/im/freechat/data/sources/websocket/entities/WsSocketMessageType\n*L\n6#1:41\n8#1:42\n9#1:43\n10#1:44\n11#1:45\n12#1:46\n13#1:47\n15#1:48\n16#1:49\n18#1:50\n19#1:51\n20#1:52\n21#1:53\n22#1:54\n24#1:55\n25#1:56\n27#1:57\n28#1:58\n30#1:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0018\u0008\u0086\u0001\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001aB\u0011\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "LOGIN_SUCCESS",
        "MESSAGE_RECEIVED",
        "MESSAGE_EDITED",
        "MESSAGE_READ",
        "MESSAGES_DELETED",
        "MESSAGE_PINNED",
        "MESSAGE_UNPINNED",
        "USER_ONLINE",
        "USER_OFFLINE",
        "FRIEND_REQUEST_RECEIVED",
        "FRIEND_REQUEST_ACCEPTED",
        "FRIEND_REQUEST_REJECTED",
        "FRIEND_REQUEST_CANCELLED",
        "FRIEND_DELETED",
        "USER_TYPING_START",
        "USER_TYPING_END",
        "ERROR",
        "PING",
        "OTHER",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final Companion:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final enum ERROR:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum FRIEND_DELETED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum FRIEND_REQUEST_ACCEPTED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum FRIEND_REQUEST_CANCELLED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum FRIEND_REQUEST_RECEIVED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum FRIEND_REQUEST_REJECTED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum LOGIN_SUCCESS:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum MESSAGES_DELETED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum MESSAGE_EDITED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum MESSAGE_PINNED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum MESSAGE_READ:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum MESSAGE_RECEIVED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum MESSAGE_UNPINNED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum OTHER:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum PING:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum USER_OFFLINE:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum USER_ONLINE:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum USER_TYPING_END:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

.field public static final enum USER_TYPING_START:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;


# instance fields
.field private final type:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->LOGIN_SUCCESS:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_RECEIVED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_EDITED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_READ:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGES_DELETED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_PINNED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_UNPINNED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_ONLINE:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_OFFLINE:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_RECEIVED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_ACCEPTED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_REJECTED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_CANCELLED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_DELETED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_TYPING_START:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_TYPING_END:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->ERROR:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->PING:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->OTHER:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T::class.java.simpleName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "LOGIN_SUCCESS"

    const/4 v4, 0x0

    .line 3
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->LOGIN_SUCCESS:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 4
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/MessageReceived;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "MESSAGE_RECEIVED"

    const/4 v4, 0x1

    .line 6
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_RECEIVED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 7
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/MessageEdited;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "MESSAGE_EDITED"

    const/4 v4, 0x2

    .line 9
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_EDITED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 10
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/MessageRead;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "MESSAGE_READ"

    const/4 v4, 0x3

    .line 12
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_READ:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 13
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "MESSAGES_DELETED"

    const/4 v4, 0x4

    .line 15
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGES_DELETED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 16
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/MessagePinned;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "MESSAGE_PINNED"

    const/4 v4, 0x5

    .line 18
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_PINNED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 19
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/MessageUnpinned;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "MESSAGE_UNPINNED"

    const/4 v4, 0x6

    .line 21
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_UNPINNED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 22
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/UserIsOnline;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "USER_ONLINE"

    const/4 v4, 0x7

    .line 24
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_ONLINE:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 25
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/UserIsOffline;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "USER_OFFLINE"

    const/16 v4, 0x8

    .line 27
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_OFFLINE:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 28
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/FriendRequestReceived;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "FRIEND_REQUEST_RECEIVED"

    const/16 v4, 0x9

    .line 30
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_RECEIVED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 31
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/FriendRequestAccepted;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "FRIEND_REQUEST_ACCEPTED"

    const/16 v4, 0xa

    .line 33
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_ACCEPTED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 34
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/FriendRequestRejected;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "FRIEND_REQUEST_REJECTED"

    const/16 v4, 0xb

    .line 36
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_REJECTED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 37
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/FriendRequestCancelled;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "FRIEND_REQUEST_CANCELLED"

    const/16 v4, 0xc

    .line 39
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_CANCELLED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 40
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/FriendDeleted;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "FRIEND_DELETED"

    const/16 v4, 0xd

    .line 42
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_DELETED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 43
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "USER_TYPING_START"

    const/16 v4, 0xe

    .line 45
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_TYPING_START:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 46
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/UserEndedTyping;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "USER_TYPING_END"

    const/16 v4, 0xf

    .line 48
    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_TYPING_END:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 49
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/Error;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "ERROR"

    const/16 v6, 0x10

    invoke-direct {v0, v5, v6, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->ERROR:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 52
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/Ping;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "PING"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->PING:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    .line 55
    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    const-class v1, Lcom/im/freechat/data/openapigen/models/UnknownSocketMessage;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "OTHER"

    const/16 v3, 0x12

    .line 57
    invoke-direct {v0, v2, v3, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->OTHER:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-static {}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->$values()[Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->$VALUES:[Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    new-instance v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->Companion:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType$Companion;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->type:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-string p3, ""

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;
    .locals 1

    const-class v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;
    .locals 1

    sget-object v0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->$VALUES:[Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->type:Ljava/lang/String;

    return-object v0
.end method
