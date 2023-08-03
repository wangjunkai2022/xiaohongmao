.class public final Lcom/google/android/play/core/tasks/f;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/play/core/tasks/d;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lcom/google/android/play/core/tasks/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;)TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Task must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/play/core/internal/i1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/google/android/play/core/tasks/f;->f(Lcom/google/android/play/core/tasks/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/tasks/t;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/play/core/tasks/t;-><init>(Lcom/google/android/play/core/tasks/s;)V

    .line 5
    invoke-static {p0, v0}, Lcom/google/android/play/core/tasks/f;->g(Lcom/google/android/play/core/tasks/d;Lcom/google/android/play/core/tasks/u;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/t;->b()V

    .line 7
    invoke-static {p0}, Lcom/google/android/play/core/tasks/f;->f(Lcom/google/android/play/core/tasks/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/play/core/tasks/d;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lcom/google/android/play/core/tasks/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/tasks/d<",
            "TResultT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "Task must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/play/core/internal/i1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    .line 2
    invoke-static {p3, v0}, Lcom/google/android/play/core/internal/i1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/google/android/play/core/tasks/f;->f(Lcom/google/android/play/core/tasks/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/tasks/t;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/play/core/tasks/t;-><init>(Lcom/google/android/play/core/tasks/s;)V

    .line 6
    invoke-static {p0, v0}, Lcom/google/android/play/core/tasks/f;->g(Lcom/google/android/play/core/tasks/d;Lcom/google/android/play/core/tasks/u;)V

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/play/core/tasks/t;->c(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {p0}, Lcom/google/android/play/core/tasks/f;->f(Lcom/google/android/play/core/tasks/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/util/Collection;)Lcom/google/android/play/core/tasks/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/play/core/tasks/d<",
            "*>;>;)",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcom/google/android/play/core/tasks/f;->e(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/d;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/tasks/d;

    const-string v2, "null tasks are not accepted"

    .line 4
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/play/core/tasks/r;

    .line 5
    invoke-direct {v0}, Lcom/google/android/play/core/tasks/r;-><init>()V

    new-instance v1, Lcom/google/android/play/core/tasks/v;

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/play/core/tasks/v;-><init>(ILcom/google/android/play/core/tasks/r;)V

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/tasks/d;

    .line 8
    invoke-static {v2, v1}, Lcom/google/android/play/core/tasks/f;->g(Lcom/google/android/play/core/tasks/d;Lcom/google/android/play/core/tasks/u;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static d(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/d;
    .locals 1

    new-instance v0, Lcom/google/android/play/core/tasks/r;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/r;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/r;->l(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/d;
    .locals 1

    new-instance v0, Lcom/google/android/play/core/tasks/r;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/r;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/tasks/r;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static f(Lcom/google/android/play/core/tasks/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/d;->h()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/play/core/tasks/d;->g()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static g(Lcom/google/android/play/core/tasks/d;Lcom/google/android/play/core/tasks/u;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/play/core/tasks/e;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/d;->f(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/tasks/d;->d(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;

    return-void
.end method
