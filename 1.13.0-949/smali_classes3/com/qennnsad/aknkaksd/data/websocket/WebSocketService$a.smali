.class Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$a;
.super Ld5/a;
.source "WebSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$a;->a:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    invoke-direct {p0}, Ld5/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Ld5/a;->a(ILjava/lang/String;)V

    const-string p1, "WebSocketService_OK"

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-class p1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    monitor-enter p1

    const/4 p2, 0x0

    .line 4
    :try_start_0
    invoke-static {p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i(Z)Z

    .line 5
    invoke-static {p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->l(Z)Z

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$a;->a:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string p2, "\u4f60\u5df2\u7ecf\u6389\u7ebf."

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->k(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    .line 8
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ld5/a;->b(ILjava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClosing:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebSocketService_OK"

    invoke-static {p2, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Ld5/a;->c(Ljava/lang/Throwable;Lokhttp3/Response;)V

    .line 2
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$a;->a:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    invoke-static {p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->p(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V

    const-string p2, "WebSocketService_OK"

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-class p1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    monitor-enter p1

    const/4 p2, 0x0

    .line 5
    :try_start_0
    invoke-static {p2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->l(Z)Z

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ld5/a;->d(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onTextMessage-\u6536\u5230\u7684\u539f\u59cb\u6570\u636e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketService_OK"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$a;->a:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->n(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lokio/ByteString;)V
    .locals 0

    invoke-super {p0, p1}, Ld5/a;->e(Lokio/ByteString;)V

    return-void
.end method

.method public f(Lokhttp3/Response;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ld5/a;->f(Lokhttp3/Response;)V

    .line 2
    const-class p1, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    monitor-enter p1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->j()Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->j()Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/websocket/wsmanager/b;->f()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$a;->a:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v1, "\u8fde\u63a5\u65e0\u6548."

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->k(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;Ljava/lang/String;)V

    .line 6
    monitor-exit p1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i(Z)Z

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->l(Z)Z

    .line 9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "WebSocketService_OK"

    const-string v0, "Open"

    .line 10
    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$a;->a:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->m(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-super {p0}, Ld5/a;->g()V

    .line 2
    const-class v0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->i(Z)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "WebSocketService_OK"

    const-string v1, "\u91cd\u8fde / Reconnection..."

    .line 5
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$a;->a:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->o(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
