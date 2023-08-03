.class final Lcom/google/android/play/core/tasks/g;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/tasks/d;

.field final synthetic b:Lcom/google/android/play/core/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/tasks/h;Lcom/google/android/play/core/tasks/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/tasks/g;->b:Lcom/google/android/play/core/tasks/h;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/g;->a:Lcom/google/android/play/core/tasks/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/g;->b:Lcom/google/android/play/core/tasks/h;

    invoke-static {v0}, Lcom/google/android/play/core/tasks/h;->c(Lcom/google/android/play/core/tasks/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/g;->b:Lcom/google/android/play/core/tasks/h;

    invoke-static {v1}, Lcom/google/android/play/core/tasks/h;->b(Lcom/google/android/play/core/tasks/h;)Lcom/google/android/play/core/tasks/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/play/core/tasks/h;->b(Lcom/google/android/play/core/tasks/h;)Lcom/google/android/play/core/tasks/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/tasks/g;->a:Lcom/google/android/play/core/tasks/d;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/tasks/a;->a(Lcom/google/android/play/core/tasks/d;)V

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
