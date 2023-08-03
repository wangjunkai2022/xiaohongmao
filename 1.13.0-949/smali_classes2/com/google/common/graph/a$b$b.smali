.class final Lcom/google/common/graph/a$b$b;
.super Lcom/google/common/graph/a$b;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/a$b<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/h;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/h<",
            "TN;>;TN;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/graph/a$b;-><init>(Lcom/google/common/graph/h;Ljava/lang/Object;Lcom/google/common/graph/a$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/h;Ljava/lang/Object;Lcom/google/common/graph/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/a$b$b;-><init>(Lcom/google/common/graph/h;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/common/collect/k5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k5<",
            "Lcom/google/common/graph/r<",
            "TN;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/a$b;->b:Lcom/google/common/graph/h;

    iget-object v1, p0, Lcom/google/common/graph/a$b;->a:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/common/graph/h;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/a$b$b$a;

    invoke-direct {v1, p0}, Lcom/google/common/graph/a$b$b$a;-><init>(Lcom/google/common/graph/a$b$b;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/x2;->c0(Ljava/util/Iterator;Lcom/google/common/base/q;)Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/common/collect/x2;->f0(Ljava/util/Iterator;)Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
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
    invoke-virtual {p1}, Lcom/google/common/graph/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/a$b;->b:Lcom/google/common/graph/h;

    iget-object v2, p0, Lcom/google/common/graph/a$b;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/google/common/graph/r;->e()Ljava/lang/Object;

    move-result-object p1

    .line 7
    iget-object v3, p0, Lcom/google/common/graph/a$b;->a:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/google/common/graph/a$b;->a:Ljava/lang/Object;

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/graph/a$b$b;->b()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/graph/a$b;->b:Lcom/google/common/graph/h;

    iget-object v1, p0, Lcom/google/common/graph/a$b;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/h;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
