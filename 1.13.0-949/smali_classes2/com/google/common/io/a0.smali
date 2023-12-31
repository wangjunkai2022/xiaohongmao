.class final Lcom/google/common/io/a0;
.super Ljava/io/InputStream;
.source "ReaderInputStream.java"


# annotations
.annotation build Lh3/c;
.end annotation


# instance fields
.field private final a:Ljava/io/Reader;

.field private final b:Ljava/nio/charset/CharsetEncoder;

.field private final c:[B

.field private d:Ljava/nio/CharBuffer;

.field private e:Ljava/nio/ByteBuffer;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2
    invoke-virtual {p2, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 3
    invoke-virtual {p2, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/io/a0;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 6
    iput-object v1, p0, Lcom/google/common/io/a0;->c:[B

    .line 7
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Reader;

    iput-object p1, p0, Lcom/google/common/io/a0;->a:Ljava/io/Reader;

    .line 8
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    iput-object p1, p0, Lcom/google/common/io/a0;->b:Ljava/nio/charset/CharsetEncoder;

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p1, "bufferSize must be positive: %s"

    .line 9
    invoke-static {v0, p1, p3}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 11
    invoke-static {p3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/a0;->d:Ljava/nio/CharBuffer;

    .line 12
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 13
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/a0;->e:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static a(Ljava/nio/Buffer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private b([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/a0;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2
    iget-object v0, p0, Lcom/google/common/io/a0;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

.method private static d(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/a0;->d:Ljava/nio/CharBuffer;

    invoke-static {v0}, Lcom/google/common/io/a0;->a(Ljava/nio/Buffer;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/io/a0;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/io/a0;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/io/a0;->d:Ljava/nio/CharBuffer;

    invoke-static {v0}, Lcom/google/common/io/a0;->d(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/a0;->d:Ljava/nio/CharBuffer;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/common/io/a0;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/google/common/io/a0;->a:Ljava/io/Reader;

    iget-object v2, p0, Lcom/google/common/io/a0;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/io/a0;->d:Ljava/nio/CharBuffer;

    invoke-static {v3}, Lcom/google/common/io/a0;->a(Ljava/nio/Buffer;)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/common/io/a0;->f:Z

    goto :goto_1

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/google/common/io/a0;->d:Ljava/nio/CharBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_1
    return-void
.end method

.method private i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/a0;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/common/io/a0;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/common/io/a0;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/a0;->e:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/common/io/a0;->g:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/a0;->a:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/a0;->c:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/io/a0;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/l;->p(B)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/a0;->f0(III)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/google/common/io/a0;->f:Z

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-boolean v3, p0, Lcom/google/common/io/a0;->g:Z

    if-eqz v3, :cond_4

    add-int v3, p2, v2

    sub-int v4, p3, v2

    .line 5
    invoke-direct {p0, p1, v3, v4}, Lcom/google/common/io/a0;->b([BII)I

    move-result v3

    add-int/2addr v2, v3

    if-eq v2, p3, :cond_2

    .line 6
    iget-boolean v3, p0, Lcom/google/common/io/a0;->h:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iput-boolean v0, p0, Lcom/google/common/io/a0;->g:Z

    .line 8
    iget-object v3, p0, Lcom/google/common/io/a0;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_3

    :cond_2
    :goto_1
    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    :goto_2
    return v2

    .line 9
    :cond_4
    :goto_3
    iget-boolean v3, p0, Lcom/google/common/io/a0;->h:Z

    if-eqz v3, :cond_5

    .line 10
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    .line 11
    iget-object v3, p0, Lcom/google/common/io/a0;->b:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/google/common/io/a0;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v3

    goto :goto_4

    .line 12
    :cond_6
    iget-object v3, p0, Lcom/google/common/io/a0;->b:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/google/common/io/a0;->d:Ljava/nio/CharBuffer;

    iget-object v5, p0, Lcom/google/common/io/a0;->e:Ljava/nio/ByteBuffer;

    iget-boolean v6, p0, Lcom/google/common/io/a0;->f:Z

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 13
    :goto_4
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    .line 14
    invoke-direct {p0, v5}, Lcom/google/common/io/a0;->i(Z)V

    goto :goto_0

    .line 15
    :cond_7
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v1, :cond_8

    .line 16
    iput-boolean v5, p0, Lcom/google/common/io/a0;->h:Z

    .line 17
    invoke-direct {p0, v0}, Lcom/google/common/io/a0;->i(Z)V

    goto :goto_0

    .line 18
    :cond_8
    iget-boolean v3, p0, Lcom/google/common/io/a0;->f:Z

    if-eqz v3, :cond_9

    const/4 v1, 0x1

    goto :goto_3

    .line 19
    :cond_9
    invoke-direct {p0}, Lcom/google/common/io/a0;->h()V

    goto :goto_3

    .line 20
    :cond_a
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 21
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->throwException()V

    return v0
.end method
