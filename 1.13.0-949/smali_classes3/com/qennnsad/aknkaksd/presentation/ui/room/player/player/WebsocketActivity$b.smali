.class Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$b;
.super Ljava/lang/Object;
.source "WebsocketActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v0, "Service connected."

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    check-cast p2, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$c;

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$c;->a()Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->D1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->E1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    move-result-object p1

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->L(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$b;)V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->R1()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v0, "Service disconnected."

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
