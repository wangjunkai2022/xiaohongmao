.class public Lcom/koushikdutta/async/future/SimpleFuture;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "SimpleFuture.java"

# interfaces
.implements Lcom/koushikdutta/async/future/DependentFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;,
        Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleCancellable;",
        "Lcom/koushikdutta/async/future/DependentFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private f:Lcom/koushikdutta/async/AsyncSemaphore;

.field private g:Ljava/lang/Exception;

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/future/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->Z(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->e0(Ljava/lang/Object;)Z

    return-void
.end method

.method private A(Z)Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->g:Ljava/lang/Exception;

    .line 4
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->W()V

    .line 5
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->L()Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    move-result-object v0

    .line 6
    iput-boolean p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->i:Z

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->K(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private J()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->g:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->h:Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->g:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private K(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 2
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;-><init>()V

    .line 3
    :cond_2
    iput-object p2, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->c:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    .line 4
    iget-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->g:Ljava/lang/Exception;

    iput-object p2, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->a:Ljava/lang/Exception;

    .line 5
    iget-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->h:Ljava/lang/Object;

    iput-object p2, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->a()V

    :cond_3
    return-void
.end method

.method private L()Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->j:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->j:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-object v0
.end method

.method private static synthetic M(Lcom/koushikdutta/async/future/DoneCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0, p2, p3}, Lcom/koushikdutta/async/future/DoneCallback;->a(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2
    :cond_0
    :goto_0
    invoke-direct {p1, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void
.end method

.method private static synthetic N(Lcom/koushikdutta/async/future/FailCallback;Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/koushikdutta/async/future/FailCallback;->a(Ljava/lang/Exception;)V

    .line 2
    new-instance p0, Lcom/koushikdutta/async/future/SimpleFuture;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static synthetic O(Lcom/koushikdutta/async/future/FailConvertCallback;Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-interface {p0, p1}, Lcom/koushikdutta/async/future/FailConvertCallback;->a(Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic P(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FailRecoverCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/future/FailRecoverCallback;->a(Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-direct {p0, p1, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->a0(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Lcom/koushikdutta/async/future/Future;

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void
.end method

.method private static synthetic Q(Lcom/koushikdutta/async/future/FutureCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/koushikdutta/async/future/FutureCallback;->c(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic R(Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2}, Ljava/util/concurrent/CancellationException;-><init>()V

    :goto_0
    invoke-direct {p1, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void
.end method

.method private synthetic S(Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    return-void
.end method

.method private static synthetic T(Lcom/koushikdutta/async/future/SuccessCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0, p3}, Lcom/koushikdutta/async/future/SuccessCallback;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2
    :cond_0
    :goto_0
    invoke-direct {p1, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void
.end method

.method private static synthetic U(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/ThenFutureCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p2, v0, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p1, p3}, Lcom/koushikdutta/async/future/ThenFutureCallback;->a(Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-direct {p0, p1, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->a0(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Lcom/koushikdutta/async/future/Future;

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-direct {p0, p1, v0, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    return-void
.end method

.method private static synthetic V(Lcom/koushikdutta/async/future/ThenCallback;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-interface {p0, p1}, Lcom/koushikdutta/async/future/ThenCallback;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private a0(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 2
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 3
    instance-of v1, p1, Lcom/koushikdutta/async/future/SimpleFuture;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v1, Lcom/koushikdutta/async/future/b0;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/future/b0;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-virtual {p1, p2, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->Y(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Lcom/koushikdutta/async/future/x;

    invoke-direct {p2, p0, v0}, Lcom/koushikdutta/async/future/x;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/future/Future;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    :goto_0
    return-object v0
.end method

.method private d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return p1

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->h:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->g:Ljava/lang/Exception;

    .line 6
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->W()V

    .line 7
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->L()Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    move-result-object p1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-direct {p0, p3, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->K(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic j(Lcom/koushikdutta/async/future/FailCallback;Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->N(Lcom/koushikdutta/async/future/FailCallback;Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/koushikdutta/async/future/SuccessCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->T(Lcom/koushikdutta/async/future/SuccessCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method

.method public static synthetic q(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/ThenFutureCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->U(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/ThenFutureCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method

.method public static synthetic r(Lcom/koushikdutta/async/future/FailConvertCallback;Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->O(Lcom/koushikdutta/async/future/FailConvertCallback;Ljava/lang/Exception;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->S(Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic u(Lcom/koushikdutta/async/future/ThenCallback;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->V(Lcom/koushikdutta/async/future/ThenCallback;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->R(Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method

.method public static synthetic x(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FailRecoverCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->P(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FailRecoverCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method

.method public static synthetic y(Lcom/koushikdutta/async/future/FutureCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->Q(Lcom/koushikdutta/async/future/FutureCallback;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method

.method public static synthetic z(Lcom/koushikdutta/async/future/DoneCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->M(Lcom/koushikdutta/async/future/DoneCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method


# virtual methods
.method public B(Lcom/koushikdutta/async/future/FutureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->Y(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/koushikdutta/async/future/z;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/future/z;-><init>(Lcom/koushikdutta/async/future/FutureCallback;)V

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->Y(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    :goto_0
    return-void
.end method

.method public synthetic C(Ljava/util/concurrent/Executor;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/r;->a(Lcom/koushikdutta/async/future/Future;Ljava/util/concurrent/Executor;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public D()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->A(Z)Z

    move-result v0

    return v0
.end method

.method public E()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public F(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/ThenCallback<",
            "TR;TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/future/e0;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/future/e0;-><init>(Lcom/koushikdutta/async/future/ThenCallback;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->t(Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method G()Lcom/koushikdutta/async/AsyncSemaphore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->f:Lcom/koushikdutta/async/AsyncSemaphore;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/koushikdutta/async/AsyncSemaphore;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncSemaphore;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->f:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->f:Lcom/koushikdutta/async/AsyncSemaphore;

    return-object v0
.end method

.method public H()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->j:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-object v0
.end method

.method public I(Lcom/koushikdutta/async/future/SuccessCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/SuccessCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 3
    new-instance v1, Lcom/koushikdutta/async/future/d0;

    invoke-direct {v1, p1, v0}, Lcom/koushikdutta/async/future/d0;-><init>(Lcom/koushikdutta/async/future/SuccessCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->Y(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-object v0
.end method

.method W()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->f:Lcom/koushikdutta/async/AsyncSemaphore;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSemaphore;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->f:Lcom/koushikdutta/async/AsyncSemaphore;

    :cond_0
    return-void
.end method

.method public X()Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/future/SimpleFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->h()Lcom/koushikdutta/async/future/Cancellable;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->h:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->g:Ljava/lang/Exception;

    .line 4
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->f:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 5
    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->j:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->i:Z

    return-object p0
.end method

.method Y(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->j:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    .line 3
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isDone()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->L()Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    move-result-object p2

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->K(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public Z(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->a0(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/koushikdutta/async/future/Cancellable;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    move-result p1

    return p1
.end method

.method public b0(Ljava/lang/Exception;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p1

    return p1
.end method

.method public c0(Ljava/lang/Exception;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p1

    return p1
.end method

.method public cancel()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->i:Z

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->A(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->cancel()Z

    move-result p1

    return p1
.end method

.method public e0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p1

    return p1
.end method

.method public f0(Ljava/lang/Exception;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p1

    return p1
.end method

.method public g0(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->a0(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->G()Lcom/koushikdutta/async/AsyncSemaphore;

    move-result-object v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSemaphore;->a()V

    .line 6
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->J()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->J()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->G()Lcom/koushikdutta/async/AsyncSemaphore;

    move-result-object v0

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/AsyncSemaphore;->c(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->J()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 16
    :cond_2
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->J()Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic h()Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->X()Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public h0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->d0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z

    move-result p1

    return p1
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->e0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->g:Ljava/lang/Exception;

    return-object v0
.end method

.method public n(Lcom/koushikdutta/async/future/FailRecoverCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FailRecoverCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 3
    new-instance v1, Lcom/koushikdutta/async/future/a0;

    invoke-direct {v1, v0, p1}, Lcom/koushikdutta/async/future/a0;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/FailRecoverCallback;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->Y(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-object v0
.end method

.method public o(Lcom/koushikdutta/async/future/DoneCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/DoneCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 3
    new-instance v1, Lcom/koushikdutta/async/future/y;

    invoke-direct {v1, p1, v0}, Lcom/koushikdutta/async/future/y;-><init>(Lcom/koushikdutta/async/future/DoneCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->Y(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-object v0
.end method

.method public p(Lcom/koushikdutta/async/future/FailCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FailCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/future/v;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/future/v;-><init>(Lcom/koushikdutta/async/future/FailCallback;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->n(Lcom/koushikdutta/async/future/FailRecoverCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/ThenFutureCallback<",
            "TR;TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 3
    new-instance v1, Lcom/koushikdutta/async/future/c0;

    invoke-direct {v1, v0, p1}, Lcom/koushikdutta/async/future/c0;-><init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/future/ThenFutureCallback;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->Y(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-object v0
.end method

.method public w(Lcom/koushikdutta/async/future/FailConvertCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/FailConvertCallback<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/future/w;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/future/w;-><init>(Lcom/koushikdutta/async/future/FailConvertCallback;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->n(Lcom/koushikdutta/async/future/FailRecoverCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
