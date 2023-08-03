.class public Lcom/google/mlkit/common/sdkinternal/q;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation build Lu2/a;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final c:Ljava/util/Queue;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/q;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/q;->c:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/q;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static bridge synthetic c(Lcom/google/mlkit/common/sdkinternal/q;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/q;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/mlkit/common/sdkinternal/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/q;->e()V

    return-void
.end method

.method private final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/q;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/mlkit/common/sdkinternal/q;->b:Z

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/q;->c:Ljava/util/Queue;

    .line 3
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/i0;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/google/mlkit/common/sdkinternal/i0;->a:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Lcom/google/mlkit/common/sdkinternal/i0;->b:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/sdkinternal/q;->f(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final f(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/g0;

    invoke-direct {v0, p0, p2}, Lcom/google/mlkit/common/sdkinternal/g0;-><init>(Lcom/google/mlkit/common/sdkinternal/q;Ljava/lang/Runnable;)V

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/q;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/q;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->q(Z)V

    return-void
.end method

.method public b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/mlkit/common/sdkinternal/q;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/q;->c:Ljava/util/Queue;

    new-instance v2, Lcom/google/mlkit/common/sdkinternal/i0;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/google/mlkit/common/sdkinternal/i0;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lcom/google/mlkit/common/sdkinternal/h0;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/mlkit/common/sdkinternal/q;->b:Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/common/sdkinternal/q;->f(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
