.class abstract Lcom/google/common/hash/c;
.super Ljava/lang/Object;
.source "AbstractHashFunction.java"

# interfaces
.implements Lcom/google/common/hash/m;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/l;
    .locals 1

    invoke-interface {p0}, Lcom/google/common/hash/m;->h()Lcom/google/common/hash/n;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/n;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/n;->i()Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/hash/c;->d(I)Lcom/google/common/hash/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/n;->d(Ljava/lang/CharSequence;)Lcom/google/common/hash/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/n;->i()Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lcom/google/common/hash/n;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expectedInputSize must be >= 0 but was %s"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    .line 2
    invoke-interface {p0}, Lcom/google/common/hash/m;->h()Lcom/google/common/hash/n;

    move-result-object p1

    return-object p1
.end method

.method public e([B)Lcom/google/common/hash/l;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/hash/c;->m([BII)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public i(I)Lcom/google/common/hash/l;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/common/hash/c;->d(I)Lcom/google/common/hash/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/n;->putInt(I)Lcom/google/common/hash/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/n;->i()Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/l;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/hash/m;->h()Lcom/google/common/hash/n;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/n;->h(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/n;->i()Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/l;
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/c;->d(I)Lcom/google/common/hash/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/n;->f(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/n;->i()Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public l(J)Lcom/google/common/hash/l;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/common/hash/c;->d(I)Lcom/google/common/hash/n;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/n;->putLong(J)Lcom/google/common/hash/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/n;->i()Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public m([BII)Lcom/google/common/hash/l;
    .locals 2

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/a0;->f0(III)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/common/hash/c;->d(I)Lcom/google/common/hash/n;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/n;->e([BII)Lcom/google/common/hash/n;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/n;->i()Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method
