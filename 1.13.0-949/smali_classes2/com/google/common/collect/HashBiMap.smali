.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lcom/google/common/collect/u;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$b;,
        Lcom/google/common/collect/HashBiMap$e;,
        Lcom/google/common/collect/HashBiMap$d;,
        Lcom/google/common/collect/HashBiMap$a;,
        Lcom/google/common/collect/HashBiMap$c;,
        Lcom/google/common/collect/HashBiMap$g;,
        Lcom/google/common/collect/HashBiMap$f;,
        Lcom/google/common/collect/HashBiMap$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/u<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field private static final q:I = -0x1

.field private static final r:I = -0x2


# instance fields
.field transient a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field transient b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field transient c:I

.field transient d:I

.field private transient e:[I

.field private transient f:[I

.field private transient g:[I

.field private transient h:[I

.field private transient i:I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient j:I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient k:[I

.field private transient l:[I

.field private transient m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient p:Lcom/google/common/collect/u;
    .annotation build Lcom/google/j2objc/annotations/RetainedWith;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->u(I)V

    return-void
.end method

.method private B(Ljava/io/ObjectInputStream;)V
    .locals 2
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
    invoke-static {p1}, Lcom/google/common/collect/m4;->h(Ljava/io/ObjectInputStream;)I

    move-result v0

    const/16 v1, 0x10

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/common/collect/HashBiMap;->u(I)V

    .line 4
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/m4;->c(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private D(III)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->j(II)V

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->k(II)V

    .line 4
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget p2, p2, p1

    .line 5
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget p3, p3, p1

    .line 6
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/HashBiMap;->J(II)V

    .line 7
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    sub-int/2addr p2, v0

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/HashBiMap;->x(II)V

    .line 8
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/lit8 p3, p2, -0x1

    const/4 v1, 0x0

    aput-object v1, p1, p3

    .line 9
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    add-int/lit8 p3, p2, -0x1

    aput-object v1, p1, p3

    sub-int/2addr p2, v0

    .line 10
    iput p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    .line 11
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    return-void
.end method

.method private H(ILjava/lang/Object;Z)V
    .locals 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v1

    .line 3
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->p(Ljava/lang/Object;I)I

    move-result v2

    .line 4
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->j:I

    const/4 v4, -0x2

    if-eq v2, v0, :cond_2

    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget v3, p3, v2

    .line 6
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget v4, p3, v2

    .line 7
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->E(II)V

    .line 8
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne p1, p3, :cond_2

    move p1, v2

    goto :goto_1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key already present in map: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-ne v3, p1, :cond_3

    .line 10
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget v3, p3, p1

    goto :goto_2

    .line 11
    :cond_3
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne v3, p3, :cond_4

    move v3, v2

    :cond_4
    :goto_2
    if-ne v4, p1, :cond_5

    .line 12
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget v2, p3, p1

    goto :goto_3

    .line 13
    :cond_5
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne v4, p3, :cond_6

    goto :goto_3

    :cond_6
    move v2, v4

    .line 14
    :goto_3
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget p3, p3, p1

    .line 15
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget v0, v0, p1

    .line 16
    invoke-direct {p0, p3, v0}, Lcom/google/common/collect/HashBiMap;->J(II)V

    .line 17
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p3, p3, p1

    invoke-static {p3}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->j(II)V

    .line 18
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aput-object p2, p3, p1

    .line 19
    invoke-static {p2}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->v(II)V

    .line 20
    invoke-direct {p0, v3, p1}, Lcom/google/common/collect/HashBiMap;->J(II)V

    .line 21
    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->J(II)V

    return-void
.end method

.method private I(ILjava/lang/Object;Z)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v1

    .line 3
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->s(Ljava/lang/Object;I)I

    move-result v2

    if-eq v2, v0, :cond_2

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->F(II)V

    .line 5
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne p1, p3, :cond_2

    move p1, v2

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value already present in map: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p3, p3, p1

    invoke-static {p3}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->k(II)V

    .line 8
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p2, p3, p1

    .line 9
    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->w(II)V

    return-void
.end method

.method private J(II)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1
    iput p2, p0, Lcom/google/common/collect/HashBiMap;->i:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aput p2, v1, p1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 3
    iput p1, p0, Lcom/google/common/collect/HashBiMap;->j:I

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aput p1, v0, p2

    :goto_1
    return-void
.end method

.method private K(Ljava/io/ObjectOutputStream;)V
    .locals 0
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
    invoke-static {p0, p1}, Lcom/google/common/collect/m4;->i(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/HashBiMap;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/HashBiMap;->i:I

    return p0
.end method

.method static synthetic b(Lcom/google/common/collect/HashBiMap;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->I(ILjava/lang/Object;Z)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic d(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->p:Lcom/google/common/collect/u;

    return-object p1
.end method

.method static synthetic e(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->H(ILjava/lang/Object;Z)V

    return-void
.end method

.method private h(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method private static i(I)[I
    .locals 1

    .line 1
    new-array p0, p0, [I

    const/4 v0, -0x1

    .line 2
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method private j(II)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->h(I)I

    move-result p2

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v3, v2, p1

    aput v3, v1, p2

    .line 5
    aput v0, v2, p1

    return-void

    .line 6
    :cond_1
    aget p2, v1, p2

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v1, v1, p2

    :goto_1
    move v4, v1

    move v1, p2

    move p2, v4

    if-eq p2, v0, :cond_3

    if-ne p2, p1, :cond_2

    .line 8
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v2, p2, p1

    aput v2, p2, v1

    .line 9
    aput v0, p2, p1

    return-void

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v1, v1, p2

    goto :goto_1

    .line 11
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to find entry with key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private k(II)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->h(I)I

    move-result p2

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v3, v2, p1

    aput v3, v1, p2

    .line 5
    aput v0, v2, p1

    return-void

    .line 6
    :cond_1
    aget p2, v1, p2

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v1, v1, p2

    :goto_1
    move v4, v1

    move v1, p2

    move p2, v4

    if-eq p2, v0, :cond_3

    if-ne p2, p1, :cond_2

    .line 8
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v2, p2, p1

    aput v2, p2, v1

    .line 9
    aput v0, p2, p1

    return-void

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v1, v1, p2

    goto :goto_1

    .line 11
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to find entry with value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private l(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 2
    array-length v0, v0

    .line 3
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->f(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->m([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->m([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    .line 8
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->m([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 9
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->m([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 11
    invoke-static {p1, v0, v1}, Lcom/google/common/collect/h2;->a(ID)I

    move-result p1

    .line 12
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->i(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    .line 13
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->i(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    const/4 p1, 0x0

    .line 14
    :goto_0
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ge p1, v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    .line 16
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->h(I)I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v3, v2, v0

    aput v3, v1, p1

    .line 18
    aput p1, v2, v0

    .line 19
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    .line 20
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->h(I)I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v3, v2, v0

    aput v3, v1, p1

    .line 22
    aput p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static m([II)[I
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, -0x1

    .line 3
    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method private v(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->h(I)I

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v2, v1, p2

    aput v2, v0, p1

    .line 4
    aput p1, v1, p2

    return-void
.end method

.method private w(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 2
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->h(I)I

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v2, v1, p2

    aput v2, v0, p1

    .line 4
    aput p1, v1, p2

    return-void
.end method

.method private x(II)V
    .locals 5

    if-ne p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget v0, v0, p1

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget v1, v1, p1

    .line 3
    invoke-direct {p0, v0, p2}, Lcom/google/common/collect/HashBiMap;->J(II)V

    .line 4
    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->J(II)V

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 6
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v3, v2, p1

    .line 7
    aput-object v1, v0, p2

    .line 8
    aput-object v3, v2, p2

    .line 9
    invoke-static {v1}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    .line 10
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->h(I)I

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 12
    aput p2, v1, v0

    goto :goto_1

    .line 13
    :cond_1
    aget v0, v1, v0

    .line 14
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v1, v1, v0

    :goto_0
    move v4, v1

    move v1, v0

    move v0, v4

    if-ne v0, p1, :cond_4

    .line 15
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aput p2, v0, v1

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v1, v0, p1

    aput v1, v0, p2

    const/4 v1, -0x1

    .line 17
    aput v1, v0, p1

    .line 18
    invoke-static {v3}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    .line 19
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->h(I)I

    move-result v0

    .line 20
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v3, v2, v0

    if-ne v3, p1, :cond_2

    .line 21
    aput p2, v2, v0

    goto :goto_3

    .line 22
    :cond_2
    aget v0, v2, v0

    .line 23
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v2, v2, v0

    :goto_2
    move v4, v2

    move v2, v0

    move v0, v4

    if-ne v0, p1, :cond_3

    .line 24
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aput p2, v0, v2

    .line 25
    :goto_3
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v2, v0, p1

    aput v2, v0, p2

    .line 26
    aput v1, v0, p1

    return-void

    .line 27
    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v2, v2, v0

    goto :goto_2

    .line 28
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v1, v1, v0

    goto :goto_0
.end method


# virtual methods
.method A(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
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
            "(TV;TK;Z)TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->s(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p1, p1, v1

    .line 4
    invoke-static {p1, p2}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 5
    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lcom/google/common/collect/HashBiMap;->H(ILjava/lang/Object;Z)V

    return-object p1

    .line 6
    :cond_1
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->j:I

    .line 7
    invoke-static {p2}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v3

    .line 8
    invoke-virtual {p0, p2, v3}, Lcom/google/common/collect/HashBiMap;->p(Ljava/lang/Object;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz p3, :cond_2

    if-eq v4, v2, :cond_4

    .line 9
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget v1, p3, v4

    .line 10
    invoke-virtual {p0, v4, v3}, Lcom/google/common/collect/HashBiMap;->E(II)V

    goto :goto_1

    :cond_2
    if-ne v4, v2, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    const-string v2, "Key already present: %s"

    .line 11
    invoke-static {p3, v2, p2}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 12
    :cond_4
    :goto_1
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p3, v5

    invoke-direct {p0, p3}, Lcom/google/common/collect/HashBiMap;->l(I)V

    .line 13
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    aput-object p2, p3, v2

    .line 14
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 15
    invoke-direct {p0, v2, v3}, Lcom/google/common/collect/HashBiMap;->v(II)V

    .line 16
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->w(II)V

    const/4 p1, -0x2

    if-ne v1, p1, :cond_5

    .line 17
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->i:I

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget p1, p1, v1

    .line 18
    :goto_2
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->J(II)V

    .line 19
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/HashBiMap;->J(II)V

    .line 20
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    .line 21
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method C(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->E(II)V

    return-void
.end method

.method E(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->D(III)V

    return-void
.end method

.method F(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/common/collect/HashBiMap;->D(III)V

    return-void
.end method

.method G(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->s(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->F(II)V

    return-object v1
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 7
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 8
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 9
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 v0, -0x2

    .line 10
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->i:I

    .line 11
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->j:I

    .line 12
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->d:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->o(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->q(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/HashBiMap$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$c;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->o:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->y(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->o(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public inverse()Lcom/google/common/collect/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->p:Lcom/google/common/collect/u;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/HashBiMap$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$d;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->p:Lcom/google/common/collect/u;

    :cond_0
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

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->m:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/HashBiMap$f;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$f;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->m:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method n(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->h(I)I

    move-result p2

    aget p2, p3, p2

    :goto_0
    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    .line 2
    aget-object p3, p5, p2

    invoke-static {p3, p1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return p2

    .line 3
    :cond_0
    aget p2, p4, p2

    goto :goto_0

    :cond_1
    return p3
.end method

.method o(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->p(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method p(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->n(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->y(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method q(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->s(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->p(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->E(II)V

    return-object v1
.end method

.method s(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->n(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/HashBiMap;->c:I

    return v0
.end method

.method t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->q(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method u(I)V
    .locals 2

    const-string v0, "expectedSize"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/collect/y;->b(ILjava/lang/String;)I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/common/collect/h2;->a(ID)I

    move-result v0

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    .line 4
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    .line 5
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->i(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    .line 7
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->i(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    .line 8
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->i(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    .line 9
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->i(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    const/4 v0, -0x2

    .line 10
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->i:I

    .line 11
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->j:I

    .line 12
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->i(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 13
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->i(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    return-void
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->n:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/HashBiMap$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$g;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->n:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method y(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
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
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->p(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, p1, v1

    .line 4
    invoke-static {p1, p2}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 5
    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lcom/google/common/collect/HashBiMap;->I(ILjava/lang/Object;Z)V

    return-object p1

    .line 6
    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/h2;->d(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->s(Ljava/lang/Object;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    if-eq v3, v2, :cond_4

    .line 8
    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/HashBiMap;->F(II)V

    goto :goto_1

    :cond_2
    if-ne v3, v2, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    const-string v2, "Value already present: %s"

    .line 9
    invoke-static {p3, v2, p2}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_4
    :goto_1
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p3, v4

    invoke-direct {p0, p3}, Lcom/google/common/collect/HashBiMap;->l(I)V

    .line 11
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    aput-object p1, p3, v2

    .line 12
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p2, p1, v2

    .line 13
    invoke-direct {p0, v2, v0}, Lcom/google/common/collect/HashBiMap;->v(II)V

    .line 14
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->w(II)V

    .line 15
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->j:I

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->J(II)V

    .line 16
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 p2, -0x2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->J(II)V

    .line 17
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    .line 18
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    const/4 p1, 0x0

    return-object p1
.end method
