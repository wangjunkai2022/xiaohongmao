.class final Lcom/google/common/graph/k;
.super Lcom/google/common/graph/m;
.source "ConfigurableMutableValueGraph.java"

# interfaces
.implements Lcom/google/common/graph/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/m<",
        "TN;TV;>;",
        "Lcom/google/common/graph/j0<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/graph/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/d<",
            "-TN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/graph/m;-><init>(Lcom/google/common/graph/d;)V

    return-void
.end method

.method private U(Ljava/lang/Object;)Lcom/google/common/graph/y;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/y<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/k;->V()Lcom/google/common/graph/y;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/graph/m;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/graph/e0;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/a0;->g0(Z)V

    return-object v0
.end method

.method private V()Lcom/google/common/graph/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/y<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/graph/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/graph/n;->p()Lcom/google/common/graph/n;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/common/graph/q0;->i()Lcom/google/common/graph/q0;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public B(Lcom/google/common/graph/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a;->O(Lcom/google/common/graph/r;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/r;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/graph/k;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    const-string v0, "nodeU"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 3
    invoke-static {p3, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/common/graph/m;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/m;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/y;

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/common/graph/k;->U(Ljava/lang/Object;)Lcom/google/common/graph/y;

    move-result-object v0

    .line 8
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/google/common/graph/y;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/common/graph/m;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v1, p2}, Lcom/google/common/graph/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/y;

    if-nez v1, :cond_2

    .line 10
    invoke-direct {p0, p2}, Lcom/google/common/graph/k;->U(Ljava/lang/Object;)Lcom/google/common/graph/y;

    move-result-object v1

    .line 11
    :cond_2
    invoke-interface {v1, p1, p3}, Lcom/google/common/graph/y;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_3

    .line 12
    iget-wide p1, p0, Lcom/google/common/graph/m;->e:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/google/common/graph/m;->e:J

    invoke-static {p1, p2}, Lcom/google/common/graph/a0;->e(J)J

    :cond_3
    return-object v0
.end method

.method public o(Ljava/lang/Object;)Z
    .locals 8
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/m;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/y;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/graph/m;->j()Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/google/common/graph/y;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lcom/google/common/graph/y;->f(Ljava/lang/Object;)V

    .line 6
    iget-wide v5, p0, Lcom/google/common/graph/m;->e:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/graph/m;->e:J

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/google/common/graph/y;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 8
    iget-object v6, p0, Lcom/google/common/graph/m;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v6, v5}, Lcom/google/common/graph/e0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/graph/y;

    invoke-interface {v5, p1}, Lcom/google/common/graph/y;->f(Ljava/lang/Object;)V

    .line 9
    iget-wide v5, p0, Lcom/google/common/graph/m;->e:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/graph/m;->e:J

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/graph/m;->e()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/google/common/graph/y;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    iget-object v6, p0, Lcom/google/common/graph/m;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v6, v2}, Lcom/google/common/graph/e0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/y;

    invoke-interface {v2, p1}, Lcom/google/common/graph/y;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/a0;->g0(Z)V

    .line 13
    iget-wide v6, p0, Lcom/google/common/graph/m;->e:J

    sub-long/2addr v6, v3

    iput-wide v6, p0, Lcom/google/common/graph/m;->e:J

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/google/common/graph/m;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/e0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-wide v0, p0, Lcom/google/common/graph/m;->e:J

    invoke-static {v0, v1}, Lcom/google/common/graph/a0;->c(J)J

    return v5
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    const-string v0, "node"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/graph/m;->R(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/graph/k;->U(Ljava/lang/Object;)Lcom/google/common/graph/y;

    const/4 p1, 0x1

    return p1
.end method

.method public q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TV;"
        }
    .end annotation

    const-string v0, "nodeU"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeV"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/common/graph/m;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/y;

    .line 4
    iget-object v1, p0, Lcom/google/common/graph/m;->d:Lcom/google/common/graph/e0;

    invoke-virtual {v1, p2}, Lcom/google/common/graph/e0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/y;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p2}, Lcom/google/common/graph/y;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {v1, p1}, Lcom/google/common/graph/y;->f(Ljava/lang/Object;)V

    .line 7
    iget-wide v0, p0, Lcom/google/common/graph/m;->e:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/graph/m;->e:J

    invoke-static {v0, v1}, Lcom/google/common/graph/a0;->c(J)J

    :cond_1
    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Lcom/google/common/graph/r;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a;->O(Lcom/google/common/graph/r;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/r;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/graph/k;->q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
