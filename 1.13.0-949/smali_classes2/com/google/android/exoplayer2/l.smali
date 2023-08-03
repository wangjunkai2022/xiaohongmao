.class public final Lcom/google/android/exoplayer2/l;
.super Ljava/lang/Object;
.source "DefaultLivePlaybackSpeedControl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/y0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/l$b;
    }
.end annotation


# static fields
.field public static final t:F = 0.97f

.field public static final u:F = 1.03f

.field public static final v:J = 0x3e8L

.field public static final w:F = 0.1f

.field public static final x:J = 0x1f4L

.field public static final y:F = 0.999f

.field public static final z:J = 0x14L


# instance fields
.field private final a:F

.field private final b:F

.field private final c:J

.field private final d:F

.field private final e:J

.field private final f:J

.field private final g:F

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private r:J

.field private s:J


# direct methods
.method private constructor <init>(FFJFJJF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/l;->a:F

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/l;->b:F

    .line 5
    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->c:J

    .line 6
    iput p5, p0, Lcom/google/android/exoplayer2/l;->d:F

    .line 7
    iput-wide p6, p0, Lcom/google/android/exoplayer2/l;->e:J

    .line 8
    iput-wide p8, p0, Lcom/google/android/exoplayer2/l;->f:J

    .line 9
    iput p10, p0, Lcom/google/android/exoplayer2/l;->g:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->h:J

    .line 11
    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->i:J

    .line 12
    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->k:J

    .line 13
    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->l:J

    .line 14
    iput p1, p0, Lcom/google/android/exoplayer2/l;->o:F

    .line 15
    iput p2, p0, Lcom/google/android/exoplayer2/l;->n:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    iput p1, p0, Lcom/google/android/exoplayer2/l;->p:F

    .line 17
    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->q:J

    .line 18
    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->j:J

    .line 19
    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->m:J

    .line 20
    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->r:J

    .line 21
    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->s:J

    return-void
.end method

.method synthetic constructor <init>(FFJFJJFLcom/google/android/exoplayer2/l$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/l;-><init>(FFJFJJF)V

    return-void
.end method

.method private f(J)V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/l;->r:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/l;->s:J

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    add-long v8, v0, v2

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/l;->m:J

    const/high16 v2, 0x3f800000    # 1.0f

    cmp-long v3, v0, v8

    if-lez v3, :cond_0

    .line 3
    iget-wide p1, p0, Lcom/google/android/exoplayer2/l;->c:J

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide p1

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/l;->p:F

    sub-float/2addr v0, v2

    long-to-float p1, p1

    mul-float v0, v0, p1

    float-to-long v0, v0

    .line 5
    iget p2, p0, Lcom/google/android/exoplayer2/l;->n:F

    sub-float/2addr p2, v2

    mul-float p2, p2, p1

    float-to-long p1, p2

    add-long/2addr v0, p1

    const/4 p1, 0x3

    new-array p1, p1, [J

    const/4 p2, 0x0

    aput-wide v8, p1, p2

    const/4 p2, 0x1

    .line 6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/l;->j:J

    aput-wide v2, p1, p2

    const/4 p2, 0x2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/l;->m:J

    sub-long/2addr v2, v0

    aput-wide v2, p1, p2

    .line 7
    invoke-static {p1}, Lcom/google/common/primitives/g;->s([J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/l;->m:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iget v1, p0, Lcom/google/android/exoplayer2/l;->p:F

    sub-float/2addr v1, v2

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/l;->d:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    sub-long v4, p1, v0

    .line 10
    iget-wide v6, p0, Lcom/google/android/exoplayer2/l;->m:J

    .line 11
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/z0;->u(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/l;->m:J

    .line 12
    iget-wide v0, p0, Lcom/google/android/exoplayer2/l;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 13
    iput-wide v0, p0, Lcom/google/android/exoplayer2/l;->m:J

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/l;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/l;->i:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    .line 3
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/l;->k:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    .line 4
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/l;->l:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 5
    :cond_3
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/l;->j:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_4

    return-void

    .line 6
    :cond_4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/l;->j:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/l;->m:J

    .line 8
    iput-wide v2, p0, Lcom/google/android/exoplayer2/l;->r:J

    .line 9
    iput-wide v2, p0, Lcom/google/android/exoplayer2/l;->s:J

    .line 10
    iput-wide v2, p0, Lcom/google/android/exoplayer2/l;->q:J

    return-void
.end method

.method private static h(JJF)J
    .locals 0

    long-to-float p0, p0

    mul-float p0, p0, p4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    long-to-float p2, p2

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method private i(JJ)V
    .locals 3

    sub-long/2addr p1, p3

    .line 1
    iget-wide p3, p0, Lcom/google/android/exoplayer2/l;->r:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/l;->r:J

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/l;->s:J

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/l;->g:F

    .line 5
    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplayer2/l;->h(JJF)J

    move-result-wide p3

    .line 6
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->r:J

    sub-long/2addr p1, p3

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 8
    iget-wide p3, p0, Lcom/google/android/exoplayer2/l;->s:J

    iget v0, p0, Lcom/google/android/exoplayer2/l;->g:F

    .line 9
    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplayer2/l;->h(JJF)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/l;->s:J

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/b1$f;)V
    .locals 3

    .line 1
    iget-wide v0, p1, Lcom/google/android/exoplayer2/b1$f;->a:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/l;->h:J

    .line 2
    iget-wide v0, p1, Lcom/google/android/exoplayer2/b1$f;->b:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/l;->k:J

    .line 3
    iget-wide v0, p1, Lcom/google/android/exoplayer2/b1$f;->c:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/l;->l:J

    .line 4
    iget v0, p1, Lcom/google/android/exoplayer2/b1$f;->d:F

    const v1, -0x800001

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/l;->a:F

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/l;->o:F

    .line 6
    iget p1, p1, Lcom/google/android/exoplayer2/b1$f;->e:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/l;->b:F

    :goto_1
    iput p1, p0, Lcom/google/android/exoplayer2/l;->n:F

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l;->g()V

    return-void
.end method

.method public b(JJ)F
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/l;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/l;->i(JJ)V

    .line 3
    iget-wide p3, p0, Lcom/google/android/exoplayer2/l;->q:J

    cmp-long v0, p3, v2

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/l;->q:J

    sub-long/2addr p3, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/l;->c:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    .line 5
    iget p1, p0, Lcom/google/android/exoplayer2/l;->p:F

    return p1

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/exoplayer2/l;->q:J

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/l;->f(J)V

    .line 8
    iget-wide p3, p0, Lcom/google/android/exoplayer2/l;->m:J

    sub-long/2addr p1, p3

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/l;->e:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_2

    .line 10
    iput v4, p0, Lcom/google/android/exoplayer2/l;->p:F

    goto :goto_0

    .line 11
    :cond_2
    iget p3, p0, Lcom/google/android/exoplayer2/l;->d:F

    long-to-float p1, p1

    mul-float p3, p3, p1

    add-float/2addr p3, v4

    .line 12
    iget p1, p0, Lcom/google/android/exoplayer2/l;->o:F

    iget p2, p0, Lcom/google/android/exoplayer2/l;->n:F

    .line 13
    invoke-static {p3, p1, p2}, Lcom/google/android/exoplayer2/util/z0;->s(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/l;->p:F

    .line 14
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/l;->p:F

    return p1
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/l;->m:J

    return-wide v0
.end method

.method public d()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/l;->m:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/l;->f:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/l;->m:J

    .line 3
    iget-wide v4, p0, Lcom/google/android/exoplayer2/l;->l:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 4
    iput-wide v4, p0, Lcom/google/android/exoplayer2/l;->m:J

    .line 5
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/l;->q:J

    return-void
.end method

.method public e(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/l;->i:J

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l;->g()V

    return-void
.end method
