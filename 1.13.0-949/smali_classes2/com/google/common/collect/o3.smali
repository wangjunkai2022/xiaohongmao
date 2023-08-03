.class final Lcom/google/common/collect/o3;
.super Lcom/google/common/collect/s3;
.source "NullsLastOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/s3<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/b;
    serializable = true
.end annotation


# static fields
.field private static final d:J


# instance fields
.field final c:Lcom/google/common/collect/s3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/s3<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/s3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/s3<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/s3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/o3;->c:Lcom/google/common/collect/s3;

    return-void
.end method


# virtual methods
.method public C()Lcom/google/common/collect/s3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/s3<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o3;->c:Lcom/google/common/collect/s3;

    invoke-virtual {v0}, Lcom/google/common/collect/s3;->C()Lcom/google/common/collect/s3;

    move-result-object v0

    return-object v0
.end method

.method public D()Lcom/google/common/collect/s3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/s3<",
            "TS;>;"
        }
    .end annotation

    return-object p0
.end method

.method public G()Lcom/google/common/collect/s3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/s3<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o3;->c:Lcom/google/common/collect/s3;

    invoke-virtual {v0}, Lcom/google/common/collect/s3;->G()Lcom/google/common/collect/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/s3;->C()Lcom/google/common/collect/s3;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/o3;->c:Lcom/google/common/collect/s3;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/s3;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/o3;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/common/collect/o3;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/o3;->c:Lcom/google/common/collect/s3;

    iget-object p1, p1, Lcom/google/common/collect/o3;->c:Lcom/google/common/collect/s3;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/o3;->c:Lcom/google/common/collect/s3;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x36e88db8    # -620324.5f

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/o3;->c:Lcom/google/common/collect/s3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".nullsLast()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
