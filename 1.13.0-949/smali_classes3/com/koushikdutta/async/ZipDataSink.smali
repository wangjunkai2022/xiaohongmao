.class public Lcom/koushikdutta/async/ZipDataSink;
.super Lcom/koushikdutta/async/FilteredDataSink;
.source "ZipDataSink.java"


# instance fields
.field g:Ljava/io/ByteArrayOutputStream;

.field h:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/FilteredDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    .line 2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/ZipDataSink;->g:Ljava/io/ByteArrayOutputStream;

    .line 3
    new-instance p1, Ljava/util/zip/ZipOutputStream;

    iget-object v0, p0, Lcom/koushikdutta/async/ZipDataSink;->g:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/koushikdutta/async/ZipDataSink;->h:Ljava/util/zip/ZipOutputStream;

    return-void
.end method


# virtual methods
.method public E(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 2

    if-eqz p1, :cond_0

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
    iget-object v1, p0, Lcom/koushikdutta/async/ZipDataSink;->h:Ljava/util/zip/ZipOutputStream;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->X(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    .line 4
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    iget-object v1, p0, Lcom/koushikdutta/async/ZipDataSink;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    .line 6
    iget-object v1, p0, Lcom/koushikdutta/async/ZipDataSink;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    :cond_1
    return-object v0

    .line 8
    :goto_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ZipDataSink;->K(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    :cond_2
    return-object v0

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    :cond_3
    throw v0
.end method

.method public F()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/ZipDataSink;->h:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method

.method public G(Ljava/util/zip/ZipEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/ZipDataSink;->h:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    return-void
.end method

.method protected K(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->f0()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/ZipDataSink;->h:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    .line 2
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/BufferedDataSink;->B(I)V

    .line 3
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/BufferedDataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 4
    invoke-super {p0}, Lcom/koushikdutta/async/BufferedDataSink;->j()V

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ZipDataSink;->K(Ljava/lang/Exception;)V

    return-void
.end method
