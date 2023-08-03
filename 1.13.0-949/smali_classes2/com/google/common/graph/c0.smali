.class public final Lcom/google/common/graph/c0;
.super Lcom/google/common/graph/l;
.source "ImmutableNetwork.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
    containerOf = {
        "N",
        "E"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/l<",
        "TN;TE;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/graph/k0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/graph/l0;->i(Lcom/google/common/graph/k0;)Lcom/google/common/graph/l0;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/c0;->a0(Lcom/google/common/graph/k0;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/graph/c0;->Z(Lcom/google/common/graph/k0;)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/google/common/graph/l;-><init>(Lcom/google/common/graph/l0;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private static U(Lcom/google/common/graph/k0;Ljava/lang/Object;)Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;TN;)",
            "Lcom/google/common/base/q<",
            "TE;TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/c0$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/c0$c;-><init>(Lcom/google/common/graph/k0;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static W(Lcom/google/common/graph/k0;Ljava/lang/Object;)Lcom/google/common/graph/m0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;TN;)",
            "Lcom/google/common/graph/m0<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/graph/k0;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p0, p1}, Lcom/google/common/graph/k0;->J(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/graph/c0;->b0(Lcom/google/common/graph/k0;)Lcom/google/common/base/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/f3;->j(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {p0, p1}, Lcom/google/common/graph/k0;->u(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p0}, Lcom/google/common/graph/c0;->c0(Lcom/google/common/graph/k0;)Lcom/google/common/base/q;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/f3;->j(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-interface {p0, p1, p1}, Lcom/google/common/graph/k0;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    .line 5
    invoke-interface {p0}, Lcom/google/common/graph/k0;->x()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-static {v0, v1, p1}, Lcom/google/common/graph/o;->q(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/o;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/google/common/graph/p;->o(Ljava/util/Map;Ljava/util/Map;I)Lcom/google/common/graph/p;

    move-result-object p0

    :goto_0
    return-object p0

    .line 8
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/common/graph/k0;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/common/graph/c0;->U(Lcom/google/common/graph/k0;Ljava/lang/Object;)Lcom/google/common/base/q;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/f3;->j(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object p1

    .line 9
    invoke-interface {p0}, Lcom/google/common/graph/k0;->x()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 10
    invoke-static {p1}, Lcom/google/common/graph/r0;->q(Ljava/util/Map;)Lcom/google/common/graph/r0;

    move-result-object p0

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/google/common/graph/s0;->n(Ljava/util/Map;)Lcom/google/common/graph/s0;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static X(Lcom/google/common/graph/c0;)Lcom/google/common/graph/c0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/c0<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/c0<",
            "TN;TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/c0;

    return-object p0
.end method

.method public static Y(Lcom/google/common/graph/k0;)Lcom/google/common/graph/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/c0<",
            "TN;TE;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/graph/c0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/graph/c0;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/graph/c0;

    invoke-direct {v0, p0}, Lcom/google/common/graph/c0;-><init>(Lcom/google/common/graph/k0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static Z(Lcom/google/common/graph/k0;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TE;TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/k0;->c()Ljava/util/Set;

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
    invoke-interface {p0, v2}, Lcom/google/common/graph/k0;->E(Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method private static a0(Lcom/google/common/graph/k0;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TN;",
            "Lcom/google/common/graph/m0<",
            "TN;TE;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/k0;->m()Ljava/util/Set;

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
    invoke-static {p0, v2}, Lcom/google/common/graph/c0;->W(Lcom/google/common/graph/k0;Ljava/lang/Object;)Lcom/google/common/graph/m0;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method private static b0(Lcom/google/common/graph/k0;)Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)",
            "Lcom/google/common/base/q<",
            "TE;TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/c0$a;

    invoke-direct {v0, p0}, Lcom/google/common/graph/c0$a;-><init>(Lcom/google/common/graph/k0;)V

    return-object v0
.end method

.method private static c0(Lcom/google/common/graph/k0;)Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)",
            "Lcom/google/common/base/q<",
            "TE;TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/c0$b;

    invoke-direct {v0, p0}, Lcom/google/common/graph/c0$b;-><init>(Lcom/google/common/graph/k0;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;)Lcom/google/common/graph/r;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/l;->E(Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic G()Lcom/google/common/graph/ElementOrder;
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/l;->G()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic J(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/l;->J(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public V()Lcom/google/common/graph/b0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/b0<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/b0;

    invoke-super {p0}, Lcom/google/common/graph/e;->s()Lcom/google/common/graph/w;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/b0;-><init>(Lcom/google/common/graph/h;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/l;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/l;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/l;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/l;->e()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic h()Lcom/google/common/graph/ElementOrder;
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/l;->h()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/l;->j()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/l;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/l;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/l;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Lcom/google/common/graph/w;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/graph/c0;->V()Lcom/google/common/graph/b0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/l;->u(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/graph/l;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/l;->x()Z

    move-result v0

    return v0
.end method
