.class abstract Lcom/google/common/hash/e;
.super Lcom/google/common/hash/c;
.source "AbstractNonStreamingHashFunction.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/e$b;,
        Lcom/google/common/hash/e$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/l;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/c;->e([B)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/c;->e([B)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lcom/google/common/hash/n;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    new-instance v0, Lcom/google/common/hash/e$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/e$a;-><init>(Lcom/google/common/hash/e;I)V

    return-object v0
.end method

.method public h()Lcom/google/common/hash/n;
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/common/hash/e;->d(I)Lcom/google/common/hash/n;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lcom/google/common/hash/l;
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/c;->e([B)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/l;
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/e;->d(I)Lcom/google/common/hash/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/n;->f(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/n;->i()Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public l(J)Lcom/google/common/hash/l;
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/c;->e([B)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public abstract m([BII)Lcom/google/common/hash/l;
.end method
