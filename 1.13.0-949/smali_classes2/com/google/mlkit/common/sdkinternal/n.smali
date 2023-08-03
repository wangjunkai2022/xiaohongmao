.class public abstract Lcom/google/mlkit/common/sdkinternal/n;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation build Lu2/a;
.end annotation


# instance fields
.field protected final a:Lcom/google/mlkit/common/sdkinternal/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/q;

    .line 3
    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/q;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->a:Lcom/google/mlkit/common/sdkinternal/q;

    return-void
.end method

.method protected constructor <init>(Lcom/google/mlkit/common/sdkinternal/q;)V
    .locals 2
    .param p1    # Lcom/google/mlkit/common/sdkinternal/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/n;->a:Lcom/google/mlkit/common/sdkinternal/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/k;
    .locals 9
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/tasks/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/android/gms/tasks/a;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->q(Z)V

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/tasks/n;->e()Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v3, Lcom/google/android/gms/tasks/b;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/b;-><init>()V

    .line 5
    new-instance v6, Lcom/google/android/gms/tasks/l;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/b;->b()Lcom/google/android/gms/tasks/a;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/android/gms/tasks/l;-><init>(Lcom/google/android/gms/tasks/a;)V

    new-instance v7, Lcom/google/mlkit/common/sdkinternal/d0;

    invoke-direct {v7, p1, p3, v3, v6}, Lcom/google/mlkit/common/sdkinternal/d0;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;Lcom/google/android/gms/tasks/b;Lcom/google/android/gms/tasks/l;)V

    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/n;->a:Lcom/google/mlkit/common/sdkinternal/q;

    new-instance v8, Lcom/google/mlkit/common/sdkinternal/e0;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/common/sdkinternal/e0;-><init>(Lcom/google/mlkit/common/sdkinternal/n;Lcom/google/android/gms/tasks/a;Lcom/google/android/gms/tasks/b;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/l;)V

    .line 7
    invoke-virtual {p1, v7, v8}, Lcom/google/mlkit/common/sdkinternal/q;->b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/tasks/l;->a()Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract c()V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method

.method public d()V
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected abstract e()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method

.method public f(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/mlkit/common/sdkinternal/n;->g(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/k;

    return-void
.end method

.method public g(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/k;
    .locals 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->q(Z)V

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/l;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/l;-><init>()V

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/n;->a:Lcom/google/mlkit/common/sdkinternal/q;

    new-instance v2, Lcom/google/mlkit/common/sdkinternal/c0;

    invoke-direct {v2, p0, v0}, Lcom/google/mlkit/common/sdkinternal/c0;-><init>(Lcom/google/mlkit/common/sdkinternal/n;Lcom/google/android/gms/tasks/l;)V

    .line 3
    invoke-virtual {v1, p1, v2}, Lcom/google/mlkit/common/sdkinternal/q;->b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/l;->a()Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method final synthetic h(Lcom/google/android/gms/tasks/a;Lcom/google/android/gms/tasks/b;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/l;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/b;->a()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/n;->c()V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/b;->a()V

    return-void

    .line 8
    :cond_2
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/b;->a()V

    return-void

    .line 11
    :cond_3
    invoke-virtual {p4, p3}, Lcom/google/android/gms/tasks/l;->c(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Internal error has occurred when executing ML Kit tasks"

    const/16 v2, 0xd

    .line 12
    invoke-direct {v0, v1, v2, p3}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/a;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/b;->a()V

    return-void

    .line 15
    :cond_4
    invoke-virtual {p4, p3}, Lcom/google/android/gms/tasks/l;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic i(Lcom/google/android/gms/tasks/l;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/u;->q(Z)V

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/n;->e()V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/n;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/ta;->a()V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/l;->c(Ljava/lang/Object;)V

    return-void
.end method
