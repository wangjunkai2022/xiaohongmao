.class Lcom/google/android/exoplayer2/offline/r$e;
.super Ljava/lang/Thread;
.source "DownloadManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

.field private final b:Lcom/google/android/exoplayer2/offline/y;

.field private final c:Lcom/google/android/exoplayer2/offline/u;

.field private final d:Z

.field private final e:I

.field private volatile f:Lcom/google/android/exoplayer2/offline/r$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile g:Z

.field private h:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/y;Lcom/google/android/exoplayer2/offline/u;ZILcom/google/android/exoplayer2/offline/r$c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/r$e;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/r$e;->b:Lcom/google/android/exoplayer2/offline/y;

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/r$e;->c:Lcom/google/android/exoplayer2/offline/u;

    .line 6
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/offline/r$e;->d:Z

    .line 7
    iput p5, p0, Lcom/google/android/exoplayer2/offline/r$e;->e:I

    .line 8
    iput-object p6, p0, Lcom/google/android/exoplayer2/offline/r$e;->f:Lcom/google/android/exoplayer2/offline/r$c;

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/r$e;->i:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/y;Lcom/google/android/exoplayer2/offline/u;ZILcom/google/android/exoplayer2/offline/r$c;Lcom/google/android/exoplayer2/offline/r$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/offline/r$e;-><init>(Lcom/google/android/exoplayer2/offline/DownloadRequest;Lcom/google/android/exoplayer2/offline/y;Lcom/google/android/exoplayer2/offline/u;ZILcom/google/android/exoplayer2/offline/r$c;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/offline/r$e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/offline/r$e;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/offline/r$e;)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/r$e;->a:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/offline/r$e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/offline/r$e;->g:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/offline/r$e;)Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/r$e;->h:Ljava/lang/Exception;

    return-object p0
.end method

.method private static g(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    mul-int/lit16 p0, p0, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(JJF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r$e;->c:Lcom/google/android/exoplayer2/offline/u;

    iput-wide p3, v0, Lcom/google/android/exoplayer2/offline/u;->a:J

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/offline/r$e;->c:Lcom/google/android/exoplayer2/offline/u;

    iput p5, p3, Lcom/google/android/exoplayer2/offline/u;->b:F

    .line 3
    iget-wide p3, p0, Lcom/google/android/exoplayer2/offline/r$e;->i:J

    cmp-long p5, p1, p3

    if-eqz p5, :cond_0

    .line 4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/r$e;->i:J

    .line 5
    iget-object p3, p0, Lcom/google/android/exoplayer2/offline/r$e;->f:Lcom/google/android/exoplayer2/offline/r$c;

    if-eqz p3, :cond_0

    const/16 p4, 0xa

    const/16 p5, 0x20

    shr-long v0, p1, p5

    long-to-int p5, v0

    long-to-int p2, p1

    .line 6
    invoke-virtual {p3, p4, p5, p2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/r$e;->f:Lcom/google/android/exoplayer2/offline/r$c;

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/offline/r$e;->g:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/r$e;->g:Z

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/r$e;->b:Lcom/google/android/exoplayer2/offline/y;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/offline/y;->cancel()V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/r$e;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r$e;->b:Lcom/google/android/exoplayer2/offline/y;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/y;->remove()V

    goto :goto_1

    :cond_0
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/offline/r$e;->g:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_4

    .line 4
    :try_start_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/r$e;->b:Lcom/google/android/exoplayer2/offline/y;

    invoke-interface {v4, p0}, Lcom/google/android/exoplayer2/offline/y;->a(Lcom/google/android/exoplayer2/offline/y$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    .line 5
    :try_start_2
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/offline/r$e;->g:Z

    if-nez v5, :cond_1

    .line 6
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/r$e;->c:Lcom/google/android/exoplayer2/offline/u;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/offline/u;->a:J

    cmp-long v7, v5, v0

    if-eqz v7, :cond_2

    move-wide v0, v5

    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 7
    iget v5, p0, Lcom/google/android/exoplayer2/offline/r$e;->e:I

    if-gt v3, v5, :cond_3

    .line 8
    invoke-static {v3}, Lcom/google/android/exoplayer2/offline/r$e;->g(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 9
    :cond_3
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/r$e;->h:Ljava/lang/Exception;

    goto :goto_1

    .line 11
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 12
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/r$e;->f:Lcom/google/android/exoplayer2/offline/r$c;

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 13
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method
