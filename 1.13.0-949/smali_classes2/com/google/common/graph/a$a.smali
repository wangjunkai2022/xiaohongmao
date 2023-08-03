.class Lcom/google/common/graph/a$a;
.super Ljava/util/AbstractSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/a;->c()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/graph/r<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/a;


# direct methods
.method constructor <init>(Lcom/google/common/graph/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/a$a;->a:Lcom/google/common/graph/a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/k5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k5<",
            "Lcom/google/common/graph/r<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/a$a;->a:Lcom/google/common/graph/a;

    invoke-static {v0}, Lcom/google/common/graph/s;->e(Lcom/google/common/graph/h;)Lcom/google/common/graph/s;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/graph/r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/common/graph/r;

    .line 3
    iget-object v0, p0, Lcom/google/common/graph/a$a;->a:Lcom/google/common/graph/a;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/a;->N(Lcom/google/common/graph/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/graph/a$a;->a:Lcom/google/common/graph/a;

    .line 4
    invoke-interface {v0}, Lcom/google/common/graph/h;->m()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/graph/a$a;->a:Lcom/google/common/graph/a;

    .line 5
    invoke-virtual {p1}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/r;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/graph/a$a;->a()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/graph/a$a;->a:Lcom/google/common/graph/a;

    invoke-virtual {v0}, Lcom/google/common/graph/a;->M()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/f;->x(J)I

    move-result v0

    return v0
.end method
