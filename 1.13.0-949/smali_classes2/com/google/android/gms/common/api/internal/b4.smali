.class final Lcom/google/android/gms/common/api/internal/b4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/e0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/e0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b4;->a:Lcom/google/android/gms/common/api/internal/e0;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e0;->B(Lcom/google/android/gms/common/api/internal/e0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw v0
.end method
