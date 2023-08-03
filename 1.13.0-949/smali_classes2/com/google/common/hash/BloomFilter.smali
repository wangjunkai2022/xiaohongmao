.class public final Lcom/google/common/hash/BloomFilter;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Lcom/google/common/base/b0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/BloomFilter$b;,
        Lcom/google/common/hash/BloomFilter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/b0<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# instance fields
.field private final a:Lcom/google/common/hash/g$c;

.field private final b:I

.field private final c:Lcom/google/common/hash/Funnel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/hash/BloomFilter$c;


# direct methods
.method private constructor <init>(Lcom/google/common/hash/g$c;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/g$c;",
            "I",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;",
            "Lcom/google/common/hash/BloomFilter$c;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "numHashFunctions (%s) must be > 0"

    .line 3
    invoke-static {v2, v3, p2}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    const/16 v2, 0xff

    if-gt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "numHashFunctions (%s) must be <= 255"

    .line 4
    invoke-static {v0, v1, p2}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    .line 5
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/g$c;

    iput-object p1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    .line 6
    iput p2, p0, Lcom/google/common/hash/BloomFilter;->b:I

    .line 7
    invoke-static {p3}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/Funnel;

    iput-object p1, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    .line 8
    invoke-static {p4}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/BloomFilter$c;

    iput-object p1, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/hash/g$c;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$c;Lcom/google/common/hash/BloomFilter$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/g$c;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$c;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/g$c;
    .locals 0

    iget-object p0, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/hash/BloomFilter;)I
    .locals 0

    iget p0, p0, Lcom/google/common/hash/BloomFilter;->b:I

    return p0
.end method

.method static synthetic c(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/Funnel;
    .locals 0

    iget-object p0, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    return-object p0
.end method

.method public static create(Lcom/google/common/hash/Funnel;I)Lcom/google/common/hash/BloomFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    int-to-long v0, p1

    .line 3
    invoke-static {p0, v0, v1}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;J)Lcom/google/common/hash/BloomFilter;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/common/hash/Funnel;ID)Lcom/google/common/hash/BloomFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;ID)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1, p2, p3}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;JD)Lcom/google/common/hash/BloomFilter;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/common/hash/Funnel;J)Lcom/google/common/hash/BloomFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;J)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    .line 4
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;JD)Lcom/google/common/hash/BloomFilter;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/common/hash/Funnel;JD)Lcom/google/common/hash/BloomFilter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;JD)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    .line 2
    sget-object v5, Lcom/google/common/hash/g;->b:Lcom/google/common/hash/g;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/common/hash/BloomFilter;->h(Lcom/google/common/hash/Funnel;JDLcom/google/common/hash/BloomFilter$c;)Lcom/google/common/hash/BloomFilter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilter$c;
    .locals 0

    iget-object p0, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    return-object p0
.end method

.method static h(Lcom/google/common/hash/Funnel;JDLcom/google/common/hash/BloomFilter$c;)Lcom/google/common/hash/BloomFilter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;JD",
            "Lcom/google/common/hash/BloomFilter$c;",
            ")",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lh3/d;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Expected insertions (%s) must be >= 0"

    .line 2
    invoke-static {v2, v3, p1, p2}, Lcom/google/common/base/a0;->p(ZLjava/lang/String;J)V

    const-wide/16 v2, 0x0

    cmpl-double v5, p3, v2

    if-lez v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "False positive probability (%s) must be > 0.0"

    invoke-static {v2, v5, v3}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, p3, v2

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_2
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "False positive probability (%s) must be < 1.0"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {p5}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_3

    const-wide/16 p1, 0x1

    .line 6
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/hash/BloomFilter;->i(JD)J

    move-result-wide p3

    .line 7
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/hash/BloomFilter;->j(JJ)I

    move-result p1

    .line 8
    :try_start_0
    new-instance p2, Lcom/google/common/hash/BloomFilter;

    new-instance v0, Lcom/google/common/hash/g$c;

    invoke-direct {v0, p3, p4}, Lcom/google/common/hash/g$c;-><init>(J)V

    invoke-direct {p2, v0, p1, p0, p5}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/g$c;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$c;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Could not create BloomFilter of "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bits"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static i(JD)J
    .locals 3
    .annotation build Lh3/d;
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    const-wide/16 p2, 0x1

    :cond_0
    neg-long p0, p0

    long-to-double p0, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    mul-double p0, p0, p2

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    mul-double v0, v0, p2

    div-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0
.end method

.method static j(JJ)I
    .locals 0
    .annotation build Lh3/d;
    .end annotation

    long-to-double p2, p2

    long-to-double p0, p0

    div-double/2addr p2, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    mul-double p2, p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    const/4 p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private k()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/common/hash/BloomFilter$b;

    invoke-direct {v0, p0}, Lcom/google/common/hash/BloomFilter$b;-><init>(Lcom/google/common/hash/BloomFilter;)V

    return-object v0
.end method

.method public static readFrom(Ljava/io/InputStream;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/BloomFilter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "InputStream"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Funnel"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/l;->p(B)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 7
    :try_start_3
    invoke-static {}, Lcom/google/common/hash/g;->values()[Lcom/google/common/hash/g;

    move-result-object v3

    aget-object v3, v3, p0

    .line 8
    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    .line 9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/google/common/hash/BloomFilter;

    new-instance v5, Lcom/google/common/hash/g$c;

    invoke-direct {v5, v4}, Lcom/google/common/hash/g$c;-><init>([J)V

    invoke-direct {v1, v5, v2, p1, v3}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/g$c;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$c;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    move v8, v0

    move v0, p0

    move p0, v8

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    const/4 v2, -0x1

    :goto_1
    move v0, p0

    const/4 p0, -0x1

    goto :goto_2

    :catch_3
    move-exception p1

    const/4 p0, -0x1

    const/4 v2, -0x1

    .line 11
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to deserialize BloomFilter from InputStream. strategyOrdinal: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " numHashFunctions: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dataLength: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/hash/BloomFilter;->mightContain(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public approximateElementCount()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    invoke-virtual {v0}, Lcom/google/common/hash/g$c;->b()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    invoke-virtual {v2}, Lcom/google/common/hash/g$c;->a()J

    move-result-wide v2

    long-to-double v2, v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    neg-double v2, v2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v2

    neg-double v2, v2

    mul-double v2, v2, v0

    iget v0, p0, Lcom/google/common/hash/BloomFilter;->b:I

    int-to-double v0, v0

    div-double/2addr v2, v0

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 4
    invoke-static {v2, v3, v0}, Lcom/google/common/math/b;->q(DLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public copy()Lcom/google/common/hash/BloomFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/hash/BloomFilter;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    invoke-virtual {v1}, Lcom/google/common/hash/g$c;->c()Lcom/google/common/hash/g$c;

    move-result-object v1

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->b:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    iget-object v4, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/g$c;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$c;)V

    return-object v0
.end method

.method e()J
    .locals 2
    .annotation build Lh3/d;
    .end annotation

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    invoke-virtual {v0}, Lcom/google/common/hash/g$c;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/common/hash/BloomFilter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lcom/google/common/hash/BloomFilter;

    .line 3
    iget v1, p0, Lcom/google/common/hash/BloomFilter;->b:I

    iget v3, p1, Lcom/google/common/hash/BloomFilter;->b:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    iget-object v3, p1, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    iget-object v3, p1, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/common/hash/g$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object p1, p1, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public expectedFpp()D
    .locals 4

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    invoke-virtual {v0}, Lcom/google/common/hash/g$c;->a()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->e()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->b:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/hash/BloomFilter;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/w;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCompatible(Lcom/google/common/hash/BloomFilter;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p0, p1, :cond_0

    .line 2
    iget v0, p0, Lcom/google/common/hash/BloomFilter;->b:I

    iget v1, p1, Lcom/google/common/hash/BloomFilter;->b:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->e()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/common/hash/BloomFilter;->e()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    iget-object p1, p1, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mightContain(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->b:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/common/hash/BloomFilter$c;->f(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/g$c;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/Object;)Z
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->b:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/common/hash/BloomFilter$c;->g(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/g$c;)Z

    move-result p1

    return p1
.end method

.method public putAll(Lcom/google/common/hash/BloomFilter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Cannot combine a BloomFilter with itself."

    .line 2
    invoke-static {v2, v3}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 3
    iget v2, p0, Lcom/google/common/hash/BloomFilter;->b:I

    iget v3, p1, Lcom/google/common/hash/BloomFilter;->b:I

    if-ne v2, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "BloomFilters must have the same number of hash functions (%s != %s)"

    invoke-static {v4, v5, v2, v3}, Lcom/google/common/base/a0;->m(ZLjava/lang/String;II)V

    .line 4
    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->e()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/common/hash/BloomFilter;->e()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 5
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->e()J

    move-result-wide v9

    .line 6
    invoke-virtual {p1}, Lcom/google/common/hash/BloomFilter;->e()J

    move-result-wide v11

    const-string v8, "BloomFilters must have the same size underlying bit arrays (%s != %s)"

    .line 7
    invoke-static/range {v7 .. v12}, Lcom/google/common/base/a0;->s(ZLjava/lang/String;JJ)V

    .line 8
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    iget-object v2, p1, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    const-string v3, "BloomFilters must have equal strategies (%s != %s)"

    .line 10
    invoke-static {v0, v3, v1, v2}, Lcom/google/common/base/a0;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    iget-object v2, p1, Lcom/google/common/hash/BloomFilter;->c:Lcom/google/common/hash/Funnel;

    const-string v3, "BloomFilters must have equal funnels (%s != %s)"

    .line 13
    invoke-static {v0, v3, v1, v2}, Lcom/google/common/base/a0;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    iget-object p1, p1, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    invoke-virtual {v0, p1}, Lcom/google/common/hash/g$c;->e(Lcom/google/common/hash/g$c;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    iget-object p1, p0, Lcom/google/common/hash/BloomFilter;->d:Lcom/google/common/hash/BloomFilter$c;

    invoke-interface {p1}, Lcom/google/common/hash/BloomFilter$c;->ordinal()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/google/common/primitives/k;->a(J)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3
    iget p1, p0, Lcom/google/common/hash/BloomFilter;->b:I

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/google/common/primitives/l;->a(J)B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4
    iget-object p1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    iget-object p1, p1, Lcom/google/common/hash/g$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    iget-object v1, v1, Lcom/google/common/hash/g$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->a:Lcom/google/common/hash/g$c;

    iget-object v1, v1, Lcom/google/common/hash/g$c;->a:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
