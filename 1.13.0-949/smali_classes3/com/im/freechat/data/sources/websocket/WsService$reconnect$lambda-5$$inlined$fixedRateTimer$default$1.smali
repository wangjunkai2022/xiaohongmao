.class public final Lcom/im/freechat/data/sources/websocket/WsService$reconnect$lambda-5$$inlined$fixedRateTimer$default$1;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/websocket/WsService;->reconnect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 WsService.kt\ncom/im/freechat/data/sources/websocket/WsService\n*L\n1#1,148:1\n169#2,10:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/concurrent/TimersKt$timerTask$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/websocket/WsService;


# direct methods
.method public constructor <init>(Lcom/im/freechat/data/sources/websocket/WsService;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService$reconnect$lambda-5$$inlined$fixedRateTimer$default$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$reconnect$lambda-5$$inlined$fixedRateTimer$default$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-static {v0}, Lcom/im/freechat/data/sources/websocket/WsService;->access$isNetworkAvailable(Lcom/im/freechat/data/sources/websocket/WsService;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$reconnect$lambda-5$$inlined$fixedRateTimer$default$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-static {v0}, Lcom/im/freechat/data/sources/websocket/WsService;->access$getWsInstance$p(Lcom/im/freechat/data/sources/websocket/WsService;)Lokhttp3/WebSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/WebSocket;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$reconnect$lambda-5$$inlined$fixedRateTimer$default$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/im/freechat/data/sources/websocket/WsService;->access$setWsInstance$p(Lcom/im/freechat/data/sources/websocket/WsService;Lokhttp3/WebSocket;)V

    .line 4
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$reconnect$lambda-5$$inlined$fixedRateTimer$default$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-static {v0}, Lcom/im/freechat/data/sources/websocket/WsService;->access$getReconnectAttempt$p(Lcom/im/freechat/data/sources/websocket/WsService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/im/freechat/data/sources/websocket/WsService;->access$setReconnectAttempt$p(Lcom/im/freechat/data/sources/websocket/WsService;I)V

    .line 5
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket Reconnecting attempt #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/im/freechat/data/sources/websocket/WsService$reconnect$lambda-5$$inlined$fixedRateTimer$default$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-static {v3}, Lcom/im/freechat/data/sources/websocket/WsService;->access$getReconnectAttempt$p(Lcom/im/freechat/data/sources/websocket/WsService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$reconnect$lambda-5$$inlined$fixedRateTimer$default$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-static {v0}, Lcom/im/freechat/data/sources/websocket/WsService;->access$connect(Lcom/im/freechat/data/sources/websocket/WsService;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Socket missing network connection"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
