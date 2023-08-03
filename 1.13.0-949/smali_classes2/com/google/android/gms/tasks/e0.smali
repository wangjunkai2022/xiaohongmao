.class final Lcom/google/android/gms/tasks/e0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/k;

.field final synthetic b:Lcom/google/android/gms/tasks/f0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/f0;Lcom/google/android/gms/tasks/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/e0;->b:Lcom/google/android/gms/tasks/f0;

    iput-object p2, p0, Lcom/google/android/gms/tasks/e0;->a:Lcom/google/android/gms/tasks/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/e0;->b:Lcom/google/android/gms/tasks/f0;

    invoke-static {v0}, Lcom/google/android/gms/tasks/f0;->b(Lcom/google/android/gms/tasks/f0;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/e0;->b:Lcom/google/android/gms/tasks/f0;

    invoke-static {v1}, Lcom/google/android/gms/tasks/f0;->a(Lcom/google/android/gms/tasks/f0;)Lcom/google/android/gms/tasks/f;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/tasks/f0;->a(Lcom/google/android/gms/tasks/f0;)Lcom/google/android/gms/tasks/f;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tasks/e0;->a:Lcom/google/android/gms/tasks/k;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/k;->q()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/f;->a(Ljava/lang/Exception;)V

    .line 2
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
