.class public abstract Lorg/minidns/d;
.super Ljava/lang/Object;
.source "MiniDnsFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lorg/minidns/util/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/d$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;",
        "Lorg/minidns/util/c<",
        "TV;TE;>;"
    }
.end annotation


# static fields
.field private static final f:Ljava/util/concurrent/ExecutorService;

.field static final synthetic g:Z


# instance fields
.field private a:Z

.field protected b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private d:Lorg/minidns/util/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/minidns/util/k<",
            "TV;>;"
        }
    .end annotation
.end field

.field private e:Lorg/minidns/util/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/minidns/util/e<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lorg/minidns/d;

    .line 2
    new-instance v8, Lorg/minidns/d$a;

    invoke-direct {v8}, Lorg/minidns/d$a;-><init>()V

    .line 3
    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 4
    new-instance v9, Lorg/minidns/d$b;

    invoke-direct {v9}, Lorg/minidns/d$b;-><init>()V

    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x2

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v0

    .line 6
    :goto_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 7
    sput-object v0, Lorg/minidns/d;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic c(Lorg/minidns/d;)Lorg/minidns/util/k;
    .locals 0

    iget-object p0, p0, Lorg/minidns/d;->d:Lorg/minidns/util/k;

    return-object p0
.end method

.method static synthetic e(Lorg/minidns/d;)Lorg/minidns/util/e;
    .locals 0

    iget-object p0, p0, Lorg/minidns/d;->e:Lorg/minidns/util/e;

    return-object p0
.end method

.method public static f(Ljava/lang/Object;)Lorg/minidns/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(TV;)",
            "Lorg/minidns/d<",
            "TV;TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/minidns/d$e;

    invoke-direct {v0}, Lorg/minidns/d$e;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lorg/minidns/d$e;->k(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final h()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/d;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/minidns/d;->c:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lorg/minidns/d;->c:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lorg/minidns/util/e;)Lorg/minidns/util/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/util/e<",
            "TE;>;)",
            "Lorg/minidns/util/c<",
            "TV;TE;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/minidns/d;->e:Lorg/minidns/util/e;

    .line 2
    invoke-virtual {p0}, Lorg/minidns/d;->i()V

    return-object p0
.end method

.method public b(Lorg/minidns/util/k;)Lorg/minidns/util/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/util/k<",
            "TV;>;)",
            "Lorg/minidns/util/c<",
            "TV;TE;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/minidns/d;->d:Lorg/minidns/util/k;

    .line 2
    invoke-virtual {p0}, Lorg/minidns/d;->i()V

    return-object p0
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/minidns/d;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lorg/minidns/d;->a:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/minidns/d;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/minidns/d;->c:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/minidns/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/minidns/d;->c:Ljava/lang/Exception;

    if-nez v1, :cond_2

    .line 5
    iget-boolean v1, p0, Lorg/minidns/d;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    .line 6
    monitor-exit p0

    return-object v0

    .line 7
    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 8
    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/minidns/d;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/minidns/d;->c:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/minidns/d;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/minidns/d;->h()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/minidns/d;->b:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/minidns/d;->c:Ljava/lang/Exception;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lorg/minidns/d;->a:Z

    if-nez p2, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v0, p1

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-lez p3, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean p2, p0, Lorg/minidns/d;->a:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lorg/minidns/d;->c:Ljava/lang/Exception;

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0}, Lorg/minidns/d;->h()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 11
    :cond_2
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized i()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/minidns/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/minidns/d;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/minidns/d;->d:Lorg/minidns/util/k;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lorg/minidns/d;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/minidns/d$c;

    invoke-direct {v1, p0}, Lorg/minidns/d$c;-><init>(Lorg/minidns/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/minidns/d;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/minidns/d;->e:Lorg/minidns/util/e;

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lorg/minidns/d;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/minidns/d$d;

    invoke-direct {v1, p0}, Lorg/minidns/d$d;-><init>(Lorg/minidns/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/minidns/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/minidns/d;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
