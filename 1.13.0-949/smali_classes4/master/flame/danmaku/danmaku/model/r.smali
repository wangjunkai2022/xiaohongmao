.class public Lmaster/flame/danmaku/danmaku/model/r;
.super Lmaster/flame/danmaku/danmaku/model/d;
.source "SpecialDanmaku.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/r$a;,
        Lmaster/flame/danmaku/danmaku/model/r$b;,
        Lmaster/flame/danmaku/danmaku/model/r$c;
    }
.end annotation


# instance fields
.field public X:F

.field public Y:F

.field public Z:F

.field public a0:F

.field public b0:F

.field public c0:F

.field public d0:J

.field public e0:J

.field private f0:Lmaster/flame/danmaku/danmaku/model/r$c;

.field private g0:I

.field private h0:I

.field private i0:I

.field public j0:Z

.field public k0:I

.field public l0:I

.field public m0:I

.field public n0:J

.field public o0:F

.field public p0:F

.field public q0:F

.field public r0:F

.field private s0:[F

.field public t0:[Lmaster/flame/danmaku/danmaku/model/r$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/r;->h0:I

    .line 3
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/r;->i0:I

    .line 4
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/r;->j0:Z

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/r;->s0:[F

    return-void
.end method

.method private static final K(JJ)F
    .locals 0

    long-to-float p0, p0

    long-to-float p1, p2

    div-float/2addr p0, p1

    const/high16 p1, -0x40800000    # -1.0f

    mul-float p1, p1, p0

    const/high16 p2, 0x40000000    # 2.0f

    sub-float/2addr p0, p2

    mul-float p1, p1, p0

    return p1
.end method


# virtual methods
.method public A(Lmaster/flame/danmaku/danmaku/model/n;FF)V
    .locals 0

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/d;->E:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide p2, p2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/r;->h(Lmaster/flame/danmaku/danmaku/model/n;J)[F

    return-void
.end method

.method public B(Lmaster/flame/danmaku/danmaku/model/n;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/d;->B(Lmaster/flame/danmaku/danmaku/model/n;Z)V

    .line 2
    iget p2, p0, Lmaster/flame/danmaku/danmaku/model/r;->h0:I

    if-eqz p2, :cond_0

    iget p2, p0, Lmaster/flame/danmaku/danmaku/model/r;->i0:I

    if-nez p2, :cond_1

    .line 3
    :cond_0
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result p2

    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/r;->h0:I

    .line 4
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result p1

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/r;->i0:I

    :cond_1
    return-void
.end method

.method public L(IIJ)V
    .locals 0

    .line 1
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/r;->k0:I

    .line 2
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/r;->l0:I

    sub-int/2addr p2, p1

    .line 3
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/r;->m0:I

    .line 4
    iput-wide p3, p0, Lmaster/flame/danmaku/danmaku/model/r;->n0:J

    .line 5
    sget p2, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    if-eq p1, p2, :cond_0

    .line 6
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->F:I

    :cond_0
    return-void
.end method

.method public M([[F)V
    .locals 9

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    .line 2
    aget-object v2, p1, v1

    aget v2, v2, v1

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/r;->X:F

    .line 3
    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/r;->Y:F

    sub-int/2addr v0, v3

    .line 4
    aget-object v2, p1, v0

    aget v2, v2, v1

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/r;->Z:F

    .line 5
    aget-object v0, p1, v0

    aget v0, v0, v3

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/r;->a0:F

    .line 6
    array-length v0, p1

    if-le v0, v3, :cond_3

    .line 7
    array-length v0, p1

    sub-int/2addr v0, v3

    new-array v0, v0, [Lmaster/flame/danmaku/danmaku/model/r$a;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/r;->t0:[Lmaster/flame/danmaku/danmaku/model/r$a;

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/r;->t0:[Lmaster/flame/danmaku/danmaku/model/r$a;

    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 9
    new-instance v4, Lmaster/flame/danmaku/danmaku/model/r$a;

    invoke-direct {v4, p0}, Lmaster/flame/danmaku/danmaku/model/r$a;-><init>(Lmaster/flame/danmaku/danmaku/model/r;)V

    aput-object v4, v2, v0

    .line 10
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/r;->t0:[Lmaster/flame/danmaku/danmaku/model/r$a;

    aget-object v2, v2, v0

    new-instance v4, Lmaster/flame/danmaku/danmaku/model/r$b;

    aget-object v5, p1, v0

    aget v5, v5, v1

    aget-object v6, p1, v0

    aget v6, v6, v3

    invoke-direct {v4, p0, v5, v6}, Lmaster/flame/danmaku/danmaku/model/r$b;-><init>(Lmaster/flame/danmaku/danmaku/model/r;FF)V

    new-instance v5, Lmaster/flame/danmaku/danmaku/model/r$b;

    add-int/lit8 v0, v0, 0x1

    aget-object v6, p1, v0

    aget v6, v6, v1

    aget-object v7, p1, v0

    aget v7, v7, v3

    invoke-direct {v5, p0, v6, v7}, Lmaster/flame/danmaku/danmaku/model/r$b;-><init>(Lmaster/flame/danmaku/danmaku/model/r;FF)V

    invoke-virtual {v2, v4, v5}, Lmaster/flame/danmaku/danmaku/model/r$a;->d(Lmaster/flame/danmaku/danmaku/model/r$b;Lmaster/flame/danmaku/danmaku/model/r$b;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    array-length v0, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v4, v2, v3

    .line 12
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/r$a;->b()F

    move-result v4

    add-float/2addr p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 13
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/r;->t0:[Lmaster/flame/danmaku/danmaku/model/r$a;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 14
    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/r$a;->b()F

    move-result v5

    div-float/2addr v5, p1

    iget-wide v6, p0, Lmaster/flame/danmaku/danmaku/model/r;->d0:J

    long-to-float v6, v6

    mul-float v5, v5, v6

    float-to-long v5, v5

    iput-wide v5, v4, Lmaster/flame/danmaku/danmaku/model/r$a;->c:J

    if-nez v0, :cond_2

    const-wide/16 v7, 0x0

    goto :goto_3

    .line 15
    :cond_2
    iget-wide v7, v0, Lmaster/flame/danmaku/danmaku/model/r$a;->e:J

    :goto_3
    iput-wide v7, v4, Lmaster/flame/danmaku/danmaku/model/r$a;->d:J

    add-long/2addr v7, v5

    .line 16
    iput-wide v7, v4, Lmaster/flame/danmaku/danmaku/model/r$a;->e:J

    add-int/lit8 v1, v1, 0x1

    move-object v0, v4

    goto :goto_2

    :cond_3
    return-void
.end method

.method public N(Lmaster/flame/danmaku/danmaku/model/r$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/r;->f0:Lmaster/flame/danmaku/danmaku/model/r$c;

    .line 2
    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/r$c;->a:I

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/r;->g0:I

    return-void
.end method

.method public O(FFFFJJ)V
    .locals 0

    .line 1
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/r;->X:F

    .line 2
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/r;->Y:F

    .line 3
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/r;->Z:F

    .line 4
    iput p4, p0, Lmaster/flame/danmaku/danmaku/model/r;->a0:F

    sub-float/2addr p3, p1

    .line 5
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/r;->b0:F

    sub-float/2addr p4, p2

    .line 6
    iput p4, p0, Lmaster/flame/danmaku/danmaku/model/r;->c0:F

    .line 7
    iput-wide p5, p0, Lmaster/flame/danmaku/danmaku/model/r;->d0:J

    .line 8
    iput-wide p7, p0, Lmaster/flame/danmaku/danmaku/model/r;->e0:J

    return-void
.end method

.method public d()F
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/r;->s0:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public g()F
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/r;->s0:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public h(Lmaster/flame/danmaku/danmaku/model/n;J)[F
    .locals 18

    move-object/from16 v9, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/model/d;->s()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    return-object v10

    .line 2
    :cond_0
    iget-object v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->f0:Lmaster/flame/danmaku/danmaku/model/r$c;

    iget v1, v9, Lmaster/flame/danmaku/danmaku/model/r;->g0:I

    iget v2, v9, Lmaster/flame/danmaku/danmaku/model/r;->h0:I

    iget v3, v9, Lmaster/flame/danmaku/danmaku/model/r;->i0:I

    invoke-virtual {v0, v1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/r$c;->a(III)Z

    move-result v0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->f0:Lmaster/flame/danmaku/danmaku/model/r$c;

    iget v14, v0, Lmaster/flame/danmaku/danmaku/model/r$c;->b:F

    .line 4
    iget v15, v0, Lmaster/flame/danmaku/danmaku/model/r$c;->c:F

    .line 5
    iget v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->X:F

    mul-float v1, v0, v14

    iget v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->Y:F

    mul-float v2, v0, v15

    iget v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->Z:F

    mul-float v3, v0, v14

    iget v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->a0:F

    mul-float v4, v0, v15

    iget-wide v5, v9, Lmaster/flame/danmaku/danmaku/model/r;->d0:J

    iget-wide v7, v9, Lmaster/flame/danmaku/danmaku/model/r;->e0:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lmaster/flame/danmaku/danmaku/model/r;->O(FFFFJJ)V

    .line 6
    iget-object v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->t0:[Lmaster/flame/danmaku/danmaku/model/r$a;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 7
    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    new-array v2, v11, [I

    aput v11, v2, v13

    aput v1, v2, v12

    .line 8
    const-class v1, F

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    iget-object v3, v9, Lmaster/flame/danmaku/danmaku/model/r;->t0:[Lmaster/flame/danmaku/danmaku/model/r$a;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/r$a;->a()[F

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 10
    iget-object v4, v9, Lmaster/flame/danmaku/danmaku/model/r;->t0:[Lmaster/flame/danmaku/danmaku/model/r$a;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/r$a;->c()[F

    move-result-object v2

    aput-object v2, v1, v3

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 12
    aget-object v2, v1, v0

    aget v3, v2, v12

    mul-float v3, v3, v14

    aput v3, v2, v12

    .line 13
    aget-object v2, v1, v0

    aget v3, v2, v13

    mul-float v3, v3, v15

    aput v3, v2, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v9, v1}, Lmaster/flame/danmaku/danmaku/model/r;->M([[F)V

    .line 15
    :cond_3
    iget-object v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->f0:Lmaster/flame/danmaku/danmaku/model/r$c;

    iget v1, v0, Lmaster/flame/danmaku/danmaku/model/r$c;->a:I

    iput v1, v9, Lmaster/flame/danmaku/danmaku/model/r;->g0:I

    .line 16
    iget v1, v0, Lmaster/flame/danmaku/danmaku/model/r$c;->d:I

    iput v1, v9, Lmaster/flame/danmaku/danmaku/model/r;->h0:I

    .line 17
    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/r$c;->e:I

    iput v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->i0:I

    .line 18
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 19
    iget-wide v2, v9, Lmaster/flame/danmaku/danmaku/model/r;->n0:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    iget v6, v9, Lmaster/flame/danmaku/danmaku/model/r;->m0:I

    if-eqz v6, :cond_6

    cmp-long v7, v0, v2

    if-ltz v7, :cond_5

    .line 20
    iget v2, v9, Lmaster/flame/danmaku/danmaku/model/r;->l0:I

    iput v2, v9, Lmaster/flame/danmaku/danmaku/model/d;->F:I

    goto :goto_2

    :cond_5
    long-to-float v7, v0

    long-to-float v2, v2

    div-float/2addr v7, v2

    int-to-float v2, v6

    mul-float v2, v2, v7

    float-to-int v2, v2

    .line 21
    iget v3, v9, Lmaster/flame/danmaku/danmaku/model/r;->k0:I

    add-int/2addr v3, v2

    iput v3, v9, Lmaster/flame/danmaku/danmaku/model/d;->F:I

    .line 22
    :cond_6
    :goto_2
    iget v2, v9, Lmaster/flame/danmaku/danmaku/model/r;->X:F

    .line 23
    iget v3, v9, Lmaster/flame/danmaku/danmaku/model/r;->Y:F

    .line 24
    iget-wide v6, v9, Lmaster/flame/danmaku/danmaku/model/r;->e0:J

    sub-long v6, v0, v6

    .line 25
    iget-wide v14, v9, Lmaster/flame/danmaku/danmaku/model/r;->d0:J

    cmp-long v8, v14, v4

    if-lez v8, :cond_d

    cmp-long v8, v6, v4

    if-ltz v8, :cond_d

    cmp-long v4, v6, v14

    if-gtz v4, :cond_d

    .line 26
    iget-object v4, v9, Lmaster/flame/danmaku/danmaku/model/r;->t0:[Lmaster/flame/danmaku/danmaku/model/r$a;

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    .line 27
    array-length v8, v4

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v8, :cond_8

    aget-object v15, v4, v14

    .line 28
    iget-wide v10, v15, Lmaster/flame/danmaku/danmaku/model/r$a;->d:J

    cmp-long v16, v6, v10

    if-ltz v16, :cond_7

    iget-wide v10, v15, Lmaster/flame/danmaku/danmaku/model/r$a;->e:J

    cmp-long v16, v6, v10

    if-gez v16, :cond_7

    move-object v10, v15

    goto :goto_4

    .line 29
    :cond_7
    iget-object v2, v15, Lmaster/flame/danmaku/danmaku/model/r$a;->b:Lmaster/flame/danmaku/danmaku/model/r$b;

    iget v3, v2, Lmaster/flame/danmaku/danmaku/model/r$b;->a:F

    .line 30
    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/r$b;->b:F

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_e

    .line 31
    iget v4, v10, Lmaster/flame/danmaku/danmaku/model/r$a;->f:F

    .line 32
    iget v6, v10, Lmaster/flame/danmaku/danmaku/model/r$a;->g:F

    .line 33
    iget-wide v7, v10, Lmaster/flame/danmaku/danmaku/model/r$a;->d:J

    sub-long/2addr v0, v7

    long-to-float v0, v0

    iget-wide v7, v10, Lmaster/flame/danmaku/danmaku/model/r$a;->c:J

    long-to-float v1, v7

    div-float/2addr v0, v1

    .line 34
    iget-object v1, v10, Lmaster/flame/danmaku/danmaku/model/r$a;->a:Lmaster/flame/danmaku/danmaku/model/r$b;

    iget v7, v1, Lmaster/flame/danmaku/danmaku/model/r$b;->a:F

    .line 35
    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/r$b;->b:F

    cmpl-float v8, v4, v5

    if-eqz v8, :cond_9

    mul-float v4, v4, v0

    add-float v2, v7, v4

    :cond_9
    cmpl-float v4, v6, v5

    if-eqz v4, :cond_e

    mul-float v6, v6, v0

    add-float v3, v1, v6

    goto :goto_6

    .line 36
    :cond_a
    iget-boolean v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->j0:Z

    if-eqz v0, :cond_b

    invoke-static {v6, v7, v14, v15}, Lmaster/flame/danmaku/danmaku/model/r;->K(JJ)F

    move-result v0

    goto :goto_5

    :cond_b
    long-to-float v0, v6

    long-to-float v1, v14

    div-float/2addr v0, v1

    .line 37
    :goto_5
    iget v1, v9, Lmaster/flame/danmaku/danmaku/model/r;->b0:F

    cmpl-float v4, v1, v5

    if-eqz v4, :cond_c

    mul-float v1, v1, v0

    .line 38
    iget v2, v9, Lmaster/flame/danmaku/danmaku/model/r;->X:F

    add-float/2addr v2, v1

    .line 39
    :cond_c
    iget v1, v9, Lmaster/flame/danmaku/danmaku/model/r;->c0:F

    cmpl-float v4, v1, v5

    if-eqz v4, :cond_e

    mul-float v1, v1, v0

    .line 40
    iget v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->Y:F

    add-float/2addr v0, v1

    move v3, v0

    goto :goto_6

    :cond_d
    cmp-long v0, v6, v14

    if-lez v0, :cond_e

    .line 41
    iget v2, v9, Lmaster/flame/danmaku/danmaku/model/r;->Z:F

    .line 42
    iget v3, v9, Lmaster/flame/danmaku/danmaku/model/r;->a0:F

    .line 43
    :cond_e
    :goto_6
    iget-object v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->s0:[F

    aput v2, v0, v12

    .line 44
    aput v3, v0, v13

    .line 45
    iget v1, v9, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float/2addr v2, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 46
    iget v2, v9, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float/2addr v3, v2

    aput v3, v0, v1

    .line 47
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/danmaku/model/d;->u()Z

    move-result v0

    xor-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lmaster/flame/danmaku/danmaku/model/d;->J(Z)V

    .line 48
    iget-object v0, v9, Lmaster/flame/danmaku/danmaku/model/r;->s0:[F

    return-object v0
.end method

.method public i()F
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/r;->s0:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public m()F
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/r;->s0:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
