.class public Lcom/fasterxml/jackson/core/io/j;
.super Ljava/io/Reader;
.source "UTF32Reader.java"


# static fields
.field protected static final l:I = 0x10ffff

.field protected static final m:C


# instance fields
.field protected final a:Lcom/fasterxml/jackson/core/io/d;

.field protected b:Ljava/io/InputStream;

.field protected c:[B

.field protected d:I

.field protected e:I

.field protected final f:Z

.field protected g:C

.field protected h:I

.field protected i:I

.field protected final j:Z

.field protected k:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;Ljava/io/InputStream;[BIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/j;->g:C

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/j;->a:Lcom/fasterxml/jackson/core/io/d;

    .line 4
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/j;->b:Ljava/io/InputStream;

    .line 5
    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    .line 6
    iput p4, p0, Lcom/fasterxml/jackson/core/io/j;->d:I

    .line 7
    iput p5, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    .line 8
    iput-boolean p6, p0, Lcom/fasterxml/jackson/core/io/j;->f:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 9
    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/io/j;->j:Z

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/j;->a:Lcom/fasterxml/jackson/core/io/d;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/d;->v([B)V

    :cond_0
    return-void
.end method

.method private b(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->b:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v3, p0, Lcom/fasterxml/jackson/core/io/j;->i:I

    iget v4, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    sub-int/2addr v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/io/j;->i:I

    const/4 v3, 0x1

    if-lez p1, :cond_2

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/io/j;->d:I

    if-lez v0, :cond_1

    .line 4
    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput v1, p0, Lcom/fasterxml/jackson/core/io/j;->d:I

    .line 6
    :cond_1
    iput p1, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    goto :goto_0

    .line 7
    :cond_2
    iput v1, p0, Lcom/fasterxml/jackson/core/io/j;->d:I

    .line 8
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ge p1, v3, :cond_5

    .line 9
    iput v1, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    if-gez p1, :cond_4

    .line 10
    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/io/j;->j:Z

    if-eqz p1, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/j;->a()V

    :cond_3
    return v1

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/j;->i()V

    .line 13
    :cond_5
    iput p1, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    .line 14
    :goto_0
    iget p1, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_9

    .line 15
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/j;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    array-length v4, v2

    sub-int/2addr v4, p1

    invoke-virtual {v1, v2, p1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ge p1, v3, :cond_8

    if-gez p1, :cond_7

    .line 16
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/io/j;->j:Z

    if-eqz v1, :cond_6

    .line 17
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/j;->a()V

    .line 18
    :cond_6
    iget v1, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/core/io/j;->k(II)V

    .line 19
    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/j;->i()V

    .line 20
    :cond_8
    iget v0, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    goto :goto_0

    :cond_9
    return v3

    :cond_a
    :goto_1
    return v1
.end method

.method private d([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "read(buf,%d,%d), cbuf[%d]"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h(IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/io/j;->i:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/j;->d:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/fasterxml/jackson/core/io/j;->h:I

    add-int/2addr v1, p2

    .line 2
    new-instance p2, Ljava/io/CharConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid UTF-32 character 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at char #"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", byte #"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/io/j;->i:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/fasterxml/jackson/core/io/j;->h:I

    .line 2
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", needed "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", at char #"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", byte #"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/j;->b:Ljava/io/InputStream;

    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/j;->a()V

    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->k:[C

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [C

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->k:[C

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->k:[C

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/j;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->k:[C

    aget-char v0, v0, v2

    return v0
.end method

.method public read([CII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    return p3

    :cond_1
    if-ltz p2, :cond_2

    add-int v2, p2, p3

    .line 6
    array-length v3, p1

    if-le v2, v3, :cond_3

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/j;->d([CII)V

    :cond_3
    add-int/2addr p3, p2

    .line 8
    iget-char v2, p0, Lcom/fasterxml/jackson/core/io/j;->g:C

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_4

    add-int/lit8 v1, p2, 0x1

    .line 9
    aput-char v2, p1, p2

    .line 10
    iput-char v3, p0, Lcom/fasterxml/jackson/core/io/j;->g:C

    goto :goto_0

    .line 11
    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    iget v5, p0, Lcom/fasterxml/jackson/core/io/j;->d:I

    sub-int/2addr v2, v5

    if-ge v2, v4, :cond_6

    .line 12
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/io/j;->b(I)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v2, :cond_5

    return v1

    .line 13
    :cond_5
    iget v1, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    iget v2, p0, Lcom/fasterxml/jackson/core/io/j;->d:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v4}, Lcom/fasterxml/jackson/core/io/j;->k(II)V

    :cond_6
    move v1, p2

    .line 14
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/io/j;->e:I

    sub-int/2addr v2, v4

    :goto_1
    if-ge v1, p3, :cond_b

    .line 15
    iget v4, p0, Lcom/fasterxml/jackson/core/io/j;->d:I

    if-gt v4, v2, :cond_b

    .line 16
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/io/j;->f:Z

    if-eqz v5, :cond_7

    .line 17
    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    aget-byte v6, v5, v4

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x2

    .line 18
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v4, 0x3

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v7

    goto :goto_2

    .line 19
    :cond_7
    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/j;->c:[B

    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x2

    .line 20
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v4, 0x3

    aget-byte v5, v5, v8

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v7

    move v9, v6

    move v6, v5

    move v5, v9

    :goto_2
    add-int/lit8 v4, v4, 0x4

    .line 21
    iput v4, p0, Lcom/fasterxml/jackson/core/io/j;->d:I

    if-eqz v6, :cond_a

    const v4, 0xffff

    and-int/2addr v4, v6

    add-int/lit8 v6, v4, -0x1

    const/16 v7, 0x10

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    if-le v4, v7, :cond_8

    sub-int v4, v1, p2

    new-array v6, v0, [Ljava/lang/Object;

    const v7, 0x10ffff

    .line 22
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, " (above 0x%08x)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-direct {p0, v5, v4, v6}, Lcom/fasterxml/jackson/core/io/j;->h(IILjava/lang/String;)V

    :cond_8
    add-int/lit8 v4, v1, 0x1

    const v6, 0xd800

    shr-int/lit8 v7, v5, 0xa

    add-int/2addr v7, v6

    int-to-char v6, v7

    .line 24
    aput-char v6, p1, v1

    const v1, 0xdc00

    and-int/lit16 v6, v5, 0x3ff

    or-int/2addr v1, v6

    if-lt v4, p3, :cond_9

    int-to-char p1, v5

    .line 25
    iput-char p1, p0, Lcom/fasterxml/jackson/core/io/j;->g:C

    move v1, v4

    goto :goto_3

    :cond_9
    move v5, v1

    move v1, v4

    :cond_a
    add-int/lit8 v4, v1, 0x1

    int-to-char v5, v5

    .line 26
    aput-char v5, p1, v1

    move v1, v4

    goto/16 :goto_1

    :cond_b
    :goto_3
    sub-int/2addr v1, p2

    .line 27
    iget p1, p0, Lcom/fasterxml/jackson/core/io/j;->h:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/fasterxml/jackson/core/io/j;->h:I

    return v1
.end method
