.class public abstract Lcom/google/android/exoplayer2/source/chunk/b;
.super Ljava/lang/Object;
.source "BaseMediaChunkIterator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/o;


# instance fields
.field private final b:J

.field private final c:J

.field private d:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/b;->b:J

    .line 3
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/chunk/b;->c:J

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/b;->reset()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/b;->d:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/b;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final e()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/b;->d:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/b;->b:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/b;->c:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected final f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/b;->d:J

    return-wide v0
.end method

.method public next()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/b;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/b;->d:J

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/b;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/b;->b:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/b;->d:J

    return-void
.end method
