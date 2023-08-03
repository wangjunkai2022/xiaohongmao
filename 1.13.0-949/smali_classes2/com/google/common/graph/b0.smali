.class public Lcom/google/common/graph/b0;
.super Lcom/google/common/graph/t;
.source "ImmutableGraph.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
    containerOf = {
        "N"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/t<",
        "TN;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/h<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/h<",
            "TN;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/t;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/graph/b0;->a:Lcom/google/common/graph/h;

    return-void
.end method

.method private static Q(Lcom/google/common/graph/w;Ljava/lang/Object;)Lcom/google/common/graph/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/w<",
            "TN;>;TN;)",
            "Lcom/google/common/graph/y<",
            "TN;",
            "Lcom/google/common/graph/z$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/graph/z$a;->a:Lcom/google/common/graph/z$a;

    invoke-static {v0}, Lcom/google/common/base/s;->b(Ljava/lang/Object;)Lcom/google/common/base/q;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/w;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/google/common/graph/w;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, p1}, Lcom/google/common/graph/w;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/f3;->j(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object p0

    .line 4
    invoke-static {v1, p0}, Lcom/google/common/graph/n;->q(Ljava/util/Set;Ljava/util/Map;)Lcom/google/common/graph/n;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/common/graph/w;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/f3;->j(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Map;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/google/common/graph/q0;->j(Ljava/util/Map;)Lcom/google/common/graph/q0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static R(Lcom/google/common/graph/w;)Lcom/google/common/graph/b0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/w<",
            "TN;>;)",
            "Lcom/google/common/graph/b0<",
            "TN;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/graph/b0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/graph/b0;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/graph/b0;

    new-instance v1, Lcom/google/common/graph/m;

    .line 2
    invoke-static {p0}, Lcom/google/common/graph/x;->f(Lcom/google/common/graph/w;)Lcom/google/common/graph/x;

    move-result-object v2

    invoke-static {p0}, Lcom/google/common/graph/b0;->T(Lcom/google/common/graph/w;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/common/graph/w;->c()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    int-to-long v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/common/graph/m;-><init>(Lcom/google/common/graph/d;Ljava/util/Map;J)V

    invoke-direct {v0, v1}, Lcom/google/common/graph/b0;-><init>(Lcom/google/common/graph/h;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static S(Lcom/google/common/graph/b0;)Lcom/google/common/graph/b0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/b0<",
            "TN;>;)",
            "Lcom/google/common/graph/b0<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/b0;

    return-object p0
.end method

.method private static T(Lcom/google/common/graph/w;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/w<",
            "TN;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TN;",
            "Lcom/google/common/graph/y<",
            "TN;",
            "Lcom/google/common/graph/z$a;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/w;->m()Ljava/util/Set;

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
    invoke-static {p0, v2}, Lcom/google/common/graph/b0;->Q(Lcom/google/common/graph/w;Ljava/lang/Object;)Lcom/google/common/graph/y;

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
.method protected P()Lcom/google/common/graph/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/h<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/b0;->a:Lcom/google/common/graph/h;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/t;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/t;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/graph/t;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic e()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/t;->e()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f(Lcom/google/common/graph/r;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/t;->f(Lcom/google/common/graph/r;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/t;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic h()Lcom/google/common/graph/ElementOrder;
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/t;->h()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/t;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic j()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/t;->j()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/t;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/graph/t;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/graph/t;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
