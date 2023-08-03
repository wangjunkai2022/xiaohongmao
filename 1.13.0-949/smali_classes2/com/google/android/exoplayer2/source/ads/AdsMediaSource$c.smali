.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private volatile b:Z

.field final synthetic c:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->c:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/exoplayer2/util/z0;->z()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;Lcom/google/android/exoplayer2/source/ads/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->f(Lcom/google/android/exoplayer2/source/ads/c;)V

    return-void
.end method

.method private synthetic f(Lcom/google/android/exoplayer2/source/ads/c;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->c:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->O(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/ads/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/j;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/j;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;Lcom/google/android/exoplayer2/source/ads/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic b()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/d;->a(Lcom/google/android/exoplayer2/source/ads/e$a;)V

    return-void
.end method

.method public synthetic c()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/d;->d(Lcom/google/android/exoplayer2/source/ads/e$a;)V

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;Lcom/google/android/exoplayer2/upstream/o;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->c:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->N(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object v0

    new-instance v7, Lcom/google/android/exoplayer2/source/o;

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/source/o;->a()J

    move-result-wide v2

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/o;-><init>(JLcom/google/android/exoplayer2/upstream/o;J)V

    const/4 p2, 0x6

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v7, p2, p1, v1}, Lcom/google/android/exoplayer2/source/h0$a;->x(Lcom/google/android/exoplayer2/source/o;ILjava/io/IOException;Z)V

    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->b:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
