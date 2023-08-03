.class public final Lcom/google/common/math/j;
.super Ljava/lang/Object;
.source "StatsAccumulator.java"


# annotations
.annotation build Lh3/a;
.end annotation

.annotation build Lh3/c;
.end annotation


# instance fields
.field private a:J

.field private b:D

.field private c:D

.field private d:D

.field private e:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/common/math/j;->a:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/common/math/j;->b:D

    .line 4
    iput-wide v0, p0, Lcom/google/common/math/j;->c:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 5
    iput-wide v0, p0, Lcom/google/common/math/j;->d:D

    .line 6
    iput-wide v0, p0, Lcom/google/common/math/j;->e:D

    return-void
.end method

.method static h(DD)D
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    .line 2
    :cond_0
    invoke-static {p2, p3}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-double v0, p0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    :cond_2
    :goto_0
    return-wide p0
.end method


# virtual methods
.method public a(D)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/j;->a:J

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-nez v8, :cond_0

    .line 2
    iput-wide v4, p0, Lcom/google/common/math/j;->a:J

    .line 3
    iput-wide p1, p0, Lcom/google/common/math/j;->b:D

    .line 4
    iput-wide p1, p0, Lcom/google/common/math/j;->d:D

    .line 5
    iput-wide p1, p0, Lcom/google/common/math/j;->e:D

    .line 6
    invoke-static {p1, p2}, Lcom/google/common/primitives/d;->n(D)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iput-wide v2, p0, Lcom/google/common/math/j;->c:D

    goto :goto_1

    :cond_0
    add-long/2addr v0, v4

    .line 8
    iput-wide v0, p0, Lcom/google/common/math/j;->a:J

    .line 9
    invoke-static {p1, p2}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/math/j;->b:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-wide v0, p0, Lcom/google/common/math/j;->b:D

    sub-double v2, p1, v0

    .line 11
    iget-wide v4, p0, Lcom/google/common/math/j;->a:J

    long-to-double v4, v4

    div-double v4, v2, v4

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/math/j;->b:D

    .line 12
    iget-wide v4, p0, Lcom/google/common/math/j;->c:D

    sub-double v0, p1, v0

    mul-double v2, v2, v0

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/google/common/math/j;->c:D

    goto :goto_0

    .line 13
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/j;->b:D

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/j;->h(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/j;->b:D

    .line 14
    iput-wide v2, p0, Lcom/google/common/math/j;->c:D

    .line 15
    :goto_0
    iget-wide v0, p0, Lcom/google/common/math/j;->d:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/j;->d:D

    .line 16
    iget-wide v0, p0, Lcom/google/common/math/j;->e:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/math/j;->e:D

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Lcom/google/common/math/Stats;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/google/common/math/j;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/j;->a:J

    .line 4
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/j;->b:D

    .line 5
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/j;->c:D

    .line 6
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/j;->d:D

    .line 7
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/j;->e:D

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/j;->a:J

    .line 9
    iget-wide v0, p0, Lcom/google/common/math/j;->b:D

    invoke-static {v0, v1}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/j;->b:D

    sub-double/2addr v0, v2

    .line 11
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v4, v4, v0

    iget-wide v6, p0, Lcom/google/common/math/j;->a:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/j;->b:D

    .line 12
    iget-wide v2, p0, Lcom/google/common/math/j;->c:D

    .line 13
    invoke-virtual {p1}, Lcom/google/common/math/Stats;->b()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/common/math/j;->b:D

    sub-double/2addr v6, v8

    mul-double v0, v0, v6

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->count()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double v0, v0, v6

    add-double/2addr v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/math/j;->c:D

    goto :goto_0

    .line 14
    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/j;->b:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/math/j;->h(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/j;->b:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 15
    iput-wide v0, p0, Lcom/google/common/math/j;->c:D

    .line 16
    :goto_0
    iget-wide v0, p0, Lcom/google/common/math/j;->d:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->min()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/j;->d:D

    .line 17
    iget-wide v0, p0, Lcom/google/common/math/j;->e:D

    invoke-virtual {p1}, Lcom/google/common/math/Stats;->max()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/j;->e:D

    :goto_1
    return-void
.end method

.method public c(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/j;->a(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/math/j;->a(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs e([D)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 2
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/j;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs f([I)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    int-to-double v2, v2

    .line 2
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/j;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs g([J)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    long-to-double v2, v2

    .line 2
    invoke-virtual {p0, v2, v3}, Lcom/google/common/math/j;->a(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/math/j;->a:J

    return-wide v0
.end method

.method public j()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/j;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/j;->e:D

    return-wide v0
.end method

.method public k()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/j;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/j;->b:D

    return-wide v0
.end method

.method public l()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/j;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/j;->d:D

    return-wide v0
.end method

.method public final m()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/math/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final n()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/j;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/j;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 3
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/j;->a:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    .line 4
    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/j;->c:D

    invoke-static {v0, v1}, Lcom/google/common/math/c;->b(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/math/j;->a:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final o()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/math/j;->p()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final p()D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/j;->a:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/j;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 3
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/j;->c:D

    invoke-static {v0, v1}, Lcom/google/common/math/c;->b(D)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/common/math/j;->a:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public q()Lcom/google/common/math/Stats;
    .locals 12

    new-instance v11, Lcom/google/common/math/Stats;

    iget-wide v1, p0, Lcom/google/common/math/j;->a:J

    iget-wide v3, p0, Lcom/google/common/math/j;->b:D

    iget-wide v5, p0, Lcom/google/common/math/j;->c:D

    iget-wide v7, p0, Lcom/google/common/math/j;->d:D

    iget-wide v9, p0, Lcom/google/common/math/j;->e:D

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    return-object v11
.end method

.method public final r()D
    .locals 4

    iget-wide v0, p0, Lcom/google/common/math/j;->b:D

    iget-wide v2, p0, Lcom/google/common/math/j;->a:J

    long-to-double v2, v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method s()D
    .locals 2

    iget-wide v0, p0, Lcom/google/common/math/j;->c:D

    return-wide v0
.end method
