.class final Lcom/google/common/collect/l3$d;
.super Lcom/google/common/collect/l3$n;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l3;->g(Lcom/google/common/collect/k3;Lcom/google/common/collect/k3;)Lcom/google/common/collect/k3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l3$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/k3;

.field final synthetic d:Lcom/google/common/collect/k3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k3;Lcom/google/common/collect/k3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/l3$d;->c:Lcom/google/common/collect/k3;

    iput-object p2, p0, Lcom/google/common/collect/l3$d;->d:Lcom/google/common/collect/k3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/l3$n;-><init>(Lcom/google/common/collect/l3$a;)V

    return-void
.end method


# virtual methods
.method b()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/l3$d;->d()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/x2;->Z(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method c()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l3$d;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0}, Lcom/google/common/collect/k3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/collect/l3$d$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/l3$d$a;-><init>(Lcom/google/common/collect/l3$d;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l3$d;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/l3$d;->d:Lcom/google/common/collect/k3;

    invoke-interface {v2, p1}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method d()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l3$d;->c:Lcom/google/common/collect/k3;

    invoke-interface {v0}, Lcom/google/common/collect/k3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/collect/l3$d$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/l3$d$b;-><init>(Lcom/google/common/collect/l3$d;Ljava/util/Iterator;)V

    return-object v1
.end method
