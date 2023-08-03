.class final Lcom/google/common/hash/b0;
.super Lcom/google/common/hash/c;
.source "SipHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/b0$a;
    }
.end annotation


# static fields
.field static final e:Lcom/google/common/hash/m;

.field private static final f:J


# instance fields
.field private final a:I

.field private final b:I

.field private final c:J

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Lcom/google/common/hash/b0;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide v3, 0x706050403020100L

    const-wide v5, 0xf0e0d0c0b0a0908L

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/b0;-><init>(IIJJ)V

    sput-object v7, Lcom/google/common/hash/b0;->e:Lcom/google/common/hash/m;

    return-void
.end method

.method constructor <init>(IIJJ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "The number of SipRound iterations (c=%s) during Compression must be positive."

    .line 2
    invoke-static {v2, v3, p1}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "The number of SipRound iterations (d=%s) during Finalization must be positive."

    .line 3
    invoke-static {v0, v1, p2}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    .line 4
    iput p1, p0, Lcom/google/common/hash/b0;->a:I

    .line 5
    iput p2, p0, Lcom/google/common/hash/b0;->b:I

    .line 6
    iput-wide p3, p0, Lcom/google/common/hash/b0;->c:J

    .line 7
    iput-wide p5, p0, Lcom/google/common/hash/b0;->d:J

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/hash/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/hash/b0;

    .line 3
    iget v0, p0, Lcom/google/common/hash/b0;->a:I

    iget v2, p1, Lcom/google/common/hash/b0;->a:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/common/hash/b0;->b:I

    iget v2, p1, Lcom/google/common/hash/b0;->b:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lcom/google/common/hash/b0;->c:J

    iget-wide v4, p1, Lcom/google/common/hash/b0;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/common/hash/b0;->d:J

    iget-wide v4, p1, Lcom/google/common/hash/b0;->d:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public h()Lcom/google/common/hash/n;
    .locals 8

    new-instance v7, Lcom/google/common/hash/b0$a;

    iget v1, p0, Lcom/google/common/hash/b0;->a:I

    iget v2, p0, Lcom/google/common/hash/b0;->b:I

    iget-wide v3, p0, Lcom/google/common/hash/b0;->c:J

    iget-wide v5, p0, Lcom/google/common/hash/b0;->d:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/b0$a;-><init>(IIJJ)V

    return-object v7
.end method

.method public hashCode()I
    .locals 4

    const-class v0, Lcom/google/common/hash/b0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/b0;->a:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/hash/b0;->b:I

    xor-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/hash/b0;->c:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/b0;->d:J

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing.sipHash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/common/hash/b0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/common/hash/b0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/common/hash/b0;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/common/hash/b0;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
