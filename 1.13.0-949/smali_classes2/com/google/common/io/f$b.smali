.class Lcom/google/common/io/f$b;
.super Lcom/google/common/io/f;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:[B

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/io/f$b;-><init>([BII)V

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/io/f;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/io/f$b;->a:[B

    .line 4
    iput p2, p0, Lcom/google/common/io/f$b;->b:I

    .line 5
    iput p3, p0, Lcom/google/common/io/f$b;->c:I

    return-void
.end method


# virtual methods
.method public g(Ljava/io/OutputStream;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/f$b;->a:[B

    iget v1, p0, Lcom/google/common/io/f$b;->b:I

    iget v2, p0, Lcom/google/common/io/f$b;->c:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2
    iget p1, p0, Lcom/google/common/io/f$b;->c:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public j(Lcom/google/common/hash/m;)Lcom/google/common/hash/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/f$b;->a:[B

    iget v1, p0, Lcom/google/common/io/f$b;->b:I

    iget v2, p0, Lcom/google/common/io/f$b;->c:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/common/hash/m;->m([BII)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 1

    iget v0, p0, Lcom/google/common/io/f$b;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/io/f$b;->m()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/common/io/f$b;->a:[B

    iget v2, p0, Lcom/google/common/io/f$b;->b:I

    iget v3, p0, Lcom/google/common/io/f$b;->c:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public n(Lcom/google/common/io/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/d<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/f$b;->a:[B

    iget v1, p0, Lcom/google/common/io/f$b;->b:I

    iget v2, p0, Lcom/google/common/io/f$b;->c:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/common/io/d;->b([BII)Z

    .line 2
    invoke-interface {p1}, Lcom/google/common/io/d;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o()[B
    .locals 3

    iget-object v0, p0, Lcom/google/common/io/f$b;->a:[B

    iget v1, p0, Lcom/google/common/io/f$b;->b:I

    iget v2, p0, Lcom/google/common/io/f$b;->c:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public p()J
    .locals 2

    iget v0, p0, Lcom/google/common/io/f$b;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public q()Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/io/f$b;->c:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public r(JJ)Lcom/google/common/io/f;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "offset (%s) may not be negative"

    .line 1
    invoke-static {v4, v5, p1, p2}, Lcom/google/common/base/a0;->p(ZLjava/lang/String;J)V

    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "length (%s) may not be negative"

    .line 2
    invoke-static {v0, v1, p3, p4}, Lcom/google/common/base/a0;->p(ZLjava/lang/String;J)V

    .line 3
    iget v0, p0, Lcom/google/common/io/f$b;->c:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 4
    iget v0, p0, Lcom/google/common/io/f$b;->c:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 5
    iget v0, p0, Lcom/google/common/io/f$b;->b:I

    long-to-int p2, p1

    add-int/2addr v0, p2

    .line 6
    new-instance p1, Lcom/google/common/io/f$b;

    iget-object p2, p0, Lcom/google/common/io/f$b;->a:[B

    long-to-int p4, p3

    invoke-direct {p1, p2, v0, p4}, Lcom/google/common/io/f$b;-><init>([BII)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteSource.wrap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->a()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/f$b;->a:[B

    iget v3, p0, Lcom/google/common/io/f$b;->b:I

    iget v4, p0, Lcom/google/common/io/f$b;->c:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/BaseEncoding;->m([BII)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const-string v3, "..."

    invoke-static {v1, v2, v3}, Lcom/google/common/base/c;->k(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
