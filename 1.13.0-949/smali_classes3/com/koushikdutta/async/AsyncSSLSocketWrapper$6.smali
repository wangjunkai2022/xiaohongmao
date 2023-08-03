.class Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/koushikdutta/async/util/Allocator;

.field final b:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {p1}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/util/Allocator;->f(I)Lcom/koushikdutta/async/util/Allocator;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->a:Lcom/koushikdutta/async/util/Allocator;

    .line 3
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method


# virtual methods
.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-boolean v0, p1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->c:Z

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->w()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->n()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 7
    :cond_1
    sget-object p1, Lcom/koushikdutta/async/ByteBufferList;->j:Ljava/nio/ByteBuffer;

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->T()I

    move-result p2

    if-lez p2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->Q()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    .line 11
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v2, v2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v2

    .line 12
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->a:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v3}, Lcom/koushikdutta/async/util/Allocator;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v4, v4, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4, p1, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 14
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v6, v5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v5, v6, v3}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->P(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)V

    .line 15
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->a:Lcom/koushikdutta/async/util/Allocator;

    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v5, v5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v5}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/koushikdutta/async/util/Allocator;->g(J)V

    .line 16
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v6, -0x1

    if-ne v3, v5, :cond_4

    .line 17
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->a:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {p2}, Lcom/koushikdutta/async/util/Allocator;->d()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v3}, Lcom/koushikdutta/async/util/Allocator;->f(I)Lcom/koushikdutta/async/util/Allocator;

    :goto_0
    const/4 p2, -0x1

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v5, :cond_6

    .line 19
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->e(Ljava/nio/ByteBuffer;)V

    .line 20
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->T()I

    move-result p1

    if-gt p1, v0, :cond_5

    goto :goto_2

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->n()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->e(Ljava/nio/ByteBuffer;)V

    .line 23
    sget-object p1, Lcom/koushikdutta/async/ByteBufferList;->j:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 24
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->N(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ne v3, p2, :cond_2

    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object p2, p2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->r:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result p2

    if-ne v2, p2, :cond_2

    .line 26
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->e(Ljava/nio/ByteBuffer;)V

    .line 27
    :goto_2
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->K0()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 28
    :try_start_1
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-static {p2, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->O(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :goto_3
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iput-boolean v1, p1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->c:Z

    return-void

    :goto_4
    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;->c:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iput-boolean v1, p2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->c:Z

    throw p1
.end method
