.class public final Lcom/google/android/gms/common/api/internal/h3;
.super Lcom/google/android/gms/common/api/u;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/q;",
        ">",
        "Lcom/google/android/gms/common/api/u<",
        "TR;>;",
        "Lcom/google/android/gms/common/api/r<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/t<",
            "-TR;+",
            "Lcom/google/android/gms/common/api/q;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/common/api/internal/h3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/h3<",
            "+",
            "Lcom/google/android/gms/common/api/q;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/android/gms/common/api/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/s<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/common/api/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/l<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/common/api/Status;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/i;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/common/api/internal/f3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/f3;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/u;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->a:Lcom/google/android/gms/common/api/t;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->b:Lcom/google/android/gms/common/api/internal/h3;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->c:Lcom/google/android/gms/common/api/s;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->d:Lcom/google/android/gms/common/api/l;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->e:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->f:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/h3;->i:Z

    const-string v0, "GoogleApiClient reference must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/h3;->g:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/i;

    new-instance v0, Lcom/google/android/gms/common/api/internal/f3;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/i;->r()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/f3;-><init>(Lcom/google/android/gms/common/api/internal/h3;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->h:Lcom/google/android/gms/common/api/internal/f3;

    return-void
.end method

.method static bridge synthetic d(Lcom/google/android/gms/common/api/internal/h3;)Lcom/google/android/gms/common/api/t;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/h3;->a:Lcom/google/android/gms/common/api/t;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/common/api/internal/h3;)Lcom/google/android/gms/common/api/internal/f3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/h3;->h:Lcom/google/android/gms/common/api/internal/f3;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/common/api/internal/h3;)Lcom/google/android/gms/common/api/internal/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/h3;->b:Lcom/google/android/gms/common/api/internal/h3;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/common/api/internal/h3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/h3;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/google/android/gms/common/api/internal/h3;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/h3;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/google/android/gms/common/api/internal/h3;Lcom/google/android/gms/common/api/q;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/h3;->q(Lcom/google/android/gms/common/api/q;)V

    return-void
.end method

.method static bridge synthetic j(Lcom/google/android/gms/common/api/internal/h3;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/h3;->m(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private final m(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/h3;->f:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/h3;->o(Lcom/google/android/gms/common/api/Status;)V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final n()V
    .locals 2
    .annotation build Ls7/a;
        value = "mSyncToken"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->a:Lcom/google/android/gms/common/api/t;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->c:Lcom/google/android/gms/common/api/s;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/h3;->i:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->a:Lcom/google/android/gms/common/api/t;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/i;->H(Lcom/google/android/gms/common/api/internal/h3;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/h3;->i:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->f:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_3

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/h3;->o(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->d:Lcom/google/android/gms/common/api/l;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/l;->h(Lcom/google/android/gms/common/api/r;)V

    :cond_4
    return-void
.end method

.method private final o(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->a:Lcom/google/android/gms/common/api/t;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/t;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    const-string v1, "onFailure must not return null"

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->b:Lcom/google/android/gms/common/api/internal/h3;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/h3;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/internal/h3;->m(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/h3;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->c:Lcom/google/android/gms/common/api/s;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/s;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/s;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 6
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final p()Z
    .locals 2
    .annotation build Ls7/a;
        value = "mSyncToken"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->c:Lcom/google/android/gms/common/api/s;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final q(Lcom/google/android/gms/common/api/q;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to release "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "TransformedResultImpl"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/q;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->a:Lcom/google/android/gms/common/api/t;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/api/internal/u2;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/e3;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/api/internal/e3;-><init>(Lcom/google/android/gms/common/api/internal/h3;Lcom/google/android/gms/common/api/q;)V

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/h3;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->c:Lcom/google/android/gms/common/api/s;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/s;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/s;->c(Lcom/google/android/gms/common/api/q;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/q;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/h3;->m(Lcom/google/android/gms/common/api/Status;)V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/h3;->q(Lcom/google/android/gms/common/api/q;)V

    .line 8
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/google/android/gms/common/api/s;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/s<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->c:Lcom/google/android/gms/common/api/s;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Cannot call andFinally() twice."

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->a:Lcom/google/android/gms/common/api/t;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    .line 2
    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/h3;->c:Lcom/google/android/gms/common/api/s;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/h3;->n()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lcom/google/android/gms/common/api/t;)Lcom/google/android/gms/common/api/u;
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/q;",
            ">(",
            "Lcom/google/android/gms/common/api/t<",
            "-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/u<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->a:Lcom/google/android/gms/common/api/t;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Cannot call then() twice."

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->c:Lcom/google/android/gms/common/api/s;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    .line 2
    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/u;->r(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/h3;->a:Lcom/google/android/gms/common/api/t;

    new-instance p1, Lcom/google/android/gms/common/api/internal/h3;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/h3;->g:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/internal/h3;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/h3;->b:Lcom/google/android/gms/common/api/internal/h3;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/h3;->n()V

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->c:Lcom/google/android/gms/common/api/s;

    return-void
.end method

.method public final l(Lcom/google/android/gms/common/api/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h3;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/h3;->d:Lcom/google/android/gms/common/api/l;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/h3;->n()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
