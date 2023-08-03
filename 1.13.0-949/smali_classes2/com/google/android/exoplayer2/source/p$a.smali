.class final Lcom/google/android/exoplayer2/source/p$a;
.super Lcom/google/android/exoplayer2/source/m;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/s2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/m;-><init>(Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method


# virtual methods
.method public i(IIZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/s2;->i(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/m;->e(Z)I

    move-result p1

    :cond_0
    return p1
.end method

.method public p(IIZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/s2;->p(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/m;->g(Z)I

    move-result p1

    :cond_0
    return p1
.end method
