.class final Lcom/google/android/gms/common/api/internal/d0;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x2
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/m;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/m;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d0;->b:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lcom/google/android/gms/common/api/internal/m;

    const-string v0, "LifecycleObserverOnStop"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/m;->h(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method static bridge synthetic m(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/d0;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/m;

    move-result-object v0

    const-string v1, "LifecycleObserverOnStop"

    const-class v2, Lcom/google/android/gms/common/api/internal/d0;

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/m;->m(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/d0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/api/internal/d0;

    .line 4
    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/internal/d0;-><init>(Lcom/google/android/gms/common/api/internal/m;)V

    .line 5
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static bridge synthetic n(Lcom/google/android/gms/common/api/internal/d0;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/d0;->o(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final declared-synchronized o(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final l()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d0;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/d0;->b:Ljava/util/List;

    .line 2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
