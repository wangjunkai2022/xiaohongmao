.class abstract Lcom/google/common/collect/e;
.super Lcom/google/common/collect/h;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e$f;,
        Lcom/google/common/collect/e$i;,
        Lcom/google/common/collect/e$c;,
        Lcom/google/common/collect/e$d;,
        Lcom/google/common/collect/e$g;,
        Lcom/google/common/collect/e$j;,
        Lcom/google/common/collect/e$e;,
        Lcom/google/common/collect/e$h;,
        Lcom/google/common/collect/e$l;,
        Lcom/google/common/collect/e$m;,
        Lcom/google/common/collect/e$o;,
        Lcom/google/common/collect/e$n;,
        Lcom/google/common/collect/e$k;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field private static final h:J = 0x21f766b1f568c81dL


# instance fields
.field private transient f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private transient g:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/h;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    return-void
.end method

.method private A(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/f3;->q0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 4
    iget p1, p0, Lcom/google/common/collect/e;->g:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/e;->g:I

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/google/common/collect/e;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic l(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/e;->z(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/google/common/collect/e;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/e;->g:I

    return p0
.end method

.method static synthetic n(Lcom/google/common/collect/e;I)I
    .locals 0

    iput p1, p0, Lcom/google/common/collect/e;->g:I

    return p1
.end method

.method static synthetic o(Lcom/google/common/collect/e;)I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/e;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/e;->g:I

    return v0
.end method

.method static synthetic p(Lcom/google/common/collect/e;)I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/e;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/e;->g:I

    return v0
.end method

.method static synthetic q(Lcom/google/common/collect/e;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/e;->A(Ljava/lang/Object;)V

    return-void
.end method

.method private y(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->t(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static z(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method final B(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/common/collect/e;->g:I

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/a0;->d(Z)V

    .line 5
    iget v1, p0, Lcom/google/common/collect/e;->g:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/collect/e;->g:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method C(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method D(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/e$k;-><init>(Lcom/google/common/collect/e;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/e$k;)V

    return-object v0
.end method

.method final E(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/e$k;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/e$k;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/common/collect/e<",
            "TK;TV;>.k;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/e$h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/e$h;-><init>(Lcom/google/common/collect/e;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/e$k;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/e$l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/e$l;-><init>(Lcom/google/common/collect/e;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/e$k;)V

    :goto_0
    return-object v0
.end method

.method b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e$c;

    iget-object v1, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e$c;-><init>(Lcom/google/common/collect/e;Ljava/util/Map;)V

    return-object v0
.end method

.method c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/n4;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/h$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h$b;-><init>(Lcom/google/common/collect/h;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/h$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h$a;-><init>(Lcom/google/common/collect/h;)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/common/collect/e;->g:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e$e;

    iget-object v1, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e$e;-><init>(Lcom/google/common/collect/e;Ljava/util/Map;)V

    return-object v0
.end method

.method e()Lcom/google/common/collect/k3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j3$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j3$g;-><init>(Lcom/google/common/collect/h3;)V

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/h;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->t(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/e;->D(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method h()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/h$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h$c;-><init>(Lcom/google/common/collect/h;)V

    return-object v0
.end method

.method i()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e$b;-><init>(Lcom/google/common/collect/e;)V

    return-object v0
.end method

.method j()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e$a;-><init>(Lcom/google/common/collect/e;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
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
            "(TK;TV;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->t(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget p2, p0, Lcom/google/common/collect/e;->g:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/e;->g:I

    .line 5
    iget-object p2, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "New Collection violated the Collection spec"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 7
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget p1, p0, Lcom/google/common/collect/e;->g:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/collect/e;->g:I

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/e;->x()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/e;->s()Ljava/util/Collection;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget v1, p0, Lcom/google/common/collect/e;->g:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/collect/e;->g:I

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e;->C(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/e;->y(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/e;->s()Ljava/util/Collection;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget v1, p0, Lcom/google/common/collect/e;->g:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/collect/e;->g:I

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 9
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget v1, p0, Lcom/google/common/collect/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/e;->g:I

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/e;->C(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method abstract s()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/e;->g:I

    return v0
.end method

.method t(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/e;->s()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method final u()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/e$f;

    iget-object v1, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e$f;-><init>(Lcom/google/common/collect/e;Ljava/util/NavigableMap;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/google/common/collect/e$i;

    iget-object v1, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e$i;-><init>(Lcom/google/common/collect/e;Ljava/util/SortedMap;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/common/collect/e$c;

    iget-object v1, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e$c;-><init>(Lcom/google/common/collect/e;Ljava/util/Map;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/h;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final w()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/e$g;

    iget-object v1, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e$g;-><init>(Lcom/google/common/collect/e;Ljava/util/NavigableMap;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/google/common/collect/e$j;

    iget-object v1, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e$j;-><init>(Lcom/google/common/collect/e;Ljava/util/SortedMap;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/google/common/collect/e$e;

    iget-object v1, p0, Lcom/google/common/collect/e;->f:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e$e;-><init>(Lcom/google/common/collect/e;Ljava/util/Map;)V

    return-object v0
.end method

.method x()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/e;->s()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e;->C(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
