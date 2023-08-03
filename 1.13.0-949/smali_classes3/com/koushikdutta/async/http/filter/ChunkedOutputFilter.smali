.class public Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;
.super Lcom/koushikdutta/async/FilteredDataSink;
.source "ChunkedOutputFilter.java"


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/FilteredDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    return-void
.end method


# virtual methods
.method public E(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->e(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    return-object p1
.end method

.method public j()V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/BufferedDataSink;->B(I)V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/BufferedDataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/BufferedDataSink;->B(I)V

    return-void
.end method
