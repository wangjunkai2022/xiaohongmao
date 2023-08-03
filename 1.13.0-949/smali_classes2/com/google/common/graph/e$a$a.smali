.class Lcom/google/common/graph/e$a$a;
.super Ljava/util/AbstractSet;
.source "AbstractNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/e$a;->c()Ljava/util/Set;
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
.field final synthetic a:Lcom/google/common/graph/e$a;


# direct methods
.method constructor <init>(Lcom/google/common/graph/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/e$a$a;->a:Lcom/google/common/graph/e$a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/google/common/graph/e$a$a;->a:Lcom/google/common/graph/e$a;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/a;->N(Lcom/google/common/graph/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/graph/e$a$a;->a:Lcom/google/common/graph/e$a;

    .line 4
    invoke-virtual {v0}, Lcom/google/common/graph/e$a;->m()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/graph/e$a$a;->a:Lcom/google/common/graph/e$a;

    .line 5
    invoke-virtual {p1}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/graph/e$a;->b(Ljava/lang/Object;)Ljava/util/Set;

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

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/r<",
            "TN;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/e$a$a;->a:Lcom/google/common/graph/e$a;

    iget-object v0, v0, Lcom/google/common/graph/e$a;->a:Lcom/google/common/graph/e;

    .line 2
    invoke-interface {v0}, Lcom/google/common/graph/k0;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/e$a$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/graph/e$a$a$a;-><init>(Lcom/google/common/graph/e$a$a;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/x2;->c0(Ljava/util/Iterator;Lcom/google/common/base/q;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/graph/e$a$a;->a:Lcom/google/common/graph/e$a;

    iget-object v0, v0, Lcom/google/common/graph/e$a;->a:Lcom/google/common/graph/e;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
