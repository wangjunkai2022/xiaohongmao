.class public final Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;
.super Landroid/os/Binder;
.source "WsService.kt"

# interfaces
.implements Lcom/im/freechat/data/sources/websocket/WsBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/data/sources/websocket/WsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WebSocketClientBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J&\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000c2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000fH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;",
        "Landroid/os/Binder;",
        "Lcom/im/freechat/data/sources/websocket/WsBinder;",
        "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
        "msg",
        "",
        "sendWebSocketMessage",
        "",
        "imToken",
        "deviceToken",
        "",
        "timeoutEnabled",
        "Lkotlinx/coroutines/flow/i;",
        "startSocket",
        "onTokenUpdate",
        "Lkotlinx/coroutines/flow/t;",
        "listenConnectionState",
        "<init>",
        "(Lcom/im/freechat/data/sources/websocket/WsService;)V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/websocket/WsService;


# direct methods
.method public constructor <init>(Lcom/im/freechat/data/sources/websocket/WsService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public listenConnectionState()Lkotlinx/coroutines/flow/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-static {v0}, Lcom/im/freechat/data/sources/websocket/WsService;->access$getConnectionState$p(Lcom/im/freechat/data/sources/websocket/WsService;)Lkotlinx/coroutines/flow/t;

    move-result-object v0

    return-object v0
.end method

.method public onTokenUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "imToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-virtual {v0, p1, p2}, Lcom/im/freechat/data/sources/websocket/WsService;->onTokenUpdated(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendWebSocketMessage(Lcom/im/freechat/data/openapigen/models/SocketMessage;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/openapigen/models/SocketMessage;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-virtual {v0, p1}, Lcom/im/freechat/data/sources/websocket/WsService;->sendWsRequest(Ljava/lang/Object;)V

    return-void
.end method

.method public startSocket(Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/i;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "imToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-virtual {v0, p1, p2}, Lcom/im/freechat/data/sources/websocket/WsService;->onTokenUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-static {p1, p3}, Lcom/im/freechat/data/sources/websocket/WsService;->access$setTimeoutEnabled$p(Lcom/im/freechat/data/sources/websocket/WsService;Z)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-virtual {p1}, Lcom/im/freechat/data/sources/websocket/WsService;->startSocketConnection()Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method
