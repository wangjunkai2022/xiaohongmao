.class final Lcom/im/freechat/di/ApiModuleKt$apiModule$1$c;
.super Lkotlin/jvm/internal/Lambda;
.source "ApiModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/di/ApiModuleKt$apiModule$1;->a(Lx8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "Lcom/squareup/moshi/u;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "it",
        "Lcom/squareup/moshi/u;",
        "kotlin.jvm.PlatformType",
        "a",
        "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/squareup/moshi/u;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/di/ApiModuleKt$apiModule$1$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$c;

    invoke-direct {v0}, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$c;-><init>()V

    sput-object v0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$c;->a:Lcom/im/freechat/di/ApiModuleKt$apiModule$1$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/squareup/moshi/u;
    .locals 3
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ly8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "$this$scoped"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/squareup/moshi/u$c;

    invoke-direct {p1}, Lcom/squareup/moshi/u$c;-><init>()V

    const-class p2, Lcom/im/freechat/data/openapigen/models/SocketMessage;

    const-string v0, "type"

    .line 2
    invoke-static {p2, v0}, Lcom/squareup/moshi/adapters/c;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;

    .line 3
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->LOGIN_SUCCESS:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/MessageReceived;

    .line 4
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_RECEIVED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/MessageEdited;

    .line 5
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_EDITED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/MessageRead;

    .line 6
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_READ:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;

    .line 7
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGES_DELETED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/MessagePinned;

    .line 8
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_PINNED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/MessageUnpinned;

    .line 9
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->MESSAGE_UNPINNED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/FriendRequestReceived;

    .line 10
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_RECEIVED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/FriendRequestAccepted;

    .line 11
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_ACCEPTED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/FriendRequestCancelled;

    .line 12
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_CANCELLED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/FriendRequestRejected;

    .line 13
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_REQUEST_REJECTED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/FriendDeleted;

    .line 14
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->FRIEND_DELETED:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/UserIsOnline;

    .line 15
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_ONLINE:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/UserIsOffline;

    .line 16
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_OFFLINE:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;

    .line 17
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_TYPING_START:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/UserEndedTyping;

    .line 18
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->USER_TYPING_END:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/Error;

    .line 19
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->ERROR:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    const-class v0, Lcom/im/freechat/data/openapigen/models/Ping;

    .line 20
    sget-object v1, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->PING:Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/squareup/moshi/adapters/c;->e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    .line 21
    new-instance v0, Lcom/im/freechat/data/openapigen/models/UnknownSocketMessage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/im/freechat/data/openapigen/models/UnknownSocketMessage;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, v0}, Lcom/squareup/moshi/adapters/c;->c(Ljava/lang/Object;)Lcom/squareup/moshi/adapters/c;

    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/squareup/moshi/u$c;->a(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;

    move-result-object p1

    .line 23
    new-instance p2, Lv5/b;

    invoke-direct {p2}, Lv5/b;-><init>()V

    invoke-virtual {p1, p2}, Lcom/squareup/moshi/u$c;->a(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/squareup/moshi/u$c;->i()Lcom/squareup/moshi/u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Ly8/a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$c;->a(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/squareup/moshi/u;

    move-result-object p1

    return-object p1
.end method
