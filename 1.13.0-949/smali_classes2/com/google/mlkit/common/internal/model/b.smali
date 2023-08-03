.class final Lcom/google/mlkit/common/internal/model/b;
.super Lcom/google/mlkit/common/internal/model/c$b;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method constructor <init>(JLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/common/internal/model/c$b;-><init>()V

    iput-wide p1, p0, Lcom/google/mlkit/common/internal/model/b;->a:J

    iput-object p3, p0, Lcom/google/mlkit/common/internal/model/b;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/mlkit/common/internal/model/b;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/internal/model/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    iget-wide v0, p0, Lcom/google/mlkit/common/internal/model/b;->a:J

    return-wide v0
.end method

.method public c()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    iget-boolean v0, p0, Lcom/google/mlkit/common/internal/model/b;->c:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/common/internal/model/c$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/mlkit/common/internal/model/c$b;

    iget-wide v3, p0, Lcom/google/mlkit/common/internal/model/b;->a:J

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/common/internal/model/c$b;->b()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/mlkit/common/internal/model/b;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/mlkit/common/internal/model/c$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/mlkit/common/internal/model/b;->c:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/mlkit/common/internal/model/c$b;->c()Z

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/mlkit/common/internal/model/b;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    iget-object v2, p0, Lcom/google/mlkit/common/internal/model/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    iget-boolean v0, p0, Lcom/google/mlkit/common/internal/model/b;->c:Z

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/16 v0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v0, 0x4cf

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/google/mlkit/common/internal/model/b;->a:J

    iget-object v2, p0, Lcom/google/mlkit/common/internal/model/b;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/mlkit/common/internal/model/b;->c:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ModelLoggingInfo{size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", hash="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", manifestModel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
