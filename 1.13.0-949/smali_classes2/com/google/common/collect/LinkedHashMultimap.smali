.class public final Lcom/google/common/collect/LinkedHashMultimap;
.super Lcom/google/common/collect/z2;
.source "LinkedHashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedHashMultimap$c;,
        Lcom/google/common/collect/LinkedHashMultimap$b;,
        Lcom/google/common/collect/LinkedHashMultimap$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/z2<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final l:I = 0x10

.field private static final m:I = 0x2

.field static final n:D = 1.0
    .annotation build Lh3/d;
    .end annotation
.end field

.field private static final o:J = 0x1L
    .annotation build Lh3/c;
    .end annotation
.end field


# instance fields
.field transient j:I
    .annotation build Lh3/d;
    .end annotation
.end field

.field private transient k:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/u3;->e(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/z2;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap;->j:I

    const-string p1, "expectedValuesPerKey"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/collect/y;->b(ILjava/lang/String;)I

    .line 4
    iput p2, p0, Lcom/google/common/collect/LinkedHashMultimap;->j:I

    .line 5
    new-instance p1, Lcom/google/common/collect/LinkedHashMultimap$b;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p2, p2, v0, p2}, Lcom/google/common/collect/LinkedHashMultimap$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$b;)V

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap;->k:Lcom/google/common/collect/LinkedHashMultimap$b;

    .line 6
    invoke-static {p1, p1}, Lcom/google/common/collect/LinkedHashMultimap;->P(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method static synthetic H(Lcom/google/common/collect/LinkedHashMultimap$d;Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->Q(Lcom/google/common/collect/LinkedHashMultimap$d;Lcom/google/common/collect/LinkedHashMultimap$d;)V

    return-void
.end method

.method static synthetic I(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$b;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap;->k:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-object p0
.end method

.method static synthetic J(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->P(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method static synthetic K(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->N(Lcom/google/common/collect/LinkedHashMultimap$d;)V

    return-void
.end method

.method static synthetic L(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->M(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method private static M(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->e()Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->h()Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->P(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method private static N(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$d;->a()Lcom/google/common/collect/LinkedHashMultimap$d;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$d;->b()Lcom/google/common/collect/LinkedHashMultimap$d;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->Q(Lcom/google/common/collect/LinkedHashMultimap$d;Lcom/google/common/collect/LinkedHashMultimap$d;)V

    return-void
.end method

.method private O(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/google/common/collect/LinkedHashMultimap$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$b;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->k:Lcom/google/common/collect/LinkedHashMultimap$b;

    .line 3
    invoke-static {v0, v0}, Lcom/google/common/collect/LinkedHashMultimap;->P(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->j:I

    .line 5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/16 v1, 0xc

    .line 6
    invoke-static {v1}, Lcom/google/common/collect/u3;->e(I)Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-virtual {p0, v4}, Lcom/google/common/collect/LinkedHashMultimap;->t(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 12
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/e;->B(Ljava/util/Map;)V

    return-void
.end method

.method private static P(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$b;->k(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->j(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method private static Q(Lcom/google/common/collect/LinkedHashMultimap$d;Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$d;->c(Lcom/google/common/collect/LinkedHashMultimap$d;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$d;->d(Lcom/google/common/collect/LinkedHashMultimap$d;)V

    return-void
.end method

.method private R(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedHashMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/LinkedHashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    .line 3
    invoke-static {p0}, Lcom/google/common/collect/f3;->o(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/common/collect/f3;->o(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/h3;)Lcom/google/common/collect/LinkedHashMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/h3<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Lcom/google/common/collect/h3;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->create(II)Lcom/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->putAll(Lcom/google/common/collect/h3;)Z

    return-object v0
.end method


# virtual methods
.method F()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->j:I

    invoke-static {v0}, Lcom/google/common/collect/u3;->f(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/m;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/e;->clear()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->k:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-static {v0, v0}, Lcom/google/common/collect/LinkedHashMultimap;->P(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/h;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/e;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/h;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/m;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/m;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->hashCode()I

    move-result v0

    return v0
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

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$a;-><init>(Lcom/google/common/collect/LinkedHashMultimap;)V

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->isEmpty()Z

    move-result v0

    return v0
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

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->i()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/f3;->O0(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/h;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/k3;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->keys()Lcom/google/common/collect/k3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/h3;)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/h;->putAll(Lcom/google/common/collect/h3;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/h;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/h;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedHashMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/m;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic s()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->F()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/e;->size()I

    move-result v0

    return v0
.end method

.method t(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$c;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->j:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/LinkedHashMultimap$c;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->toString()Ljava/lang/String;

    move-result-object v0

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

    invoke-super {p0}, Lcom/google/common/collect/e;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
