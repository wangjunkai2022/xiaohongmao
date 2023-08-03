.class public final Lcom/google/android/exoplayer2/source/ads/k;
.super Lcom/google/android/exoplayer2/source/m;
.source "SinglePeriodAdTimeline.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x3
.end annotation


# instance fields
.field private final g:Lcom/google/android/exoplayer2/source/ads/c;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/s2;Lcom/google/android/exoplayer2/source/ads/c;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/m;-><init>(Lcom/google/android/exoplayer2/s2;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->m()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/k;->g:Lcom/google/android/exoplayer2/source/ads/c;

    return-void
.end method


# virtual methods
.method public k(ILcom/google/android/exoplayer2/s2$b;Z)Lcom/google/android/exoplayer2/s2$b;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/s2;->k(ILcom/google/android/exoplayer2/s2$b;Z)Lcom/google/android/exoplayer2/s2$b;

    .line 2
    iget-wide v0, p2, Lcom/google/android/exoplayer2/s2$b;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/k;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/ads/c;->f:J

    :cond_0
    move-wide v6, v0

    .line 3
    iget-object v3, p2, Lcom/google/android/exoplayer2/s2$b;->a:Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/exoplayer2/s2$b;->b:Ljava/lang/Object;

    iget v5, p2, Lcom/google/android/exoplayer2/s2$b;->c:I

    .line 4
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/s2$b;->q()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/ads/k;->g:Lcom/google/android/exoplayer2/source/ads/c;

    iget-boolean v11, p2, Lcom/google/android/exoplayer2/s2$b;->f:Z

    move-object v2, p2

    .line 5
    invoke-virtual/range {v2 .. v11}, Lcom/google/android/exoplayer2/s2$b;->u(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/c;Z)Lcom/google/android/exoplayer2/s2$b;

    return-object p2
.end method
