.class public abstract Lcom/google/common/graph/g;
.super Lcom/google/common/graph/a;
.source "AbstractValueGraph.java"

# interfaces
.implements Lcom/google/common/graph/t0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/a<",
        "TN;>;",
        "Lcom/google/common/graph/t0<",
        "TN;TV;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/graph/a;-><init>()V

    return-void
.end method

.method private static P(Lcom/google/common/graph/t0;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/t0<",
            "TN;TV;>;)",
            "Ljava/util/Map<",
            "Lcom/google/common/graph/r<",
            "TN;>;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/g$b;

    invoke-direct {v0, p0}, Lcom/google/common/graph/g$b;-><init>(Lcom/google/common/graph/t0;)V

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/t0;->c()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/f3;->j(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic c()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/a;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/graph/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
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
    instance-of v1, p1, Lcom/google/common/graph/t0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/common/graph/t0;

    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/t0;->e()Z

    move-result v1

    invoke-interface {p1}, Lcom/google/common/graph/t0;->e()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 4
    invoke-interface {p0}, Lcom/google/common/graph/t0;->m()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/t0;->m()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/common/graph/g;->P(Lcom/google/common/graph/t0;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/graph/g;->P(Lcom/google/common/graph/t0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic f(Lcom/google/common/graph/r;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/a;->f(Lcom/google/common/graph/r;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/a;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/common/graph/g;->P(Lcom/google/common/graph/t0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/a;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/a;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic n(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/a;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public s()Lcom/google/common/graph/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/w<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/g$a;

    invoke-direct {v0, p0}, Lcom/google/common/graph/g$a;-><init>(Lcom/google/common/graph/g;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDirected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/t0;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowsSelfLoops: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/t0;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p0}, Lcom/google/common/graph/t0;->m()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p0}, Lcom/google/common/graph/g;->P(Lcom/google/common/graph/t0;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
