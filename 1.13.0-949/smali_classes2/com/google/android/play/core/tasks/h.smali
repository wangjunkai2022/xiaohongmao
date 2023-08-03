.class final Lcom/google/android/play/core/tasks/h;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/tasks/m;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/play/core/tasks/a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/h;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/tasks/h;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/h;->c:Lcom/google/android/play/core/tasks/a;

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/play/core/tasks/h;)Lcom/google/android/play/core/tasks/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/h;->c:Lcom/google/android/play/core/tasks/a;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/android/play/core/tasks/h;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/h;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/tasks/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/h;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/h;->c:Lcom/google/android/play/core/tasks/a;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/play/core/tasks/h;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/tasks/g;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/tasks/g;-><init>(Lcom/google/android/play/core/tasks/h;Lcom/google/android/play/core/tasks/d;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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
