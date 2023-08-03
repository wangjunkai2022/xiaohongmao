.class public Lcom/koushikdutta/async/http/WebSocketImpl;
.super Ljava/lang/Object;
.source "WebSocketImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/http/WebSocket;


# static fields
.field static final k:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/koushikdutta/async/AsyncSocket;

.field c:Lcom/koushikdutta/async/BufferedDataSink;

.field d:Ljava/lang/String;

.field e:Lcom/koushikdutta/async/http/HybiParser;

.field f:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private g:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

.field private h:Lcom/koushikdutta/async/callback/DataCallback;

.field private i:Lcom/koushikdutta/async/http/WebSocket$PingCallback;

.field private j:Lcom/koushikdutta/async/http/WebSocket$PongCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    .line 17
    new-instance v0, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->c:Lcom/koushikdutta/async/BufferedDataSink;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->a()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/WebSocketImpl;-><init>(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 2
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Origin"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    const/16 v1, 0x65

    .line 6
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 7
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Upgrade"

    const-string v3, "WebSocket"

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 8
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v3, "Connection"

    invoke-virtual {v1, v3, v2}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 9
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 10
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Protocol"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 13
    :cond_0
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->U()V

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->B0(ZZ)V

    return-void
.end method

.method private synthetic A0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->c:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    iget-object v2, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->e:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/http/HybiParser;->t(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method private B0(ZZ)V
    .locals 2

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/WebSocketImpl$1;

    iget-object v1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/WebSocketImpl$1;-><init>(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/DataEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->e:Lcom/koushikdutta/async/http/HybiParser;

    .line 2
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/HybiParser;->O(Z)V

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->e:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/HybiParser;->N(Z)V

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->k()V

    :cond_0
    return-void
.end method

.method private static C0(Ljava/util/UUID;)[B
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [J

    .line 3
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    const/4 p0, 0x1

    aput-wide v3, v2, p0

    invoke-virtual {v1, v2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    return-object v0
.end method

.method public static synthetic E(Lcom/koushikdutta/async/http/WebSocketImpl;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/WebSocketImpl;->z0([BII)V

    return-void
.end method

.method private static K(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "SHA-1"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "iso-8859-1"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    .line 4
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic N(Lcom/koushikdutta/async/http/WebSocketImpl;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->p0(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method static synthetic O(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$StringCallback;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->g:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    return-object p0
.end method

.method static synthetic P(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/AsyncSocket;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    return-object p0
.end method

.method static synthetic d0(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PingCallback;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->i:Lcom/koushikdutta/async/http/WebSocket$PingCallback;

    return-object p0
.end method

.method static synthetic o0(Lcom/koushikdutta/async/http/WebSocketImpl;)Lcom/koushikdutta/async/http/WebSocket$PongCallback;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->j:Lcom/koushikdutta/async/http/WebSocket$PongCallback;

    return-object p0
.end method

.method private p0(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 3
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->a:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/WebSocketImpl;->i()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    .line 8
    invoke-static {p0, p1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 9
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->a:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->a:Ljava/util/LinkedList;

    :cond_3
    return-void
.end method

.method public static synthetic q(Lcom/koushikdutta/async/http/WebSocketImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->A0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic s(Lcom/koushikdutta/async/http/WebSocketImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->x0(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs t0(Lcom/koushikdutta/async/http/AsyncHttpRequest;[Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/http/WebSocketImpl;->C0(Ljava/util/UUID;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Version"

    const-string v3, "13"

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string v2, "Sec-WebSocket-Key"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Sec-WebSocket-Extensions"

    const-string v2, "x-webkit-deflate-frame"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Connection"

    const-string v2, "Upgrade"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string v1, "websocket"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    if-eqz p1, :cond_0

    .line 8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const-string v4, "Sec-WebSocket-Protocol"

    .line 9
    invoke-virtual {v0, v4, v3}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Pragma"

    const-string v1, "no-cache"

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const-string p1, "Cache-Control"

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 12
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->i()Lcom/koushikdutta/async/http/Headers;

    move-result-object p0

    const-string p1, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.15 Safari/537.36"

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/Headers;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    :cond_1
    return-void
.end method

.method public static v0(Lcom/koushikdutta/async/http/Headers;Lcom/koushikdutta/async/http/AsyncHttpResponse;)Lcom/koushikdutta/async/http/WebSocket;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->c()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Upgrade"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "websocket"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 3
    :cond_2
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string v2, "Sec-WebSocket-Key"

    .line 4
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v0

    .line 5
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/koushikdutta/async/http/WebSocketImpl;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "Sec-WebSocket-Extensions"

    .line 8
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    const-string v2, "x-webkit-deflate-frame"

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    .line 10
    :cond_6
    new-instance p0, Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->W()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/koushikdutta/async/http/WebSocketImpl;-><init>(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 11
    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->f()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    const-string v2, "Sec-WebSocket-Protocol"

    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->d:Ljava/lang/String;

    .line 12
    invoke-direct {p0, v1, v0}, Lcom/koushikdutta/async/http/WebSocketImpl;->B0(ZZ)V

    return-object p0
.end method

.method private synthetic w0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->c:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->e:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v3, p1}, Lcom/koushikdutta/async/http/HybiParser;->I(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method private synthetic x0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->c:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->e:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v3, p1}, Lcom/koushikdutta/async/http/HybiParser;->J(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public static synthetic y(Lcom/koushikdutta/async/http/WebSocketImpl;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->y0([B)V

    return-void
.end method

.method private synthetic y0([B)V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->c:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    iget-object v2, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->e:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/http/HybiParser;->u([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public static synthetic z(Lcom/koushikdutta/async/http/WebSocketImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->w0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic z0([BII)V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->c:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    iget-object v2, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->e:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v2, p1, p2, p3}, Lcom/koushikdutta/async/http/HybiParser;->v([BII)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/WebSocketImpl;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/l;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/http/l;-><init>(Lcom/koushikdutta/async/http/WebSocketImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public B()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public H(Lcom/koushikdutta/async/http/WebSocket$StringCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->g:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    return-void
.end method

.method public J([B)V
    .locals 2

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/WebSocketImpl;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/n;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/http/n;-><init>(Lcom/koushikdutta/async/http/WebSocketImpl;[B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public M()Lcom/koushikdutta/async/http/WebSocket$StringCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->g:Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    return-object v0
.end method

.method public V(Lcom/koushikdutta/async/http/WebSocket$PingCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->i:Lcom/koushikdutta/async/http/WebSocket$PingCallback;

    return-void
.end method

.method public X(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public Z()Lcom/koushikdutta/async/http/WebSocket$PongCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->j:Lcom/koushikdutta/async/http/WebSocket$PongCallback;

    return-object v0
.end method

.method public a()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public a0(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->p()[B

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/WebSocketImpl;->J([B)V

    return-void
.end method

.method public b()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public b0(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->h:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    return-void
.end method

.method public e0(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->c:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->e0(Lcom/koushikdutta/async/callback/WritableCallback;)V

    return-void
.end method

.method public f0()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->f0()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public h0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->i()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->j()V

    return-void
.end method

.method public j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->k()V

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n0([BII)V
    .locals 2

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/WebSocketImpl;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/o;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/koushikdutta/async/http/o;-><init>(Lcom/koushikdutta/async/http/WebSocketImpl;[BII)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->pause()V

    return-void
.end method

.method public ping(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/WebSocketImpl;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/m;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/http/m;-><init>(Lcom/koushikdutta/async/http/WebSocketImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public q0()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->c:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->y()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r0()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->h:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/WebSocketImpl;->b()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/k;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/http/k;-><init>(Lcom/koushikdutta/async/http/WebSocketImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method

.method public v()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->c:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->v()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    return-object v0
.end method

.method public w(Lcom/koushikdutta/async/http/WebSocket$PongCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/WebSocketImpl;->j:Lcom/koushikdutta/async/http/WebSocket$PongCallback;

    return-void
.end method
