.class public final Lcom/google/android/exoplayer2/decoder/d;
.super Ljava/lang/Object;
.source "DecoderCounters.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:J

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(JI)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/decoder/d;->j:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/decoder/d;->j:J

    .line 2
    iget p1, p0, Lcom/google/android/exoplayer2/decoder/d;->k:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/d;->k:I

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/decoder/d;->b(JI)V

    return-void
.end method

.method public declared-synchronized c()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/d;->a:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/d;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/d;->a:I

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/d;->b:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/d;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/d;->b:I

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/d;->c:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/d;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/d;->c:I

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/d;->d:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/d;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/d;->d:I

    .line 5
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/d;->e:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/d;->e:I

    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/d;->f:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/d;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/d;->f:I

    .line 7
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/d;->g:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/d;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/d;->g:I

    .line 8
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/d;->h:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/d;->h:I

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/d;->h:I

    .line 10
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/d;->i:I

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/d;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/decoder/d;->i:I

    .line 11
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/d;->j:J

    iget p1, p1, Lcom/google/android/exoplayer2/decoder/d;->k:I

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/decoder/d;->b(JI)V

    return-void
.end method
