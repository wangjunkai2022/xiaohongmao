.class public Lcom/fasterxml/jackson/core/io/SerializedString;
.super Ljava/lang/Object;
.source "SerializedString.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/j;
.implements Ljava/io/Serializable;


# static fields
.field private static final f:J = 0x1L

.field private static final g:Lcom/fasterxml/jackson/core/io/e;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:[B

.field protected c:[B

.field protected d:[C

.field protected transient e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/core/io/e;->k()Lcom/fasterxml/jackson/core/io/e;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->g:Lcom/fasterxml/jackson/core/io/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null String illegal for SerializedString"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->e:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendQuoted([CI)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->d:[C

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->g:Lcom/fasterxml/jackson/core/io/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/e;->n(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->d:[C

    .line 3
    :cond_0
    array-length v1, v0

    add-int v2, p2, v1

    .line 4
    array-length v3, p1

    if-le v2, v3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public appendQuotedUTF8([BI)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->b:[B

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->g:Lcom/fasterxml/jackson/core/io/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/e;->o(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->b:[B

    .line 3
    :cond_0
    array-length v1, v0

    add-int v2, p2, v1

    .line 4
    array-length v3, p1

    if-le v2, v3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public appendUnquoted([CI)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, p2, v1

    .line 3
    array-length v3, p1

    if-le v2, v3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    return v1
.end method

.method public appendUnquotedUTF8([BI)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->c:[B

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->g:Lcom/fasterxml/jackson/core/io/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/e;->j(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->c:[B

    .line 3
    :cond_0
    array-length v1, v0

    add-int v2, p2, v1

    .line 4
    array-length v3, p1

    if-le v2, v3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public final asQuotedChars()[C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->d:[C

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->g:Lcom/fasterxml/jackson/core/io/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/e;->n(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->d:[C

    :cond_0
    return-object v0
.end method

.method public final asQuotedUTF8()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->b:[B

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->g:Lcom/fasterxml/jackson/core/io/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/e;->o(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->b:[B

    :cond_0
    return-object v0
.end method

.method public final asUnquotedUTF8()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->c:[B

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->g:Lcom/fasterxml/jackson/core/io/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/e;->j(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->c:[B

    :cond_0
    return-object v0
.end method

.method protected b()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final charLength()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public putQuotedUTF8(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->b:[B

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->g:Lcom/fasterxml/jackson/core/io/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/e;->o(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->b:[B

    .line 3
    :cond_0
    array-length v1, v0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return v1
.end method

.method public putUnquotedUTF8(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->c:[B

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->g:Lcom/fasterxml/jackson/core/io/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/e;->j(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->c:[B

    .line 3
    :cond_0
    array-length v1, v0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeQuotedUTF8(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->b:[B

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->g:Lcom/fasterxml/jackson/core/io/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/e;->o(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->b:[B

    .line 3
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return v1
.end method

.method public writeUnquotedUTF8(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->c:[B

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->g:Lcom/fasterxml/jackson/core/io/e;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/e;->j(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->c:[B

    .line 3
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return v1
.end method
