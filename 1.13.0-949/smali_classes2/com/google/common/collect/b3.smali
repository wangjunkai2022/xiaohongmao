.class public final Lcom/google/common/collect/b3;
.super Ljava/lang/Object;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/b3$g;,
        Lcom/google/common/collect/b3$c;,
        Lcom/google/common/collect/b3$i;,
        Lcom/google/common/collect/b3$j;,
        Lcom/google/common/collect/b3$d;,
        Lcom/google/common/collect/b3$k;,
        Lcom/google/common/collect/b3$h;,
        Lcom/google/common/collect/b3$f;,
        Lcom/google/common/collect/b3$l;,
        Lcom/google/common/collect/b3$m;,
        Lcom/google/common/collect/b3$n;,
        Lcom/google/common/collect/b3$e;
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

.method public static A(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 3
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/b3$h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/b3$h;-><init>(Ljava/util/List;I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/common/collect/b3$f;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/b3$f;-><init>(Ljava/util/List;I)V

    :goto_1
    return-object v0
.end method

.method public static B(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/b3$j;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lcom/google/common/collect/b3$j;

    invoke-virtual {p0}, Lcom/google/common/collect/b3$j;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/google/common/collect/b3$i;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b3$i;-><init>(Ljava/util/List;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lcom/google/common/collect/b3$j;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b3$j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static C(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/b3$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b3$a;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/b3$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b3$b;-><init>(Ljava/util/List;)V

    .line 4
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/util/List;Lcom/google/common/base/q;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TF;>;",
            "Lcom/google/common/base/q<",
            "-TF;+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/b3$l;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/b3$l;-><init>(Ljava/util/List;Lcom/google/common/base/q;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/b3$m;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/b3$m;-><init>(Ljava/util/List;Lcom/google/common/base/q;)V

    :goto_0
    return-object v0
.end method

.method static a(Ljava/util/List;ILjava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;I",
            "Ljava/lang/Iterable<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-interface {p0, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;[TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b3$n;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/b3$n;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;[TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b3$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/b3$e;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+TB;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/w;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e([Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/List<",
            "+TB;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/b3;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static f(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b3$k;

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b3$k;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lh3/a;
    .end annotation

    new-instance v0, Lcom/google/common/collect/b3$d;

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b3$d;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static i(I)I
    .locals 4
    .annotation build Lh3/d;
    .end annotation

    const-string v0, "arraySize"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/collect/y;->b(ILjava/lang/String;)I

    int-to-long v0, p0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    .line 2
    div-int/lit8 p0, p0, 0xa

    int-to-long v2, p0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/f;->x(J)I

    move-result p0

    return p0
.end method

.method static j(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    return v2

    .line 6
    :cond_2
    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_5

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 7
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1

    .line 8
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/x2;->t(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static k(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    not-int v0, v0

    not-int v0, v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method static l(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/google/common/collect/b3;->m(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 4
    :cond_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static m(Ljava/util/List;Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method static n(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/google/common/collect/b3;->o(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    .line 4
    :cond_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static o(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method static p(Ljava/util/List;I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b3$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b3$c;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static q()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/b;
        serializable = true
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static r(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/b;
        serializable = true
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-static {p0}, Lcom/google/common/collect/z;->b(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/b3;->s(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static s(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/b;
        serializable = true
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/b3;->q()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Lcom/google/common/collect/x2;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method public static varargs t([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/b;
        serializable = true
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/b3;->i(I)I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static u(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/b;
        serializable = true
    .end annotation

    const-string v0, "initialArraySize"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/collect/y;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static v(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/b;
        serializable = true
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/b3;->i(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static w()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object v0
.end method

.method public static x(Ljava/lang/Iterable;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/c;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/common/collect/z;->b(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/b3;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 3
    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static y()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/b;
        serializable = true
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public static z(Ljava/lang/Iterable;)Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lh3/b;
        serializable = true
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/b3;->y()Ljava/util/LinkedList;

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Lcom/google/common/collect/w2;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method
