.class final Lcom/google/common/collect/l0;
.super Lcom/google/common/collect/i4;
.source "DenseImmutableTable.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
    containerOf = {
        "R",
        "C",
        "V"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/l0$c;,
        Lcom/google/common/collect/l0$f;,
        Lcom/google/common/collect/l0$b;,
        Lcom/google/common/collect/l0$e;,
        Lcom/google/common/collect/l0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i4<",
        "TR;TC;TV;>;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# instance fields
.field private final c:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final g:[I

.field private final h:[I

.field private final i:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

.field private final j:[I

.field private final k:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV;>;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TR;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/i4;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/l0;->i:[[Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lcom/google/common/collect/f3;->Q(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/common/collect/l0;->c:Lcom/google/common/collect/ImmutableMap;

    .line 5
    invoke-static {p3}, Lcom/google/common/collect/f3;->Q(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/collect/l0;->d:Lcom/google/common/collect/ImmutableMap;

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/l0;->g:[I

    .line 7
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/l0;->h:[I

    .line 8
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    new-array p2, p2, [I

    .line 9
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    new-array p3, p3, [I

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/d5$a;

    .line 12
    invoke-interface {v0}, Lcom/google/common/collect/d5$a;->a()Ljava/lang/Object;

    move-result-object v2

    .line 13
    invoke-interface {v0}, Lcom/google/common/collect/d5$a;->b()Ljava/lang/Object;

    move-result-object v4

    .line 14
    iget-object v5, p0, Lcom/google/common/collect/l0;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 15
    iget-object v6, p0, Lcom/google/common/collect/l0;->d:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v6, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 16
    iget-object v7, p0, Lcom/google/common/collect/l0;->i:[[Ljava/lang/Object;

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    .line 17
    invoke-interface {v0}, Lcom/google/common/collect/d5$a;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v2, v4, v7, v8}, Lcom/google/common/collect/i4;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    iget-object v2, p0, Lcom/google/common/collect/l0;->i:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    invoke-interface {v0}, Lcom/google/common/collect/d5$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v6

    .line 19
    iget-object v0, p0, Lcom/google/common/collect/l0;->g:[I

    aget v2, v0, v5

    add-int/2addr v2, v3

    aput v2, v0, v5

    .line 20
    iget-object v0, p0, Lcom/google/common/collect/l0;->h:[I

    aget v2, v0, v6

    add-int/2addr v2, v3

    aput v2, v0, v6

    .line 21
    aput v5, p2, v1

    .line 22
    aput v6, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_0
    iput-object p2, p0, Lcom/google/common/collect/l0;->j:[I

    .line 24
    iput-object p3, p0, Lcom/google/common/collect/l0;->k:[I

    .line 25
    new-instance p1, Lcom/google/common/collect/l0$f;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/common/collect/l0$f;-><init>(Lcom/google/common/collect/l0;Lcom/google/common/collect/l0$a;)V

    iput-object p1, p0, Lcom/google/common/collect/l0;->e:Lcom/google/common/collect/ImmutableMap;

    .line 26
    new-instance p1, Lcom/google/common/collect/l0$c;

    invoke-direct {p1, p0, p2}, Lcom/google/common/collect/l0$c;-><init>(Lcom/google/common/collect/l0;Lcom/google/common/collect/l0$a;)V

    iput-object p1, p0, Lcom/google/common/collect/l0;->f:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic u(Lcom/google/common/collect/l0;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/l0;->g:[I

    return-object p0
.end method

.method static synthetic v(Lcom/google/common/collect/l0;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/l0;->d:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method static synthetic w(Lcom/google/common/collect/l0;)[[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/l0;->i:[[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic x(Lcom/google/common/collect/l0;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/l0;->h:[I

    return-object p0
.end method

.method static synthetic y(Lcom/google/common/collect/l0;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/l0;->c:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method


# virtual methods
.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/l0;->f:Lcom/google/common/collect/ImmutableMap;

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l0;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/l0;->d:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/l0;->i:[[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method k()Lcom/google/common/collect/ImmutableTable$b;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/l0;->j:[I

    iget-object v1, p0, Lcom/google/common/collect/l0;->k:[I

    invoke-static {p0, v0, v1}, Lcom/google/common/collect/ImmutableTable$b;->a(Lcom/google/common/collect/ImmutableTable;[I[I)Lcom/google/common/collect/ImmutableTable$b;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/l0;->e:Lcom/google/common/collect/ImmutableMap;

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l0;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method s(I)Lcom/google/common/collect/d5$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l0;->j:[I

    aget v0, v0, p1

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/l0;->k:[I

    aget p1, v1, p1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/google/common/collect/l0;->i:[[Ljava/lang/Object;

    aget-object v0, v3, v0

    aget-object p1, v0, p1

    .line 6
    invoke-static {v1, v2, p1}, Lcom/google/common/collect/ImmutableTable;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d5$a;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l0;->j:[I

    array-length v0, v0

    return v0
.end method

.method t(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l0;->i:[[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/l0;->j:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/common/collect/l0;->k:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    return-object p1
.end method
