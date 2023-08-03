.class Lcom/koushikdutta/async/http/WebSocketImpl$1;
.super Lcom/koushikdutta/async/http/HybiParser;
.source "WebSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/WebSocketImpl;->B0(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic X:Lcom/koushikdutta/async/http/WebSocketImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/DataEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->X:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/HybiParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    return-void
.end method


# virtual methods
.method protected A(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->X:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->O(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->X:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->O(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/WebSocket$StringCallback;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected B([B)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->X:Lcom/koushikdutta/async/http/WebSocketImpl;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/WebSocketImpl;->N(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method protected C(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->X:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->d0(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->X:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->d0(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PingCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/WebSocket$PingCallback;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected D(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->X:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->o0(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PongCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->X:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->o0(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PongCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/WebSocket$PongCallback;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected K(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->X:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/WebSocketImpl;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected M([B)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->X:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/WebSocketImpl;->c:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method protected z(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl$1;->X:Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-static {p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->P(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object p1

    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->close()V

    return-void
.end method
