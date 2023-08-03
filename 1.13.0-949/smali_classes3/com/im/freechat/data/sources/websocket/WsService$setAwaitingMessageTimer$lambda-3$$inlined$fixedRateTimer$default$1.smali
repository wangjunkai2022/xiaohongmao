.class public final Lcom/im/freechat/data/sources/websocket/WsService$setAwaitingMessageTimer$lambda-3$$inlined$fixedRateTimer$default$1;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/websocket/WsService;->setAwaitingMessageTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 WsService.kt\ncom/im/freechat/data/sources/websocket/WsService\n*L\n1#1,148:1\n136#2,3:149\n*E\n"
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService$setAwaitingMessageTimer$lambda-3$$inlined$fixedRateTimer$default$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There was no message received in 55 seconds! Reconnecting..."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltimber/log/Timber$b;->e(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$setAwaitingMessageTimer$lambda-3$$inlined$fixedRateTimer$default$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/im/freechat/data/sources/websocket/WsService;->access$reconnect(Lcom/im/freechat/data/sources/websocket/WsService;Z)V

    return-void
.end method
