.class public Lcom/koushikdutta/async/http/filter/InflaterInputFilter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "InflaterInputFilter.java"


# instance fields
.field private h:Ljava/util/zip/Inflater;

.field i:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>(Ljava/util/zip/Inflater;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/Inflater;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 3
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->i:Lcom/koushikdutta/async/ByteBufferList;

    .line 4
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->h:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->y(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->T()I

    move-result v0

    if-lez v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->Q()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 6
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->h:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->i:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 13
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->y(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    :cond_2
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 17
    iget-object p2, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->i:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 18
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->i:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, p1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->v0(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method protected v0(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Lcom/koushikdutta/async/http/filter/DataRemainingException;

    const-string v1, "data still remaining in inflater"

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/http/filter/DataRemainingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    return-void
.end method
