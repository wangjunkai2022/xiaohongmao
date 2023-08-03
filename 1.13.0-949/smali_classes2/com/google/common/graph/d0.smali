.class public final Lcom/google/common/graph/d0;
.super Lcom/google/common/graph/m;
.source "ImmutableValueGraph.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
    containerOf = {
        "N",
        "V"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/m<",
        "TN;TV;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/t0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/t0<",
            "TN;TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/graph/u0;->f(Lcom/google/common/graph/t0;)Lcom/google/common/graph/u0;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/d0;->Y(Lcom/google/common/graph/t0;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/t0;->c()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/graph/m;-><init>(Lcom/google/common/graph/d;Ljava/util/Map;J)V

    return-void
.end method

.method private static V(Lcom/google/common/graph/t0;Ljava/lang/Object;)Lcom/google/common/graph/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/t0<",
            "TN;TV;>;TN;)",
            "Lcom/google/common/graph/y<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/d0$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/d0$a;-><init>(Lcom/google/common/graph/t0;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/t0;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/google/common/graph/t0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, p1}, Lcom/google/common/graph/t0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/f3;->j(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object p0

    .line 4
    invoke-static {v1, p0}, Lcom/google/common/graph/n;->q(Ljava/util/Set;Ljava/util/Map;)Lcom/google/common/graph/n;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/common/graph/t0;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/f3;->j(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/google/common/graph/q0;->j(Ljava/util/Map;)Lcom/google/common/graph/q0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static W(Lcom/google/common/graph/d0;)Lcom/google/common/graph/d0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/d0<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/d0<",
            "TN;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/d0;

    return-object p0
.end method

.method public static X(Lcom/google/common/graph/t0;)Lcom/google/common/graph/d0;
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
            "Lcom/google/common/graph/d0<",
            "TN;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/graph/d0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/graph/d0;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/graph/d0;

    invoke-direct {v0, p0}, Lcom/google/common/graph/d0;-><init>(Lcom/google/common/graph/t0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static Y(Lcom/google/common/graph/t0;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/t0<",
            "TN;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TN;",
            "Lcom/google/common/graph/y<",
            "TN;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/t0;->m()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-static {p0, v2}, Lcom/google/common/graph/d0;->V(Lcom/google/common/graph/t0;Ljava/lang/Object;)Lcom/google/common/graph/y;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public U()Lcom/google/common/graph/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/b0<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/b0;

    invoke-direct {v0, p0}, Lcom/google/common/graph/b0;-><init>(Lcom/google/common/graph/h;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/m;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/m;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/graph/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic e()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/m;->e()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f(Lcom/google/common/graph/r;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/m;->f(Lcom/google/common/graph/r;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic h()Lcom/google/common/graph/ElementOrder;
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/m;->h()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/m;->j()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/m;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/m;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Lcom/google/common/graph/w;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/graph/d0;->U()Lcom/google/common/graph/b0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t(Lcom/google/common/graph/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/graph/m;->t(Lcom/google/common/graph/r;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/google/common/graph/m;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
