.class public Lcom/koushikdutta/async/stream/OutputStreamDataSink;
.super Ljava/lang/Object;
.source "OutputStreamDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;


# instance fields
.field a:Lcom/koushikdutta/async/AsyncServer;

.field b:Ljava/io/OutputStream;

.field c:Lcom/koushikdutta/async/callback/WritableCallback;

.field d:Z

.field e:Ljava/lang/Exception;

.field f:Lcom/koushikdutta/async/callback/CompletedCallback;

.field g:Lcom/koushikdutta/async/callback/WritableCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->a:Lcom/koushikdutta/async/AsyncServer;

    .line 4
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->k(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public a0(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 5

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->T()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->Q()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->f()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 6
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->i(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 7
    :goto_3
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    throw v0
.end method

.method public b()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->a:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public e0(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->c:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method public f()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->b:Ljava/io/OutputStream;

    return-object v0
.end method

.method public f0()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public i(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->d:Z

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->e:Ljava/lang/Exception;

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->d:Z

    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->i(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->i(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public k(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public n(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->g:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method public v()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->c:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method
