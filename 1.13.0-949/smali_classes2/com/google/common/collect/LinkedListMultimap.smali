.class public Lcom/google/common/collect/LinkedListMultimap;
.super Lcom/google/common/collect/h;
.source "LinkedListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/a3;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedListMultimap$i;,
        Lcom/google/common/collect/LinkedListMultimap$e;,
        Lcom/google/common/collect/LinkedListMultimap$h;,
        Lcom/google/common/collect/LinkedListMultimap$f;,
        Lcom/google/common/collect/LinkedListMultimap$g;
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
        "Lcom/google/common/collect/a3<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final k:J
    .annotation build Lh3/c;
    .end annotation
.end field


# instance fields
.field private transient f:Lcom/google/common/collect/LinkedListMultimap$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$g<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient g:Lcom/google/common/collect/LinkedListMultimap$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$g<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/google/common/collect/LinkedListMultimap$f<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient i:I

.field private transient j:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/h;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/u3;->c(I)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/h3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/h3<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Lcom/google/common/collect/h3;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->putAll(Lcom/google/common/collect/h3;)Z

    return-void
.end method

.method private A(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$i;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$i;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/x2;->h(Ljava/util/Iterator;)V

    return-void
.end method

.method private B(Lcom/google/common/collect/LinkedListMultimap$g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedListMultimap$g<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 4
    :goto_0
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    if-eqz v1, :cond_1

    .line 5
    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    goto :goto_1

    .line 6
    :cond_1
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 7
    :goto_1
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$g;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap$g;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/LinkedListMultimap$f;

    const/4 v0, 0x0

    .line 9
    iput v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->c:I

    .line 10
    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    goto :goto_3

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$f;

    .line 12
    iget v1, v0, Lcom/google/common/collect/LinkedListMultimap$f;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/LinkedListMultimap$f;->c:I

    .line 13
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    if-nez v1, :cond_3

    .line 14
    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$g;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v2, v0, Lcom/google/common/collect/LinkedListMultimap$f;->a:Lcom/google/common/collect/LinkedListMultimap$g;

    goto :goto_2

    .line 15
    :cond_3
    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$g;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$g;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 16
    :goto_2
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap$g;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    if-nez p1, :cond_4

    .line 17
    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$f;->b:Lcom/google/common/collect/LinkedListMultimap$g;

    goto :goto_3

    .line 18
    :cond_4
    iput-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 19
    :goto_3
    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    return-void
.end method

.method private C(Ljava/io/ObjectOutputStream;)V
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
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/LinkedListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/h3;)Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/h3<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/LinkedListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(Lcom/google/common/collect/h3;)V

    return-object v0
.end method

.method static synthetic k(Lcom/google/common/collect/LinkedListMultimap;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    return p0
.end method

.method static synthetic l(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$g;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$g;

    return-object p0
.end method

.method static synthetic m(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$g;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    return-object p0
.end method

.method static synthetic n(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->u(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic o(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->B(Lcom/google/common/collect/LinkedListMultimap$g;)V

    return-void
.end method

.method static synthetic p(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->A(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic q(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic r(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$g;)Lcom/google/common/collect/LinkedListMultimap$g;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/LinkedListMultimap;->t(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$g;)Lcom/google/common/collect/LinkedListMultimap$g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcom/google/common/collect/LinkedListMultimap;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    return p0
.end method

.method private t(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$g;)Lcom/google/common/collect/LinkedListMultimap$g;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/LinkedListMultimap$g;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/LinkedListMultimap$g<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/LinkedListMultimap$g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$g;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/LinkedListMultimap$g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    if-nez p2, :cond_0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 4
    iget-object p2, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    new-instance p3, Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-direct {p3, v0}, Lcom/google/common/collect/LinkedListMultimap$f;-><init>(Lcom/google/common/collect/LinkedListMultimap$g;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    goto :goto_2

    :cond_0
    if-nez p3, :cond_2

    .line 6
    iget-object p2, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object v0, p2, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 7
    iput-object p2, v0, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 8
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 9
    iget-object p2, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/LinkedListMultimap$f;

    if-nez p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    new-instance p3, Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-direct {p3, v0}, Lcom/google/common/collect/LinkedListMultimap$f;-><init>(Lcom/google/common/collect/LinkedListMultimap$g;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    goto :goto_2

    .line 12
    :cond_1
    iget p1, p2, Lcom/google/common/collect/LinkedListMultimap$f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lcom/google/common/collect/LinkedListMultimap$f;->c:I

    .line 13
    iget-object p1, p2, Lcom/google/common/collect/LinkedListMultimap$f;->b:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 14
    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$g;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 15
    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 16
    iput-object v0, p2, Lcom/google/common/collect/LinkedListMultimap$f;->b:Lcom/google/common/collect/LinkedListMultimap$g;

    goto :goto_2

    .line 17
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/LinkedListMultimap$f;

    .line 18
    iget v1, p2, Lcom/google/common/collect/LinkedListMultimap$f;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/google/common/collect/LinkedListMultimap$f;->c:I

    .line 19
    iget-object p2, p3, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object p2, v0, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 20
    iget-object p2, p3, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    iput-object p2, v0, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 21
    iput-object p3, v0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 22
    iput-object p3, v0, Lcom/google/common/collect/LinkedListMultimap$g;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 23
    iget-object p2, p3, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    if-nez p2, :cond_3

    .line 24
    iget-object p2, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->a:Lcom/google/common/collect/LinkedListMultimap$g;

    goto :goto_0

    .line 25
    :cond_3
    iput-object v0, p2, Lcom/google/common/collect/LinkedListMultimap$g;->e:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 26
    :goto_0
    iget-object p1, p3, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    if-nez p1, :cond_4

    .line 27
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    goto :goto_1

    .line 28
    :cond_4
    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 29
    :goto_1
    iput-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 30
    iput-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 31
    :goto_2
    iget p1, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    return-object v0
.end method

.method private static u(Ljava/lang/Object;)V
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method private y(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$i;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$i;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/b3;->s(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private z(Ljava/io/ObjectInputStream;)V
    .locals 4
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
    invoke-static {}, Lcom/google/common/collect/c0;->L()Lcom/google/common/collect/c0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/util/Map;
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

    new-instance v0, Lcom/google/common/collect/j3$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j3$a;-><init>(Lcom/google/common/collect/h3;)V

    return-object v0
.end method

.method bridge synthetic c()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->w()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->g:Lcom/google/common/collect/LinkedListMultimap$g;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    .line 5
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->j:I

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

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$c;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

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

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/h;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$a;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method bridge synthetic h()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->x()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->hashCode()I

    move-result v0

    return v0
.end method

.method i()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$g;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

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

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/LinkedListMultimap;->t(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$g;)Lcom/google/common/collect/LinkedListMultimap$g;

    const/4 p1, 0x1

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

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->y(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->A(Ljava/lang/Object;)V

    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
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
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->y(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$i;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$i;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 10
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 11
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->i:I

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/h;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$b;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method

.method x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$d;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method
