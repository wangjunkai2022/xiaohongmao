.class final Lcom/google/android/gms/tasks/c0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/k;

.field final synthetic b:Lcom/google/android/gms/tasks/d0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/d0;Lcom/google/android/gms/tasks/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/c0;->b:Lcom/google/android/gms/tasks/d0;

    iput-object p2, p0, Lcom/google/android/gms/tasks/c0;->a:Lcom/google/android/gms/tasks/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/c0;->b:Lcom/google/android/gms/tasks/d0;

    invoke-static {v0}, Lcom/google/android/gms/tasks/d0;->b(Lcom/google/android/gms/tasks/d0;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/c0;->b:Lcom/google/android/gms/tasks/d0;

    invoke-static {v1}, Lcom/google/android/gms/tasks/d0;->a(Lcom/google/android/gms/tasks/d0;)Lcom/google/android/gms/tasks/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/tasks/d0;->a(Lcom/google/android/gms/tasks/d0;)Lcom/google/android/gms/tasks/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tasks/c0;->a:Lcom/google/android/gms/tasks/k;

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/e;->a(Lcom/google/android/gms/tasks/k;)V

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
