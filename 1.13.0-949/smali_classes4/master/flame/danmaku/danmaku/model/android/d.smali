.class public Lmaster/flame/danmaku/danmaku/model/android/d;
.super Ljava/lang/Object;
.source "DanmakuFactory.java"


# static fields
.field public static final l:F = 539.0f

.field public static final m:F = 682.0f

.field public static final n:F = 385.0f

.field public static final o:F = 438.0f

.field public static final p:J = 0xed8L

.field public static final q:I = 0x19

.field public static final r:J = 0xfa0L

.field public static final s:J = 0x2328L


# instance fields
.field public a:I

.field public b:I

.field private c:Lmaster/flame/danmaku/danmaku/model/r$c;

.field private d:F

.field public e:J

.field public f:J

.field public g:Lmaster/flame/danmaku/danmaku/model/g;

.field public h:Lmaster/flame/danmaku/danmaku/model/g;

.field public i:Lmaster/flame/danmaku/danmaku/model/g;

.field public j:Lmaster/flame/danmaku/danmaku/model/n;

.field private k:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->a:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->b:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:Lmaster/flame/danmaku/danmaku/model/r$c;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:F

    const-wide/16 v0, 0xed8

    .line 5
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:J

    const-wide/16 v0, 0xfa0

    .line 6
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    return-void
.end method

.method public static a()Lmaster/flame/danmaku/danmaku/model/android/d;
    .locals 1

    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/d;-><init>()V

    return-object v0
.end method

.method public static h(Lmaster/flame/danmaku/danmaku/model/d;[[FFF)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->n()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, p1, v1

    aget v3, v2, v0

    mul-float v3, v3, p2

    aput v3, v2, v0

    .line 4
    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget v4, v2, v3

    mul-float v4, v4, p3

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p0, Lmaster/flame/danmaku/danmaku/model/r;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/r;->M([[F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private n(IIFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:Lmaster/flame/danmaku/danmaku/model/r$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/r$c;

    invoke-direct {v0, p1, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/r$c;-><init>(IIFF)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:Lmaster/flame/danmaku/danmaku/model/r$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:Lmaster/flame/danmaku/danmaku/model/r$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/r$c;->b(IIFF)V

    return-void
.end method

.method private declared-synchronized o(IIFF)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:Lmaster/flame/danmaku/danmaku/model/r$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/r$c;->b(IIFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private p(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->i:Lmaster/flame/danmaku/danmaku/model/g;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->r:Lmaster/flame/danmaku/danmaku/model/g;

    if-eqz v1, :cond_1

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/g;->c:J

    iget-wide v3, v0, Lmaster/flame/danmaku/danmaku/model/g;->c:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->r:Lmaster/flame/danmaku/danmaku/model/g;

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->i:Lmaster/flame/danmaku/danmaku/model/g;

    .line 3
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/d;->m()V

    :cond_1
    return-void
.end method


# virtual methods
.method public b(I)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->k:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->f(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p1

    return-object p1
.end method

.method public c(IFFFF)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 5

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->a:I

    .line 2
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->b:I

    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/android/d;->q(FFF)Z

    move-result p4

    .line 4
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v3, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:J

    invoke-direct {v2, v3, v4}, Lmaster/flame/danmaku/danmaku/model/g;-><init>(J)V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    .line 6
    invoke-virtual {v2, p5}, Lmaster/flame/danmaku/danmaku/model/g;->a(F)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 7
    iget-wide v3, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:J

    invoke-virtual {v2, v3, v4}, Lmaster/flame/danmaku/danmaku/model/g;->b(J)V

    .line 8
    :cond_1
    :goto_0
    iget-object p5, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/g;

    if-nez p5, :cond_2

    .line 9
    new-instance p5, Lmaster/flame/danmaku/danmaku/model/g;

    const-wide/16 v2, 0xed8

    invoke-direct {p5, v2, v3}, Lmaster/flame/danmaku/danmaku/model/g;-><init>(J)V

    iput-object p5, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/g;

    :cond_2
    const/high16 p5, 0x3f800000    # 1.0f

    if-eqz p4, :cond_4

    const/4 p4, 0x0

    cmpl-float v2, p2, p4

    if-lez v2, :cond_4

    .line 10
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/d;->m()V

    if-lez v0, :cond_3

    if-lez v1, :cond_3

    int-to-float p5, v0

    div-float p5, p2, p5

    int-to-float v0, v1

    div-float v0, p3, v0

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    float-to-int v1, p2

    float-to-int v2, p3

    .line 11
    invoke-direct {p0, v1, v2, p5, v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->n(IIFF)V

    cmpl-float p4, p3, p4

    if-lez p4, :cond_5

    .line 12
    invoke-direct {p0, v1, v2, p5, v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->o(IIFF)V

    goto :goto_2

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    :cond_5
    :goto_2
    const/4 p4, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_9

    const/4 v1, 0x5

    if-eq p1, v1, :cond_8

    const/4 v1, 0x6

    if-eq p1, v1, :cond_7

    const/4 v1, 0x7

    if-eq p1, v1, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    new-instance p4, Lmaster/flame/danmaku/danmaku/model/r;

    invoke-direct {p4}, Lmaster/flame/danmaku/danmaku/model/r;-><init>()V

    float-to-int p1, p2

    float-to-int p2, p3

    .line 14
    invoke-direct {p0, p1, p2, p5, v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->n(IIFF)V

    .line 15
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:Lmaster/flame/danmaku/danmaku/model/r$c;

    invoke-virtual {p4, p1}, Lmaster/flame/danmaku/danmaku/model/r;->N(Lmaster/flame/danmaku/danmaku/model/r$c;)V

    goto :goto_3

    .line 16
    :cond_7
    new-instance p4, Lmaster/flame/danmaku/danmaku/model/p;

    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    invoke-direct {p4, p1}, Lmaster/flame/danmaku/danmaku/model/p;-><init>(Lmaster/flame/danmaku/danmaku/model/g;)V

    goto :goto_3

    .line 17
    :cond_8
    new-instance p4, Lmaster/flame/danmaku/danmaku/model/i;

    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/g;

    invoke-direct {p4, p1}, Lmaster/flame/danmaku/danmaku/model/i;-><init>(Lmaster/flame/danmaku/danmaku/model/g;)V

    goto :goto_3

    .line 18
    :cond_9
    new-instance p4, Lmaster/flame/danmaku/danmaku/model/h;

    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/g;

    invoke-direct {p4, p1}, Lmaster/flame/danmaku/danmaku/model/h;-><init>(Lmaster/flame/danmaku/danmaku/model/g;)V

    goto :goto_3

    .line 19
    :cond_a
    new-instance p4, Lmaster/flame/danmaku/danmaku/model/q;

    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    invoke-direct {p4, p1}, Lmaster/flame/danmaku/danmaku/model/q;-><init>(Lmaster/flame/danmaku/danmaku/model/g;)V

    :goto_3
    return-object p4
.end method

.method public d(IIIFF)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 6

    int-to-float v2, p2

    int-to-float v3, p3

    move-object v0, p0

    move v1, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/d;->c(IFFFF)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p1

    return-object p1
.end method

.method public e(ILmaster/flame/danmaku/danmaku/model/n;FF)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 6

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->j:Lmaster/flame/danmaku/danmaku/model/n;

    .line 2
    invoke-interface {p2}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result v2

    invoke-interface {p2}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/d;->d(IIIFF)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p1

    return-object p1
.end method

.method public f(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 7

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->k:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 2
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h()Lmaster/flame/danmaku/danmaku/model/b;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->j:Lmaster/flame/danmaku/danmaku/model/n;

    .line 3
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result v3

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->j:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result v4

    iget v5, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:F

    iget v6, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/d;->d(IIIFF)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p1

    return-object p1
.end method

.method public g(Lmaster/flame/danmaku/danmaku/model/d;IIJ)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->n()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/r;

    invoke-virtual {v0, p2, p3, p4, p5}, Lmaster/flame/danmaku/danmaku/model/r;->L(IIJ)V

    .line 3
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/d;->p(Lmaster/flame/danmaku/danmaku/model/d;)V

    return-void
.end method

.method public i(Lmaster/flame/danmaku/danmaku/model/d;FFFFJJFF)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->n()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/r;

    mul-float v1, p2, p10

    mul-float v2, p3, p11

    mul-float v3, p4, p10

    mul-float v4, p5, p11

    move-wide v5, p6

    move-wide/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lmaster/flame/danmaku/danmaku/model/r;->O(FFFFJJ)V

    .line 3
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/d;->p(Lmaster/flame/danmaku/danmaku/model/d;)V

    return-void
.end method

.method public j(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->k:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h()Lmaster/flame/danmaku/danmaku/model/b;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->j:Lmaster/flame/danmaku/danmaku/model/n;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/d;->f(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/d;

    return-void
.end method

.method public k()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->j:Lmaster/flame/danmaku/danmaku/model/n;

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->b:I

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->a:I

    .line 3
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    .line 4
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/g;

    .line 5
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->i:Lmaster/flame/danmaku/danmaku/model/g;

    const-wide/16 v0, 0xfa0

    .line 6
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    return-void
.end method

.method public l(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/g;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/g;->a(F)V

    .line 3
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/d;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method public m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lmaster/flame/danmaku/danmaku/model/g;->c:J

    .line 2
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/g;

    if-nez v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    iget-wide v5, v0, Lmaster/flame/danmaku/danmaku/model/g;->c:J

    .line 3
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->i:Lmaster/flame/danmaku/danmaku/model/g;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v1, v0, Lmaster/flame/danmaku/danmaku/model/g;->c:J

    .line 4
    :goto_2
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    .line 5
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    const-wide/16 v2, 0xed8

    .line 6
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    .line 7
    iget-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    return-void
.end method

.method public q(FFF)Z
    .locals 6

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->a:I

    float-to-int v1, p1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->b:I

    float-to-int v2, p2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const v2, 0x456d8000    # 3800.0f

    mul-float p1, p1, p3

    const v3, 0x442a8000    # 682.0f

    div-float/2addr p1, v3

    mul-float p1, p1, v2

    float-to-long v2, p1

    .line 2
    iput-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:J

    const-wide/16 v4, 0x2328

    .line 3
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:J

    const-wide/16 v4, 0xfa0

    .line 4
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:J

    .line 5
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->a:I

    float-to-int p1, p2

    .line 6
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->b:I

    .line 7
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:F

    const/4 p1, 0x1

    :goto_1
    return p1
.end method
