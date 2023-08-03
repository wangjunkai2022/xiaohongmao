.class final Lcom/google/android/gms/tasks/q0;
.super Lcom/google/android/gms/tasks/k;
.source "com.google.android.gms:play-services-tasks@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/tasks/k<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/tasks/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/l0<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private c:Z
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation
.end field

.field private volatile d:Z

.field private e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "mLock"
    .end annotation
.end field

.field private f:Ljava/lang/Exception;
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tasks/k;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/tasks/l0;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/l0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    return-void
.end method

.method private final D()V
    .locals 2
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    return-void
.end method

.method private final E()V
    .locals 2
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/q0;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final F()V
    .locals 1
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;->of(Lcom/google/android/gms/tasks/k;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method private final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/l0;->b(Lcom/google/android/gms/tasks/k;)V

    return-void

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->d:Z

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/l0;->b(Lcom/google/android/gms/tasks/k;)V

    return v1

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final B(Ljava/lang/Exception;)Z
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/q0;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/l0;->b(Lcom/google/android/gms/tasks/k;)V

    return v1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final C(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/q0;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/l0;->b(Lcom/google/android/gms/tasks/k;)V

    return v1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/k;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/d;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/b0;

    sget-object v1, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/b0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)V

    iget-object p2, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/p0;->m(Landroid/app/Activity;)Lcom/google/android/gms/tasks/p0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/p0;->n(Lcom/google/android/gms/tasks/k0;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/d;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/k;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/k;

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/k;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/d;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    new-instance v1, Lcom/google/android/gms/tasks/b0;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/b0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object p0
.end method

.method public final d(Landroid/app/Activity;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/k;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/e<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/d0;

    sget-object v1, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/d0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)V

    iget-object p2, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/p0;->m(Landroid/app/Activity;)Lcom/google/android/gms/tasks/p0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/p0;->n(Lcom/google/android/gms/tasks/k0;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/k;
    .locals 3
    .param p1    # Lcom/google/android/gms/tasks/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/e<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    new-instance v2, Lcom/google/android/gms/tasks/d0;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/tasks/d0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object p0
.end method

.method public final f(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/k;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/e<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    new-instance v1, Lcom/google/android/gms/tasks/d0;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/d0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object p0
.end method

.method public final g(Landroid/app/Activity;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/k;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/f;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/f0;

    sget-object v1, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/f0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)V

    iget-object p2, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/p0;->m(Landroid/app/Activity;)Lcom/google/android/gms/tasks/p0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/p0;->n(Lcom/google/android/gms/tasks/k0;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object p0
.end method

.method public final h(Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/f;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/q0;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/k;

    return-object p0
.end method

.method public final i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/k;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/f;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    new-instance v1, Lcom/google/android/gms/tasks/f0;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/f0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object p0
.end method

.method public final j(Landroid/app/Activity;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/k;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/g<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/h0;

    sget-object v1, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/h0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)V

    iget-object p2, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/p0;->m(Landroid/app/Activity;)Lcom/google/android/gms/tasks/p0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/p0;->n(Lcom/google/android/gms/tasks/k0;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object p0
.end method

.method public final k(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/q0;->l(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/k;

    return-object p0
.end method

.method public final l(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/k;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/g<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    new-instance v1, Lcom/google/android/gms/tasks/h0;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/h0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object p0
.end method

.method public final m(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/c<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/k;->n(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/k;
    .locals 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/c<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/q0;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/q0;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    new-instance v2, Lcom/google/android/gms/tasks/x;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/x;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;Lcom/google/android/gms/tasks/q0;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object v0
.end method

.method public final o(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/k;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/c<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/k<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/k;->p(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/k;
    .locals 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/c<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/k<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/q0;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/q0;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    new-instance v2, Lcom/google/android/gms/tasks/z;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/z;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;Lcom/google/android/gms/tasks/q0;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object v0
.end method

.method public final q()Ljava/lang/Exception;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/q0;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final r()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->D()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->E()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/q0;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/tasks/q0;->e:Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    new-instance v2, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    .line 6
    invoke-direct {v2, v1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->D()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->E()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/q0;->f:Ljava/lang/Exception;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/tasks/q0;->f:Ljava/lang/Exception;

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/tasks/q0;->e:Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-object p1

    .line 7
    :cond_0
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    .line 8
    invoke-direct {v1, p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tasks/q0;->f:Ljava/lang/Exception;

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/q0;->d:Z

    return v0
.end method

.method public final u()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final v()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/q0;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final w(Lcom/google/android/gms/tasks/j;)Lcom/google/android/gms/tasks/k;
    .locals 4
    .param p1    # Lcom/google/android/gms/tasks/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/j<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/q0;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/tasks/q0;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    new-instance v3, Lcom/google/android/gms/tasks/j0;

    invoke-direct {v3, v0, p1, v1}, Lcom/google/android/gms/tasks/j0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/j;Lcom/google/android/gms/tasks/q0;)V

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object v1
.end method

.method public final x(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/j;)Lcom/google/android/gms/tasks/k;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/j<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/q0;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/q0;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    new-instance v2, Lcom/google/android/gms/tasks/j0;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/j0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/j;Lcom/google/android/gms/tasks/q0;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/l0;->a(Lcom/google/android/gms/tasks/k0;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->G()V

    return-object v0
.end method

.method public final y(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->F()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/q0;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/l0;->b(Lcom/google/android/gms/tasks/k;)V

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

.method public final z(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/q0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tasks/q0;->F()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/q0;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/q0;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/q0;->b:Lcom/google/android/gms/tasks/l0;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/l0;->b(Lcom/google/android/gms/tasks/k;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
