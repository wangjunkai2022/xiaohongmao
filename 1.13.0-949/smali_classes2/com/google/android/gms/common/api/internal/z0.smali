.class abstract Lcom/google/android/gms/common/api/internal/z0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/a1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/a1;Lcom/google/android/gms/common/api/internal/y0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z0;->a:Lcom/google/android/gms/common/api/internal/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public final run()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z0;->a:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a1;->z(Lcom/google/android/gms/common/api/internal/a1;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z0;->a:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a1;->z(Lcom/google/android/gms/common/api/internal/a1;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/z0;->a()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z0;->a:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a1;->z(Lcom/google/android/gms/common/api/internal/a1;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z0;->a:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/a1;->u(Lcom/google/android/gms/common/api/internal/a1;)Lcom/google/android/gms/common/api/internal/n1;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/n1;->t(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z0;->a:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a1;->z(Lcom/google/android/gms/common/api/internal/a1;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_0

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z0;->a:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/a1;->z(Lcom/google/android/gms/common/api/internal/a1;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    throw v0
.end method
