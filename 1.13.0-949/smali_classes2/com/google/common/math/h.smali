.class public final Lcom/google/common/math/h;
.super Ljava/lang/Object;
.source "PairedStatsAccumulator.java"


# annotations
.annotation build Lh3/a;
.end annotation

.annotation build Lh3/c;
.end annotation


# instance fields
.field private final a:Lcom/google/common/math/j;

.field private final b:Lcom/google/common/math/j;

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/math/j;

    invoke-direct {v0}, Lcom/google/common/math/j;-><init>()V

    iput-object v0, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    .line 3
    new-instance v0, Lcom/google/common/math/j;

    invoke-direct {v0}, Lcom/google/common/math/j;-><init>()V

    iput-object v0, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/common/math/h;->c:D

    return-void
.end method

.method private static d(D)D
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_1

    return-wide v0

    :cond_1
    return-wide p0
.end method

.method private e(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x1

    return-wide p1
.end method


# virtual methods
.method public a(DD)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/math/j;->a(D)V

    .line 2
    invoke-static {p1, p2}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {v0}, Lcom/google/common/math/j;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    iget-wide v0, p0, Lcom/google/common/math/h;->c:D

    iget-object v2, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {v2}, Lcom/google/common/math/j;->k()D

    move-result-wide v2

    sub-double/2addr p1, v2

    iget-object v2, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {v2}, Lcom/google/common/math/j;->k()D

    move-result-wide v2

    sub-double v2, p3, v2

    mul-double p1, p1, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/math/h;->c:D

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 5
    iput-wide p1, p0, Lcom/google/common/math/h;->c:D

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {p1, p3, p4}, Lcom/google/common/math/j;->a(D)V

    return-void
.end method

.method public b(Lcom/google/common/math/PairedStats;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->xStats()Lcom/google/common/math/Stats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/math/j;->b(Lcom/google/common/math/Stats;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {v0}, Lcom/google/common/math/j;->i()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/h;->c:D

    goto :goto_0

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/h;->c:D

    .line 6
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->c()D

    move-result-wide v2

    .line 7
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->xStats()Lcom/google/common/math/Stats;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v4

    iget-object v6, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {v6}, Lcom/google/common/math/j;->k()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 8
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->yStats()Lcom/google/common/math/Stats;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/math/Stats;->mean()D

    move-result-wide v6

    iget-object v8, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {v8}, Lcom/google/common/math/j;->k()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double v4, v4, v6

    .line 9
    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->count()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/h;->c:D

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {p1}, Lcom/google/common/math/PairedStats;->yStats()Lcom/google/common/math/Stats;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/math/j;->b(Lcom/google/common/math/Stats;)V

    return-void
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {v0}, Lcom/google/common/math/j;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Lcom/google/common/math/e;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/common/math/h;->c()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/h;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/common/math/e;->a()Lcom/google/common/math/e;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {v0}, Lcom/google/common/math/j;->s()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_3

    .line 5
    iget-object v2, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {v2}, Lcom/google/common/math/j;->s()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2

    .line 6
    iget-object v2, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {v2}, Lcom/google/common/math/j;->k()D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {v4}, Lcom/google/common/math/j;->k()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/e;->f(DD)Lcom/google/common/math/e$b;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/common/math/h;->c:D

    div-double/2addr v3, v0

    .line 7
    invoke-virtual {v2, v3, v4}, Lcom/google/common/math/e$b;->b(D)Lcom/google/common/math/e;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {v0}, Lcom/google/common/math/j;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/e;->b(D)Lcom/google/common/math/e;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {v0}, Lcom/google/common/math/j;->s()D

    move-result-wide v0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/a0;->g0(Z)V

    .line 10
    iget-object v0, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {v0}, Lcom/google/common/math/j;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/e;->i(D)Lcom/google/common/math/e;

    move-result-object v0

    return-object v0
.end method

.method public final g()D
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/common/math/h;->c()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/h;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {v0}, Lcom/google/common/math/j;->s()D

    move-result-wide v0

    .line 4
    iget-object v4, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {v4}, Lcom/google/common/math/j;->s()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v6

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 5
    :goto_1
    invoke-static {v8}, Lcom/google/common/base/a0;->g0(Z)V

    cmpl-double v8, v4, v6

    if-lez v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_2
    invoke-static {v2}, Lcom/google/common/base/a0;->g0(Z)V

    mul-double v0, v0, v4

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/common/math/h;->e(D)D

    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/google/common/math/h;->c:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/common/math/h;->d(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public h()D
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/math/h;->c()J

    move-result-wide v0

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
    iget-wide v0, p0, Lcom/google/common/math/h;->c:D

    invoke-virtual {p0}, Lcom/google/common/math/h;->c()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final i()D
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/common/math/h;->c()J

    move-result-wide v0

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
    iget-wide v0, p0, Lcom/google/common/math/h;->c:D

    invoke-virtual {p0}, Lcom/google/common/math/h;->c()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public j()Lcom/google/common/math/PairedStats;
    .locals 5

    new-instance v0, Lcom/google/common/math/PairedStats;

    iget-object v1, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {v1}, Lcom/google/common/math/j;->q()Lcom/google/common/math/Stats;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {v2}, Lcom/google/common/math/j;->q()Lcom/google/common/math/Stats;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/common/math/h;->c:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/math/PairedStats;-><init>(Lcom/google/common/math/Stats;Lcom/google/common/math/Stats;D)V

    return-object v0
.end method

.method public k()Lcom/google/common/math/Stats;
    .locals 1

    iget-object v0, p0, Lcom/google/common/math/h;->a:Lcom/google/common/math/j;

    invoke-virtual {v0}, Lcom/google/common/math/j;->q()Lcom/google/common/math/Stats;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/common/math/Stats;
    .locals 1

    iget-object v0, p0, Lcom/google/common/math/h;->b:Lcom/google/common/math/j;

    invoke-virtual {v0}, Lcom/google/common/math/j;->q()Lcom/google/common/math/Stats;

    move-result-object v0

    return-object v0
.end method
