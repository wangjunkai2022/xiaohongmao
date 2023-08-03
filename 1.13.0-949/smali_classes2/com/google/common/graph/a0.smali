.class public final Lcom/google/common/graph/a0;
.super Ljava/lang/Object;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/a0$a;,
        Lcom/google/common/graph/a0$c;,
        Lcom/google/common/graph/a0$d;,
        Lcom/google/common/graph/a0$b;
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/common/graph/w;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/w<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/graph/w;->e()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2, p1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static b(I)I
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    return p0
.end method

.method static c(J)J
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/a0;->p(ZLjava/lang/String;J)V

    return-wide p0
.end method

.method static d(I)I
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    return p0
.end method

.method static e(J)J
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/a0;->p(ZLjava/lang/String;J)V

    return-wide p0
.end method

.method public static f(Lcom/google/common/graph/w;)Lcom/google/common/graph/h0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/w<",
            "TN;>;)",
            "Lcom/google/common/graph/h0<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/graph/x;->f(Lcom/google/common/graph/w;)Lcom/google/common/graph/x;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/w;->m()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/x;->e(I)Lcom/google/common/graph/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/x;->b()Lcom/google/common/graph/h0;

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
    invoke-interface {v0, v2}, Lcom/google/common/graph/h0;->p(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/w;->c()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/r;

    .line 5
    invoke-virtual {v1}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/graph/r;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/common/graph/h0;->F(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static g(Lcom/google/common/graph/k0;)Lcom/google/common/graph/i0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/i0<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/graph/l0;->i(Lcom/google/common/graph/k0;)Lcom/google/common/graph/l0;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/k0;->m()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/l0;->h(I)Lcom/google/common/graph/l0;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/k0;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/l0;->g(I)Lcom/google/common/graph/l0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/graph/l0;->c()Lcom/google/common/graph/i0;

    move-result-object v0

    .line 5
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

    .line 6
    invoke-interface {v0, v2}, Lcom/google/common/graph/i0;->p(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/k0;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-interface {p0, v2}, Lcom/google/common/graph/k0;->E(Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/common/graph/r;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3, v2}, Lcom/google/common/graph/i0;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static h(Lcom/google/common/graph/t0;)Lcom/google/common/graph/j0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/t0<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/j0<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/graph/u0;->f(Lcom/google/common/graph/t0;)Lcom/google/common/graph/u0;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/graph/t0;->m()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/u0;->e(I)Lcom/google/common/graph/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/u0;->b()Lcom/google/common/graph/j0;

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
    invoke-interface {v0, v2}, Lcom/google/common/graph/j0;->p(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/t0;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/r;

    .line 5
    invoke-virtual {v2}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/common/graph/r;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/common/graph/r;->e()Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {p0, v5, v2, v6}, Lcom/google/common/graph/t0;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-interface {v0, v3, v4, v2}, Lcom/google/common/graph/j0;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static i(Lcom/google/common/graph/w;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/w<",
            "TN;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/graph/w;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/w;->e()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-interface {p0}, Lcom/google/common/graph/w;->m()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-interface {p0}, Lcom/google/common/graph/w;->m()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/f3;->a0(I)Ljava/util/HashMap;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/common/graph/w;->m()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    .line 5
    invoke-static {p0, v0, v4, v5}, Lcom/google/common/graph/a0;->o(Lcom/google/common/graph/w;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_3
    return v1
.end method

.method public static j(Lcom/google/common/graph/k0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/k0<",
            "**>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/graph/k0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/k0;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/k0;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p0}, Lcom/google/common/graph/k0;->s()Lcom/google/common/graph/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/graph/w;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/k0;->s()Lcom/google/common/graph/w;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/graph/a0;->i(Lcom/google/common/graph/w;)Z

    move-result p0

    return p0
.end method

.method public static k(Lcom/google/common/graph/w;Ljava/lang/Iterable;)Lcom/google/common/graph/h0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/w<",
            "TN;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/graph/h0<",
            "TN;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/common/graph/x;->f(Lcom/google/common/graph/w;)Lcom/google/common/graph/x;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/x;->e(I)Lcom/google/common/graph/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/x;->b()Lcom/google/common/graph/h0;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/common/graph/x;->f(Lcom/google/common/graph/w;)Lcom/google/common/graph/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/x;->b()Lcom/google/common/graph/h0;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Lcom/google/common/graph/h0;->p(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/common/graph/w;->m()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {p0, v1}, Lcom/google/common/graph/w;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-interface {v0}, Lcom/google/common/graph/w;->m()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-interface {v0, v1, v3}, Lcom/google/common/graph/h0;->F(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static l(Lcom/google/common/graph/k0;Ljava/lang/Iterable;)Lcom/google/common/graph/i0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/graph/i0<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/common/graph/l0;->i(Lcom/google/common/graph/k0;)Lcom/google/common/graph/l0;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/l0;->h(I)Lcom/google/common/graph/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/l0;->c()Lcom/google/common/graph/i0;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/common/graph/l0;->i(Lcom/google/common/graph/k0;)Lcom/google/common/graph/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/l0;->c()Lcom/google/common/graph/i0;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Lcom/google/common/graph/i0;->p(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/common/graph/k0;->m()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {p0, v1}, Lcom/google/common/graph/k0;->u(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-interface {p0, v3}, Lcom/google/common/graph/k0;->E(Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/common/graph/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-interface {v0}, Lcom/google/common/graph/k0;->m()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10
    invoke-interface {v0, v1, v4, v3}, Lcom/google/common/graph/i0;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static m(Lcom/google/common/graph/t0;Ljava/lang/Iterable;)Lcom/google/common/graph/j0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/t0<",
            "TN;TV;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/graph/j0<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/common/graph/u0;->f(Lcom/google/common/graph/t0;)Lcom/google/common/graph/u0;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/u0;->e(I)Lcom/google/common/graph/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/u0;->b()Lcom/google/common/graph/j0;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/common/graph/u0;->f(Lcom/google/common/graph/t0;)Lcom/google/common/graph/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/u0;->b()Lcom/google/common/graph/j0;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Lcom/google/common/graph/j0;->p(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/common/graph/t0;->m()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {p0, v1}, Lcom/google/common/graph/t0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-interface {v0}, Lcom/google/common/graph/t0;->m()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 9
    invoke-interface {p0, v1, v3, v4}, Lcom/google/common/graph/t0;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-interface {v0, v1, v3, v4}, Lcom/google/common/graph/j0;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static n(Lcom/google/common/graph/w;Ljava/lang/Object;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/w<",
            "TN;>;TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/graph/w;->m()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Node %s is not an element of this graph."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-interface {p0, p1}, Lcom/google/common/graph/w;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static o(Lcom/google/common/graph/w;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/w<",
            "TN;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/common/graph/a0$a;",
            ">;TN;TN;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/a0$a;

    .line 2
    sget-object v1, Lcom/google/common/graph/a0$a;->b:Lcom/google/common/graph/a0$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget-object v1, Lcom/google/common/graph/a0$a;->a:Lcom/google/common/graph/a0$a;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p0, p2}, Lcom/google/common/graph/w;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-static {p0, v1, p3}, Lcom/google/common/graph/a0;->a(Lcom/google/common/graph/w;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-static {p0, p1, v1, p2}, Lcom/google/common/graph/a0;->o(Lcom/google/common/graph/w;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 8
    :cond_3
    sget-object p0, Lcom/google/common/graph/a0$a;->b:Lcom/google/common/graph/a0$a;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public static p(Lcom/google/common/graph/w;)Lcom/google/common/graph/w;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/w<",
            "TN;>;)",
            "Lcom/google/common/graph/w<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/graph/x;->f(Lcom/google/common/graph/w;)Lcom/google/common/graph/x;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/x;->a(Z)Lcom/google/common/graph/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/graph/x;->b()Lcom/google/common/graph/h0;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/w;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/w;->m()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {p0, v2}, Lcom/google/common/graph/a0;->n(Lcom/google/common/graph/w;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    invoke-interface {v0, v2, v4}, Lcom/google/common/graph/h0;->F(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-interface {p0}, Lcom/google/common/graph/w;->m()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    invoke-static {p0, v4}, Lcom/google/common/graph/a0;->n(Lcom/google/common/graph/w;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 10
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    .line 12
    invoke-static {v4, v6}, Lcom/google/common/collect/w2;->D(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 13
    invoke-interface {v0, v7, v9}, Lcom/google/common/graph/h0;->F(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v6, v8

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method static q(Lcom/google/common/graph/r;)Lcom/google/common/graph/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/r<",
            "TN;>;)",
            "Lcom/google/common/graph/r<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/graph/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/graph/r;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/graph/r;->j()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/graph/r;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static r(Lcom/google/common/graph/w;)Lcom/google/common/graph/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/w<",
            "TN;>;)",
            "Lcom/google/common/graph/w<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/graph/w;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/a0$b;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lcom/google/common/graph/a0$b;

    invoke-static {p0}, Lcom/google/common/graph/a0$b;->Q(Lcom/google/common/graph/a0$b;)Lcom/google/common/graph/w;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/common/graph/a0$b;

    invoke-direct {v0, p0}, Lcom/google/common/graph/a0$b;-><init>(Lcom/google/common/graph/w;)V

    return-object v0
.end method

.method public static s(Lcom/google/common/graph/k0;)Lcom/google/common/graph/k0;
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
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/graph/k0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/a0$c;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lcom/google/common/graph/a0$c;

    invoke-static {p0}, Lcom/google/common/graph/a0$c;->R(Lcom/google/common/graph/a0$c;)Lcom/google/common/graph/k0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/common/graph/a0$c;

    invoke-direct {v0, p0}, Lcom/google/common/graph/a0$c;-><init>(Lcom/google/common/graph/k0;)V

    return-object v0
.end method

.method public static t(Lcom/google/common/graph/t0;)Lcom/google/common/graph/t0;
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
            "Lcom/google/common/graph/t0<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/graph/t0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/a0$d;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lcom/google/common/graph/a0$d;

    invoke-static {p0}, Lcom/google/common/graph/a0$d;->R(Lcom/google/common/graph/a0$d;)Lcom/google/common/graph/t0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/common/graph/a0$d;

    invoke-direct {v0, p0}, Lcom/google/common/graph/a0$d;-><init>(Lcom/google/common/graph/t0;)V

    return-object v0
.end method
