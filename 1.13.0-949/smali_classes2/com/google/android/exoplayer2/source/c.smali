.class public final Lcom/google/android/exoplayer2/source/c;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/w;
.implements Lcom/google/android/exoplayer2/source/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/w;

.field private b:Lcom/google/android/exoplayer2/source/w$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:[Lcom/google/android/exoplayer2/source/c$a;

.field private d:J

.field e:J

.field f:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/w;ZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/c$a;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c;->c:[Lcom/google/android/exoplayer2/source/c$a;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/c;->d:J

    .line 5
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/c;->e:J

    .line 6
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/c;->f:J

    return-void
.end method

.method private a(JLcom/google/android/exoplayer2/j2;)Lcom/google/android/exoplayer2/j2;
    .locals 9

    .line 1
    iget-wide v0, p3, Lcom/google/android/exoplayer2/j2;->a:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/c;->e:J

    sub-long v4, p1, v2

    const-wide/16 v2, 0x0

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/z0;->u(JJJ)J

    move-result-wide v0

    .line 3
    iget-wide v2, p3, Lcom/google/android/exoplayer2/j2;->b:J

    .line 4
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/c;->f:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    move-wide v6, p1

    goto :goto_0

    :cond_0
    sub-long/2addr v4, p1

    move-wide v6, v4

    :goto_0
    const-wide/16 v4, 0x0

    .line 5
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/z0;->u(JJJ)J

    move-result-wide p1

    .line 6
    iget-wide v2, p3, Lcom/google/android/exoplayer2/j2;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v2, p3, Lcom/google/android/exoplayer2/j2;->b:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    return-object p3

    .line 7
    :cond_1
    new-instance p3, Lcom/google/android/exoplayer2/j2;

    invoke-direct {p3, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/j2;-><init>(JJ)V

    return-object p3
.end method

.method private static q(J[Lcom/google/android/exoplayer2/trackselection/g;)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_1

    .line 1
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget-object v1, p2, p1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/google/android/exoplayer2/trackselection/g;->s()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/a0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->b()Z

    move-result v0

    return v0
.end method

.method public c()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->c()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/c;->f:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public d(JLcom/google/android/exoplayer2/j2;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/c;->e:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/c;->a(JLcom/google/android/exoplayer2/j2;)Lcom/google/android/exoplayer2/j2;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/w;->d(JLcom/google/android/exoplayer2/j2;)J

    move-result-wide p1

    return-wide p1
.end method

.method public e(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/w;->e(J)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic f(Lcom/google/android/exoplayer2/source/y0;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/w;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/c;->p(Lcom/google/android/exoplayer2/source/w;)V

    return-void
.end method

.method public g()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->g()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/c;->f:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public h(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/w;->h(J)V

    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->b:Lcom/google/android/exoplayer2/source/w$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/w$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/w$a;->i(Lcom/google/android/exoplayer2/source/w;)V

    return-void
.end method

.method public synthetic j(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/v;->a(Lcom/google/android/exoplayer2/source/w;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method k()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/c;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(J)J
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/c;->d:J

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->c:[Lcom/google/android/exoplayer2/source/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/c$a;->b()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/w;->l(J)J

    move-result-wide v0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_2

    .line 5
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/c;->e:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_3

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/c;->f:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    cmp-long v3, v0, p1

    if-gtz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    return-wide v0
.end method

.method public m()J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/c;->k()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 2
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/c;->d:J

    .line 3
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/c;->d:J

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/c;->m()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    move-wide v3, v5

    :cond_0
    return-wide v3

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->m()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    .line 6
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/c;->e:J

    const/4 v2, 0x1

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-ltz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 7
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/c;->f:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_5

    cmp-long v6, v3, v0

    if-gtz v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    return-wide v3
.end method

.method public n(Lcom/google/android/exoplayer2/source/w$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c;->b:Lcom/google/android/exoplayer2/source/w$a;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/w;->n(Lcom/google/android/exoplayer2/source/w$a;J)V

    return-void
.end method

.method public o([Lcom/google/android/exoplayer2/trackselection/g;[Z[Lcom/google/android/exoplayer2/source/x0;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p3

    .line 1
    array-length v2, v1

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/c$a;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/c;->c:[Lcom/google/android/exoplayer2/source/c$a;

    .line 2
    array-length v2, v1

    new-array v9, v2, [Lcom/google/android/exoplayer2/source/x0;

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v1

    const/4 v11, 0x0

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/c;->c:[Lcom/google/android/exoplayer2/source/c$a;

    aget-object v4, v1, v2

    check-cast v4, Lcom/google/android/exoplayer2/source/c$a;

    aput-object v4, v3, v2

    .line 5
    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    iget-object v11, v3, Lcom/google/android/exoplayer2/source/c$a;->a:Lcom/google/android/exoplayer2/source/x0;

    :cond_0
    aput-object v11, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    .line 7
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/w;->o([Lcom/google/android/exoplayer2/trackselection/g;[Z[Lcom/google/android/exoplayer2/source/x0;[ZJ)J

    move-result-wide v2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/c;->k()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/c;->e:J

    cmp-long v6, p5, v4

    if-nez v6, :cond_2

    move-object v6, p1

    .line 9
    invoke-static {v4, v5, p1}, Lcom/google/android/exoplayer2/source/c;->q(J[Lcom/google/android/exoplayer2/trackselection/g;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-wide v4, v2

    goto :goto_1

    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    :goto_1
    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/c;->d:J

    cmp-long v4, v2, p5

    if-eqz v4, :cond_4

    .line 11
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/c;->e:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/c;->f:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 12
    :goto_4
    array-length v4, v1

    if-ge v10, v4, :cond_8

    .line 13
    aget-object v4, v9, v10

    if-nez v4, :cond_5

    .line 14
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/c;->c:[Lcom/google/android/exoplayer2/source/c$a;

    aput-object v11, v4, v10

    goto :goto_5

    .line 15
    :cond_5
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/c;->c:[Lcom/google/android/exoplayer2/source/c$a;

    aget-object v5, v4, v10

    if-eqz v5, :cond_6

    aget-object v5, v4, v10

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/c$a;->a:Lcom/google/android/exoplayer2/source/x0;

    aget-object v6, v9, v10

    if-eq v5, v6, :cond_7

    .line 16
    :cond_6
    new-instance v5, Lcom/google/android/exoplayer2/source/c$a;

    aget-object v6, v9, v10

    invoke-direct {v5, p0, v6}, Lcom/google/android/exoplayer2/source/c$a;-><init>(Lcom/google/android/exoplayer2/source/c;Lcom/google/android/exoplayer2/source/x0;)V

    aput-object v5, v4, v10

    .line 17
    :cond_7
    :goto_5
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/c;->c:[Lcom/google/android/exoplayer2/source/c$a;

    aget-object v4, v4, v10

    aput-object v4, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    return-wide v2
.end method

.method public p(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->b:Lcom/google/android/exoplayer2/source/w$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/w$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/y0$a;->f(Lcom/google/android/exoplayer2/source/y0;)V

    return-void
.end method

.method public r(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/c;->e:J

    .line 2
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/c;->f:J

    return-void
.end method

.method public s()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->s()V

    return-void
.end method

.method public u()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->u()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public v(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->a:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/w;->v(JZ)V

    return-void
.end method
