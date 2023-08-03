.class final Lcom/google/android/play/core/review/f;
.super Lcom/google/android/play/core/internal/i;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic b:Lcom/google/android/play/core/tasks/o;

.field final synthetic c:Lcom/google/android/play/core/review/i;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/i;Lcom/google/android/play/core/tasks/o;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/review/f;->c:Lcom/google/android/play/core/review/i;

    iput-object p3, p0, Lcom/google/android/play/core/review/f;->b:Lcom/google/android/play/core/tasks/o;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/i;-><init>(Lcom/google/android/play/core/tasks/o;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/review/f;->c:Lcom/google/android/play/core/review/i;

    iget-object v0, v0, Lcom/google/android/play/core/review/i;->a:Lcom/google/android/play/core/internal/t;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/t;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/d;

    iget-object v1, p0, Lcom/google/android/play/core/review/f;->c:Lcom/google/android/play/core/review/i;

    invoke-static {v1}, Lcom/google/android/play/core/review/i;->c(Lcom/google/android/play/core/review/i;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "review"

    .line 2
    invoke-static {v2}, Lcom/google/android/play/core/common/b;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/review/h;

    iget-object v4, p0, Lcom/google/android/play/core/review/f;->c:Lcom/google/android/play/core/review/i;

    iget-object v5, p0, Lcom/google/android/play/core/review/f;->b:Lcom/google/android/play/core/tasks/o;

    invoke-static {v4}, Lcom/google/android/play/core/review/i;->c(Lcom/google/android/play/core/review/i;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/play/core/review/h;-><init>(Lcom/google/android/play/core/review/i;Lcom/google/android/play/core/tasks/o;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/play/core/internal/d;->I0(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/f;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Lcom/google/android/play/core/review/i;->a()Lcom/google/android/play/core/internal/h;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/review/f;->c:Lcom/google/android/play/core/review/i;

    invoke-static {v4}, Lcom/google/android/play/core/review/i;->c(Lcom/google/android/play/core/review/i;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "error requesting in-app review for %s"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/review/f;->b:Lcom/google/android/play/core/tasks/o;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 5
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/o;->d(Ljava/lang/Exception;)Z

    return-void
.end method
