.class final Lcom/google/common/hash/v;
.super Lcom/google/common/hash/c0;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/common/hash/t;


# static fields
.field private static final j:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/hash/c0;-><init>()V

    return-void
.end method

.method private n(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/common/hash/c0;->c:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/hash/c0;->a:[Lcom/google/common/hash/c0$b;

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/c0;->b:J

    return-void
.end method

.method private q(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/hash/v;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/c0;->a:[Lcom/google/common/hash/c0$b;

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/google/common/hash/c0;->b:J

    add-long v3, v1, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/common/hash/c0;->e(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    :cond_0
    sget-object v1, Lcom/google/common/hash/c0;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lt v3, v2, :cond_1

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    and-int/2addr v3, v4

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/google/common/hash/c0$b;->h:J

    add-long v4, v2, p1

    .line 3
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/common/hash/c0$b;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/hash/c0;->l(J[IZ)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/hash/v;->a(J)V

    return-void
.end method

.method public c()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/common/hash/c0;->b:J

    .line 2
    iget-object v2, p0, Lcom/google/common/hash/c0;->a:[Lcom/google/common/hash/c0$b;

    if-eqz v2, :cond_1

    .line 3
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 4
    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    .line 5
    iget-wide v5, v5, Lcom/google/common/hash/c0$b;->h:J

    add-long/2addr v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/hash/v;->c()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/hash/v;->c()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final i(JJ)J
    .locals 0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public intValue()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/hash/v;->c()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/hash/v;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/hash/v;->a(J)V

    return-void
.end method

.method public o()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/hash/c0;->k(J)V

    return-void
.end method

.method public p()J
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/common/hash/c0;->b:J

    .line 2
    iget-object v2, p0, Lcom/google/common/hash/c0;->a:[Lcom/google/common/hash/c0$b;

    const-wide/16 v3, 0x0

    .line 3
    iput-wide v3, p0, Lcom/google/common/hash/c0;->b:J

    if-eqz v2, :cond_1

    .line 4
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    .line 5
    aget-object v7, v2, v6

    if-eqz v7, :cond_0

    .line 6
    iget-wide v8, v7, Lcom/google/common/hash/c0$b;->h:J

    add-long/2addr v0, v8

    .line 7
    iput-wide v3, v7, Lcom/google/common/hash/c0$b;->h:J

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/hash/v;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
