.class public final Lcom/google/common/collect/j3;
.super Ljava/lang/Object;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/j3$a;,
        Lcom/google/common/collect/j3$f;,
        Lcom/google/common/collect/j3$g;,
        Lcom/google/common/collect/j3$i;,
        Lcom/google/common/collect/j3$j;,
        Lcom/google/common/collect/j3$h;,
        Lcom/google/common/collect/j3$n;,
        Lcom/google/common/collect/j3$m;,
        Lcom/google/common/collect/j3$k;,
        Lcom/google/common/collect/j3$l;,
        Lcom/google/common/collect/j3$e;,
        Lcom/google/common/collect/j3$d;,
        Lcom/google/common/collect/j3$b;,
        Lcom/google/common/collect/j3$c;
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/google/common/collect/n4;)Lcom/google/common/collect/n4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/c5;->v(Lcom/google/common/collect/n4;Ljava/lang/Object;)Lcom/google/common/collect/n4;

    move-result-object p0

    return-object p0
.end method

.method public static B(Lcom/google/common/collect/y4;)Lcom/google/common/collect/y4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/y4<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/y4<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/c5;->y(Lcom/google/common/collect/y4;Ljava/lang/Object;)Lcom/google/common/collect/y4;

    move-result-object p0

    return-object p0
.end method

.method public static C(Lcom/google/common/collect/a3;Lcom/google/common/collect/f3$t;)Lcom/google/common/collect/a3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/a3<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/f3$t<",
            "-TK;-TV1;TV2;>;)",
            "Lcom/google/common/collect/a3<",
            "TK;TV2;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j3$i;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j3$i;-><init>(Lcom/google/common/collect/a3;Lcom/google/common/collect/f3$t;)V

    return-object v0
.end method

.method public static D(Lcom/google/common/collect/h3;Lcom/google/common/collect/f3$t;)Lcom/google/common/collect/h3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/h3<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/f3$t<",
            "-TK;-TV1;TV2;>;)",
            "Lcom/google/common/collect/h3<",
            "TK;TV2;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j3$j;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j3$j;-><init>(Lcom/google/common/collect/h3;Lcom/google/common/collect/f3$t;)V

    return-object v0
.end method

.method public static E(Lcom/google/common/collect/a3;Lcom/google/common/base/q;)Lcom/google/common/collect/a3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/a3<",
            "TK;TV1;>;",
            "Lcom/google/common/base/q<",
            "-TV1;TV2;>;)",
            "Lcom/google/common/collect/a3<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/f3;->i(Lcom/google/common/base/q;)Lcom/google/common/collect/f3$t;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->C(Lcom/google/common/collect/a3;Lcom/google/common/collect/f3$t;)Lcom/google/common/collect/a3;

    move-result-object p0

    return-object p0
.end method

.method public static F(Lcom/google/common/collect/h3;Lcom/google/common/base/q;)Lcom/google/common/collect/h3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/h3<",
            "TK;TV1;>;",
            "Lcom/google/common/base/q<",
            "-TV1;TV2;>;)",
            "Lcom/google/common/collect/h3<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/f3;->i(Lcom/google/common/base/q;)Lcom/google/common/collect/f3$t;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->D(Lcom/google/common/collect/h3;Lcom/google/common/collect/f3$t;)Lcom/google/common/collect/h3;

    move-result-object p0

    return-object p0
.end method

.method private static G(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/google/common/collect/f3;->J0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/f3$m0;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/f3$m0;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static H(Lcom/google/common/collect/ImmutableListMultimap;)Lcom/google/common/collect/a3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/a3<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/a3;

    return-object p0
.end method

.method public static I(Lcom/google/common/collect/a3;)Lcom/google/common/collect/a3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/a3<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/a3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/j3$k;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/collect/j3$k;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j3$k;-><init>(Lcom/google/common/collect/a3;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static J(Lcom/google/common/collect/ImmutableMultimap;)Lcom/google/common/collect/h3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/h3;

    return-object p0
.end method

.method public static K(Lcom/google/common/collect/h3;)Lcom/google/common/collect/h3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/j3$l;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/collect/j3$l;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j3$l;-><init>(Lcom/google/common/collect/h3;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static L(Lcom/google/common/collect/ImmutableSetMultimap;)Lcom/google/common/collect/n4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/n4;

    return-object p0
.end method

.method public static M(Lcom/google/common/collect/n4;)Lcom/google/common/collect/n4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/j3$m;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/collect/j3$m;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j3$m;-><init>(Lcom/google/common/collect/n4;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static N(Lcom/google/common/collect/y4;)Lcom/google/common/collect/y4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/y4<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/y4<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/j3$n;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/collect/j3$n;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j3$n;-><init>(Lcom/google/common/collect/y4;)V

    return-object v0
.end method

.method private static O(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/j3;->O(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/j3;->G(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/common/collect/a3;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/a3<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/a3;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/google/common/collect/h3;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/h3;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/google/common/collect/n4;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/n4;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/google/common/collect/y4;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/y4<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/SortedSet<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/y4;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static g(Lcom/google/common/collect/h3;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/h3<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/h3;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/common/collect/h3;

    .line 3
    invoke-interface {p0}, Lcom/google/common/collect/h3;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/h3;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Lcom/google/common/collect/h3;Lcom/google/common/base/b0;)Lcom/google/common/collect/h3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lcom/google/common/collect/n4;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/common/collect/n4;

    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->i(Lcom/google/common/collect/n4;Lcom/google/common/base/b0;)Lcom/google/common/collect/n4;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/z0;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/common/collect/z0;

    .line 5
    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->j(Lcom/google/common/collect/z0;Lcom/google/common/base/b0;)Lcom/google/common/collect/h3;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/collect/u0;

    .line 6
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/h3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/u0;-><init>(Lcom/google/common/collect/h3;Lcom/google/common/base/b0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static i(Lcom/google/common/collect/n4;Lcom/google/common/base/b0;)Lcom/google/common/collect/n4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lcom/google/common/collect/b1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/b1;

    .line 3
    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->k(Lcom/google/common/collect/b1;Lcom/google/common/base/b0;)Lcom/google/common/collect/n4;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/v0;

    .line 4
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/n4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/v0;-><init>(Lcom/google/common/collect/n4;Lcom/google/common/base/b0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static j(Lcom/google/common/collect/z0;Lcom/google/common/base/b0;)Lcom/google/common/collect/h3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/z0<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/z0;->v()Lcom/google/common/base/b0;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/c0;->d(Lcom/google/common/base/b0;Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/google/common/collect/u0;

    invoke-interface {p0}, Lcom/google/common/collect/z0;->a()Lcom/google/common/collect/h3;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/u0;-><init>(Lcom/google/common/collect/h3;Lcom/google/common/base/b0;)V

    return-object v0
.end method

.method private static k(Lcom/google/common/collect/b1;Lcom/google/common/base/b0;)Lcom/google/common/collect/n4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/b1<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/z0;->v()Lcom/google/common/base/b0;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/c0;->d(Lcom/google/common/base/b0;Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/google/common/collect/v0;

    invoke-interface {p0}, Lcom/google/common/collect/b1;->a()Lcom/google/common/collect/n4;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/v0;-><init>(Lcom/google/common/collect/n4;Lcom/google/common/base/b0;)V

    return-object v0
.end method

.method public static l(Lcom/google/common/collect/a3;Lcom/google/common/base/b0;)Lcom/google/common/collect/a3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/a3<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-TK;>;)",
            "Lcom/google/common/collect/a3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/w0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/collect/w0;

    .line 3
    new-instance v0, Lcom/google/common/collect/w0;

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/w0;->l()Lcom/google/common/collect/a3;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/x0;->g:Lcom/google/common/base/b0;

    invoke-static {p0, p1}, Lcom/google/common/base/c0;->d(Lcom/google/common/base/b0;Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/w0;-><init>(Lcom/google/common/collect/a3;Lcom/google/common/base/b0;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/common/collect/w0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/w0;-><init>(Lcom/google/common/collect/a3;Lcom/google/common/base/b0;)V

    return-object v0
.end method

.method public static m(Lcom/google/common/collect/h3;Lcom/google/common/base/b0;)Lcom/google/common/collect/h3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-TK;>;)",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/n4;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/collect/n4;

    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->n(Lcom/google/common/collect/n4;Lcom/google/common/base/b0;)Lcom/google/common/collect/n4;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/a3;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lcom/google/common/collect/a3;

    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->l(Lcom/google/common/collect/a3;Lcom/google/common/base/b0;)Lcom/google/common/collect/a3;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Lcom/google/common/collect/x0;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Lcom/google/common/collect/x0;

    .line 7
    new-instance v0, Lcom/google/common/collect/x0;

    iget-object v1, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    iget-object p0, p0, Lcom/google/common/collect/x0;->g:Lcom/google/common/base/b0;

    .line 8
    invoke-static {p0, p1}, Lcom/google/common/base/c0;->d(Lcom/google/common/base/b0;Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/x0;-><init>(Lcom/google/common/collect/h3;Lcom/google/common/base/b0;)V

    return-object v0

    .line 9
    :cond_2
    instance-of v0, p0, Lcom/google/common/collect/z0;

    if-eqz v0, :cond_3

    .line 10
    check-cast p0, Lcom/google/common/collect/z0;

    .line 11
    invoke-static {p1}, Lcom/google/common/collect/f3;->U(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->j(Lcom/google/common/collect/z0;Lcom/google/common/base/b0;)Lcom/google/common/collect/h3;

    move-result-object p0

    return-object p0

    .line 12
    :cond_3
    new-instance v0, Lcom/google/common/collect/x0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/x0;-><init>(Lcom/google/common/collect/h3;Lcom/google/common/base/b0;)V

    return-object v0
.end method

.method public static n(Lcom/google/common/collect/n4;Lcom/google/common/base/b0;)Lcom/google/common/collect/n4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-TK;>;)",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/y0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/collect/y0;

    .line 3
    new-instance v0, Lcom/google/common/collect/y0;

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/y0;->a()Lcom/google/common/collect/n4;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/x0;->g:Lcom/google/common/base/b0;

    invoke-static {p0, p1}, Lcom/google/common/base/c0;->d(Lcom/google/common/base/b0;Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/y0;-><init>(Lcom/google/common/collect/n4;Lcom/google/common/base/b0;)V

    return-object v0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/b1;

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Lcom/google/common/collect/b1;

    .line 7
    invoke-static {p1}, Lcom/google/common/collect/f3;->U(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->k(Lcom/google/common/collect/b1;Lcom/google/common/base/b0;)Lcom/google/common/collect/n4;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/common/collect/y0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/y0;-><init>(Lcom/google/common/collect/n4;Lcom/google/common/base/b0;)V

    return-object v0
.end method

.method public static o(Lcom/google/common/collect/h3;Lcom/google/common/base/b0;)Lcom/google/common/collect/h3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-TV;>;)",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/f3;->Q0(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->h(Lcom/google/common/collect/h3;Lcom/google/common/base/b0;)Lcom/google/common/collect/h3;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/google/common/collect/n4;Lcom/google/common/base/b0;)Lcom/google/common/collect/n4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;",
            "Lcom/google/common/base/b0<",
            "-TV;>;)",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/f3;->Q0(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->i(Lcom/google/common/collect/n4;Lcom/google/common/base/b0;)Lcom/google/common/collect/n4;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/util/Map;)Lcom/google/common/collect/n4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j3$h;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j3$h;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static r(Ljava/lang/Iterable;Lcom/google/common/base/q;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TV;>;",
            "Lcom/google/common/base/q<",
            "-TV;TK;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/j3;->s(Ljava/util/Iterator;Lcom/google/common/base/q;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/util/Iterator;Lcom/google/common/base/q;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TV;>;",
            "Lcom/google/common/base/q<",
            "-TV;TK;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$a;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-static {v1, p0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1, v1}, Lcom/google/common/base/q;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableListMultimap$a;->o(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap$a;->l()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lcom/google/common/collect/h3;Lcom/google/common/collect/h3;)Lcom/google/common/collect/h3;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;>(",
            "Lcom/google/common/collect/h3<",
            "+TV;+TK;>;TM;)TM;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Lcom/google/common/collect/h3;->entries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/common/collect/h3;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static u(Ljava/util/Map;Lcom/google/common/base/i0;)Lcom/google/common/collect/a3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/i0<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lcom/google/common/collect/a3<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j3$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j3$b;-><init>(Ljava/util/Map;Lcom/google/common/base/i0;)V

    return-object v0
.end method

.method public static v(Ljava/util/Map;Lcom/google/common/base/i0;)Lcom/google/common/collect/h3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/i0<",
            "+",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j3$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j3$c;-><init>(Ljava/util/Map;Lcom/google/common/base/i0;)V

    return-object v0
.end method

.method public static w(Ljava/util/Map;Lcom/google/common/base/i0;)Lcom/google/common/collect/n4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/i0<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;)",
            "Lcom/google/common/collect/n4<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j3$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j3$d;-><init>(Ljava/util/Map;Lcom/google/common/base/i0;)V

    return-object v0
.end method

.method public static x(Ljava/util/Map;Lcom/google/common/base/i0;)Lcom/google/common/collect/y4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/google/common/base/i0<",
            "+",
            "Ljava/util/SortedSet<",
            "TV;>;>;)",
            "Lcom/google/common/collect/y4<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j3$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j3$e;-><init>(Ljava/util/Map;Lcom/google/common/base/i0;)V

    return-object v0
.end method

.method public static y(Lcom/google/common/collect/a3;)Lcom/google/common/collect/a3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/a3<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/a3<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/c5;->k(Lcom/google/common/collect/a3;Ljava/lang/Object;)Lcom/google/common/collect/a3;

    move-result-object p0

    return-object p0
.end method

.method public static z(Lcom/google/common/collect/h3;)Lcom/google/common/collect/h3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/c5;->m(Lcom/google/common/collect/h3;Ljava/lang/Object;)Lcom/google/common/collect/h3;

    move-result-object p0

    return-object p0
.end method
