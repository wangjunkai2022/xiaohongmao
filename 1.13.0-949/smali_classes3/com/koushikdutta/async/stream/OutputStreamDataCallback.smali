.class public Lcom/koushikdutta/async/stream/OutputStreamDataCallback;
.super Ljava/lang/Object;
.source "OutputStreamDataCallback.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field private a:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->g(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public f()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->a:Ljava/io/OutputStream;

    return-object v0
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->T()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->Q()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->a:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->g(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 7
    :goto_3
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    throw p1
.end method
