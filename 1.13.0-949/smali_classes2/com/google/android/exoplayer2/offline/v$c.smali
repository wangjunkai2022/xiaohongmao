.class final Lcom/google/android/exoplayer2/offline/v$c;
.super Ljava/lang/Object;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field final synthetic f:Lcom/google/android/exoplayer2/offline/v;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/v;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/v$c;->f:Lcom/google/android/exoplayer2/offline/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/offline/v$c;->a:I

    .line 3
    iput-wide p3, p0, Lcom/google/android/exoplayer2/offline/v$c;->b:J

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/v$c;->c:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/offline/v$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/v$c;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$c;->f:Lcom/google/android/exoplayer2/offline/v;

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/v;->a(Lcom/google/android/exoplayer2/offline/v;)Lcom/google/android/exoplayer2/offline/r;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/r;->g()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/v$c;->f:Lcom/google/android/exoplayer2/offline/v;

    iget v2, p0, Lcom/google/android/exoplayer2/offline/v$c;->a:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/offline/v;->r(Ljava/util/List;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/v$c;->e:Z

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/v$c;->d:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$c;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/offline/x;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/offline/x;-><init>(Lcom/google/android/exoplayer2/offline/v$c;)V

    iget-wide v2, p0, Lcom/google/android/exoplayer2/offline/v$c;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/v$c;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/v$c;->f()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/v$c;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/v$c;->f()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/v$c;->d:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/v$c;->f()V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/v$c;->d:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
