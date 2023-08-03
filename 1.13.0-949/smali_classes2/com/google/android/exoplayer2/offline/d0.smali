.class public final Lcom/google/android/exoplayer2/offline/d0;
.super Ljava/lang/Object;
.source "ProgressiveDownloader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/y;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/exoplayer2/upstream/o;

.field private final c:Lcom/google/android/exoplayer2/upstream/cache/b;

.field private final d:Lcom/google/android/exoplayer2/upstream/cache/k;

.field private final e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/google/android/exoplayer2/offline/y$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile g:Lcom/google/android/exoplayer2/util/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/l0<",
            "Ljava/lang/Void;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/b$d;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroidx/window/layout/d;->a:Landroidx/window/layout/d;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/offline/d0;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/b$d;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/b$d;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/b1$c;->j(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/exoplayer2/offline/d0;-><init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/cache/b$d;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/cache/b$d;)V
    .locals 1

    .line 2
    sget-object v0, Landroidx/window/layout/d;->a:Landroidx/window/layout/d;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/offline/d0;-><init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/cache/b$d;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/cache/b$d;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/d0;->a:Ljava/util/concurrent/Executor;

    .line 8
    iget-object p3, p1, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p3, Lcom/google/android/exoplayer2/upstream/o$b;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/upstream/o$b;-><init>()V

    iget-object v0, p1, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b1$g;->a:Landroid/net/Uri;

    .line 10
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/upstream/o$b;->j(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p3

    iget-object p1, p1, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    iget-object p1, p1, Lcom/google/android/exoplayer2/b1$g;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/upstream/o$b;->g(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p1

    const/4 p3, 0x4

    .line 12
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/upstream/o$b;->c(I)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/o$b;->a()Lcom/google/android/exoplayer2/upstream/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/d0;->b:Lcom/google/android/exoplayer2/upstream/o;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->e()Lcom/google/android/exoplayer2/upstream/cache/b;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/d0;->c:Lcom/google/android/exoplayer2/upstream/cache/b;

    .line 15
    new-instance v0, Lcom/google/android/exoplayer2/offline/c0;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/offline/c0;-><init>(Lcom/google/android/exoplayer2/offline/d0;)V

    .line 16
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/k;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p1, v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/k;-><init>(Lcom/google/android/exoplayer2/upstream/cache/b;Lcom/google/android/exoplayer2/upstream/o;[BLcom/google/android/exoplayer2/upstream/cache/k$a;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/offline/d0;->d:Lcom/google/android/exoplayer2/upstream/cache/k;

    .line 17
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->j()Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/d0;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/offline/d0;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/offline/d0;->d(JJJ)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/offline/d0;)Lcom/google/android/exoplayer2/upstream/cache/k;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/d0;->d:Lcom/google/android/exoplayer2/upstream/cache/k;

    return-object p0
.end method

.method private d(JJJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/d0;->f:Lcom/google/android/exoplayer2/offline/y$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 p5, -0x1

    cmp-long v1, p1, p5

    if-eqz v1, :cond_2

    const-wide/16 p5, 0x0

    cmp-long v1, p1, p5

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    long-to-float p5, p3

    const/high16 p6, 0x42c80000    # 100.0f

    mul-float p5, p5, p6

    long-to-float p6, p1

    div-float/2addr p5, p6

    move v5, p5

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 p5, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    :goto_1
    move-wide v1, p1

    move-wide v3, p3

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/y$a;->a(JJF)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/offline/y$a;)V
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/offline/y$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/d0;->f:Lcom/google/android/exoplayer2/offline/y$a;

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/offline/d0$a;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/offline/d0$a;-><init>(Lcom/google/android/exoplayer2/offline/d0;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/d0;->g:Lcom/google/android/exoplayer2/util/l0;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/d0;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v0, -0x3e8

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->a(I)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/offline/d0;->h:Z

    if-nez v1, :cond_5

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/d0;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->b(I)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/d0;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/d0;->g:Lcom/google/android/exoplayer2/util/l0;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/d0;->g:Lcom/google/android/exoplayer2/util/l0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l0;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 11
    instance-of v2, v1, Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_3

    .line 13
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/z0;->j1(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14
    :cond_3
    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/d0;->g:Lcom/google/android/exoplayer2/util/l0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l0;->a()V

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/d0;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->e(I)V

    .line 18
    :cond_4
    throw p1

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/d0;->g:Lcom/google/android/exoplayer2/util/l0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l0;->a()V

    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/d0;->e:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->e(I)V

    :cond_6
    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/d0;->h:Z

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/d0;->g:Lcom/google/android/exoplayer2/util/l0;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/l0;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/d0;->c:Lcom/google/android/exoplayer2/upstream/cache/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/b;->u()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/d0;->c:Lcom/google/android/exoplayer2/upstream/cache/b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/b;->v()Lcom/google/android/exoplayer2/upstream/cache/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/d0;->b:Lcom/google/android/exoplayer2/upstream/o;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/i;->a(Lcom/google/android/exoplayer2/upstream/o;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->m(Ljava/lang/String;)V

    return-void
.end method
