.class final Lcom/google/android/play/core/internal/p;
.super Lcom/google/android/play/core/internal/i;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic b:Landroid/os/IBinder;

.field final synthetic c:Lcom/google/android/play/core/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/s;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/p;->c:Lcom/google/android/play/core/internal/s;

    iput-object p2, p0, Lcom/google/android/play/core/internal/p;->b:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/p;->c:Lcom/google/android/play/core/internal/s;

    iget-object v0, v0, Lcom/google/android/play/core/internal/s;->a:Lcom/google/android/play/core/internal/t;

    invoke-static {v0}, Lcom/google/android/play/core/internal/t;->g(Lcom/google/android/play/core/internal/t;)Lcom/google/android/play/core/internal/o;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/internal/p;->b:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/internal/o;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/t;->l(Lcom/google/android/play/core/internal/t;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/p;->c:Lcom/google/android/play/core/internal/s;

    iget-object v0, v0, Lcom/google/android/play/core/internal/s;->a:Lcom/google/android/play/core/internal/t;

    .line 2
    invoke-static {v0}, Lcom/google/android/play/core/internal/t;->o(Lcom/google/android/play/core/internal/t;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/p;->c:Lcom/google/android/play/core/internal/s;

    iget-object v0, v0, Lcom/google/android/play/core/internal/s;->a:Lcom/google/android/play/core/internal/t;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/t;->k(Lcom/google/android/play/core/internal/t;Z)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/p;->c:Lcom/google/android/play/core/internal/s;

    iget-object v0, v0, Lcom/google/android/play/core/internal/s;->a:Lcom/google/android/play/core/internal/t;

    invoke-static {v0}, Lcom/google/android/play/core/internal/t;->h(Lcom/google/android/play/core/internal/t;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/p;->c:Lcom/google/android/play/core/internal/s;

    iget-object v0, v0, Lcom/google/android/play/core/internal/s;->a:Lcom/google/android/play/core/internal/t;

    invoke-static {v0}, Lcom/google/android/play/core/internal/t;->h(Lcom/google/android/play/core/internal/t;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
