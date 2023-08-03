.class final Lcom/google/android/play/core/internal/m;
.super Lcom/google/android/play/core/internal/i;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic b:Lcom/google/android/play/core/internal/t;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/m;->b:Lcom/google/android/play/core/internal/t;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/m;->b:Lcom/google/android/play/core/internal/t;

    invoke-static {v0}, Lcom/google/android/play/core/internal/t;->d(Lcom/google/android/play/core/internal/t;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/play/core/internal/t;->f(Lcom/google/android/play/core/internal/t;)Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unbind from service."

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/internal/m;->b:Lcom/google/android/play/core/internal/t;

    invoke-static {v0}, Lcom/google/android/play/core/internal/t;->a(Lcom/google/android/play/core/internal/t;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/play/core/internal/t;->b(Lcom/google/android/play/core/internal/t;)Landroid/content/ServiceConnection;

    move-result-object v0

    .line 2
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/m;->b:Lcom/google/android/play/core/internal/t;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/t;->k(Lcom/google/android/play/core/internal/t;Z)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/m;->b:Lcom/google/android/play/core/internal/t;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/t;->l(Lcom/google/android/play/core/internal/t;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/m;->b:Lcom/google/android/play/core/internal/t;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/t;->j(Lcom/google/android/play/core/internal/t;Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/m;->b:Lcom/google/android/play/core/internal/t;

    .line 6
    invoke-static {v0}, Lcom/google/android/play/core/internal/t;->m(Lcom/google/android/play/core/internal/t;)V

    return-void
.end method
