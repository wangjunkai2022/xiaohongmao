.class public Lcom/google/mlkit/common/sdkinternal/i;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation build Lu2/a;
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/mlkit/common/sdkinternal/i;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/i;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/i;->a:Landroid/os/Handler;

    return-void
.end method

.method public static b()Lcom/google/mlkit/common/sdkinternal/i;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/i;->c:Lcom/google/mlkit/common/sdkinternal/i;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MLHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 3
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/mlkit/common/sdkinternal/i;

    .line 4
    invoke-direct {v2, v1}, Lcom/google/mlkit/common/sdkinternal/i;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/google/mlkit/common/sdkinternal/i;->c:Lcom/google/mlkit/common/sdkinternal/i;

    :cond_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/i;->c:Lcom/google/mlkit/common/sdkinternal/i;

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static g()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/y;->a:Lcom/google/mlkit/common/sdkinternal/y;

    return-object v0
.end method

.method static bridge synthetic h(Lcom/google/mlkit/common/sdkinternal/i;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/i;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/i;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/k;
    .locals 2
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TResultT;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TResultT;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/l;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/l;-><init>()V

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/w;

    invoke-direct {v1, p1, v0}, Lcom/google/mlkit/common/sdkinternal/w;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/l;)V

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/mlkit/common/sdkinternal/i;->d(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/l;->a()Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/i;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/k;
    .locals 2
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/android/gms/tasks/k<",
            "TResultT;>;>;)",
            "Lcom/google/android/gms/tasks/k<",
            "TResultT;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/mlkit/common/sdkinternal/i;->c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/b0;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/x;->a:Lcom/google/mlkit/common/sdkinternal/x;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/k;->p(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method
