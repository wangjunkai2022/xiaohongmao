.class final Lcom/google/common/collect/e2;
.super Ljava/lang/Object;
.source "GeneralRange.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/b;
    serializable = true
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/BoundType;

.field private final e:Z

.field private final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private final g:Lcom/google/common/collect/BoundType;

.field private transient h:Lcom/google/common/collect/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e2<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;ZTT;",
            "Lcom/google/common/collect/BoundType;",
            "ZTT;",
            "Lcom/google/common/collect/BoundType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    .line 3
    iput-boolean p2, p0, Lcom/google/common/collect/e2;->b:Z

    .line 4
    iput-boolean p5, p0, Lcom/google/common/collect/e2;->e:Z

    .line 5
    iput-object p3, p0, Lcom/google/common/collect/e2;->c:Ljava/lang/Object;

    .line 6
    invoke-static {p4}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/e2;->d:Lcom/google/common/collect/BoundType;

    .line 7
    iput-object p6, p0, Lcom/google/common/collect/e2;->f:Ljava/lang/Object;

    .line 8
    invoke-static {p7}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lcom/google/common/collect/e2;->g:Lcom/google/common/collect/BoundType;

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p1, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_0
    if-eqz p5, :cond_1

    .line 10
    invoke-interface {p1, p6, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_1
    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    .line 11
    invoke-interface {p1, p3, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    const/4 p5, 0x0

    if-gtz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "lowerEndpoint (%s) > upperEndpoint (%s)"

    .line 12
    invoke-static {v0, v1, p3, p6}, Lcom/google/common/base/a0;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_5

    .line 13
    sget-object p1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-eq p4, p1, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-eq p7, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    or-int p1, p3, p2

    invoke-static {p1}, Lcom/google/common/base/a0;->d(Z)V

    :cond_5
    return-void
.end method

.method static a(Ljava/util/Comparator;)Lcom/google/common/collect/e2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/google/common/collect/e2<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/e2;

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v4, v7

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/e2;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method static d(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e2;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/e2<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/e2;

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/e2;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method static e(Lcom/google/common/collect/Range;)Lcom/google/common/collect/e2;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/Range<",
            "TT;>;)",
            "Lcom/google/common/collect/e2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    :goto_1
    move-object v6, v0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    :cond_2
    move-object v8, v1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->upperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    :goto_2
    move-object v9, v0

    .line 5
    new-instance v0, Lcom/google/common/collect/e2;

    .line 6
    invoke-static {}, Lcom/google/common/collect/s3;->B()Lcom/google/common/collect/s3;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v4

    .line 8
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/common/collect/e2;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method

.method static p(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e2;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            "TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/e2<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/e2;

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/e2;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method

.method static t(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/e2;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/e2<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lcom/google/common/collect/e2;

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/e2;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v8
.end method


# virtual methods
.method b()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method c(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e2;->s(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e2;->r(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/e2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/e2;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    iget-object v2, p1, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    invoke-interface {v0, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/common/collect/e2;->b:Z

    iget-boolean v2, p1, Lcom/google/common/collect/e2;->b:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/google/common/collect/e2;->e:Z

    iget-boolean v2, p1, Lcom/google/common/collect/e2;->e:Z

    if-ne v0, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->h()Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/e2;->h()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->j()Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/e2;->j()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/e2;->i()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/e2;->k()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method h()Lcom/google/common/collect/BoundType;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e2;->d:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->i()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->h()Lcom/google/common/collect/BoundType;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->k()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->j()Lcom/google/common/collect/BoundType;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lcom/google/common/base/w;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e2;->c:Ljava/lang/Object;

    return-object v0
.end method

.method j()Lcom/google/common/collect/BoundType;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e2;->g:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method k()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e2;->f:Ljava/lang/Object;

    return-object v0
.end method

.method l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/e2;->b:Z

    return v0
.end method

.method m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/e2;->e:Z

    return v0
.end method

.method n(Lcom/google/common/collect/e2;)Lcom/google/common/collect/e2;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e2<",
            "TT;>;)",
            "Lcom/google/common/collect/e2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/a0;->d(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/google/common/collect/e2;->b:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->i()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->h()Lcom/google/common/collect/BoundType;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->l()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iget-boolean v0, p1, Lcom/google/common/collect/e2;->b:Z

    .line 8
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->i()Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->h()Lcom/google/common/collect/BoundType;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/e2;->i()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/common/collect/e2;->i()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    if-nez v3, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->h()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_2

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->i()Ljava/lang/Object;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->h()Lcom/google/common/collect/BoundType;

    move-result-object v2

    :cond_2
    :goto_0
    move v5, v0

    .line 15
    iget-boolean v0, p0, Lcom/google/common/collect/e2;->e:Z

    .line 16
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->k()Ljava/lang/Object;

    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->j()Lcom/google/common/collect/BoundType;

    move-result-object v4

    .line 18
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->m()Z

    move-result v6

    if-nez v6, :cond_3

    .line 19
    iget-boolean v0, p1, Lcom/google/common/collect/e2;->e:Z

    .line 20
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->k()Ljava/lang/Object;

    move-result-object v3

    .line 21
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->j()Lcom/google/common/collect/BoundType;

    move-result-object v4

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->m()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 23
    iget-object v6, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/e2;->k()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/common/collect/e2;->k()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_4

    if-nez v6, :cond_5

    .line 24
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->j()Lcom/google/common/collect/BoundType;

    move-result-object v6

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v6, v7, :cond_5

    .line 25
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->k()Ljava/lang/Object;

    move-result-object v3

    .line 26
    invoke-virtual {p1}, Lcom/google/common/collect/e2;->j()Lcom/google/common/collect/BoundType;

    move-result-object v4

    :cond_5
    :goto_1
    move v8, v0

    move-object v9, v3

    if-eqz v5, :cond_7

    if-eqz v8, :cond_7

    .line 27
    iget-object p1, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    invoke-interface {p1, v1, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_6

    if-nez p1, :cond_7

    .line 28
    sget-object p1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v2, p1, :cond_7

    if-ne v4, p1, :cond_7

    .line 29
    :cond_6
    sget-object p1, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    .line 30
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    move-object v7, p1

    move-object v10, v0

    move-object v6, v9

    goto :goto_2

    :cond_7
    move-object v6, v1

    move-object v7, v2

    move-object v10, v4

    .line 31
    :goto_2
    new-instance p1, Lcom/google/common/collect/e2;

    iget-object v4, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/common/collect/e2;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object p1
.end method

.method o()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/e2;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e2;->s(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/e2;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e2;->r(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method q()Lcom/google/common/collect/e2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e2;->h:Lcom/google/common/collect/e2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/e2;

    iget-object v1, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    .line 3
    invoke-static {v1}, Lcom/google/common/collect/s3;->k(Ljava/util/Comparator;)Lcom/google/common/collect/s3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/s3;->G()Lcom/google/common/collect/s3;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/common/collect/e2;->e:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->k()Ljava/lang/Object;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->j()Lcom/google/common/collect/BoundType;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/common/collect/e2;->b:Z

    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->i()Ljava/lang/Object;

    move-result-object v7

    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->h()Lcom/google/common/collect/BoundType;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/common/collect/e2;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    .line 8
    iput-object p0, v0, Lcom/google/common/collect/e2;->h:Lcom/google/common/collect/e2;

    .line 9
    iput-object v0, p0, Lcom/google/common/collect/e2;->h:Lcom/google/common/collect/e2;

    :cond_0
    return-object v0
.end method

.method r(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->k()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->j()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    and-int/2addr p1, v1

    or-int/2addr p1, v2

    return p1
.end method

.method s(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->i()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/e2;->h()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    and-int/2addr p1, v1

    or-int/2addr p1, v2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/e2;->a:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/e2;->d:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x5b

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/common/collect/e2;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/e2;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v1, "-\u221e"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/common/collect/e2;->e:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/e2;->f:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v1, "\u221e"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/e2;->g:Lcom/google/common/collect/BoundType;

    if-ne v1, v2, :cond_3

    const/16 v1, 0x5d

    goto :goto_3

    :cond_3
    const/16 v1, 0x29

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
