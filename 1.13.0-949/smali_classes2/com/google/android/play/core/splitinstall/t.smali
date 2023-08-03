.class final Lcom/google/android/play/core/splitinstall/t;
.super Lcom/google/android/play/core/internal/i;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic b:Ljava/util/Collection;

.field final synthetic c:Ljava/util/Collection;

.field final synthetic d:Lcom/google/android/play/core/tasks/o;

.field final synthetic e:Lcom/google/android/play/core/splitinstall/l0;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/l0;Lcom/google/android/play/core/tasks/o;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/t;->e:Lcom/google/android/play/core/splitinstall/l0;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/t;->b:Ljava/util/Collection;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/t;->c:Ljava/util/Collection;

    iput-object p5, p0, Lcom/google/android/play/core/splitinstall/t;->d:Lcom/google/android/play/core/tasks/o;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/i;-><init>(Lcom/google/android/play/core/tasks/o;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/t;->b:Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/l0;->m(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/t;->c:Ljava/util/Collection;

    .line 2
    invoke-static {v1}, Lcom/google/android/play/core/splitinstall/l0;->l(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/t;->e:Lcom/google/android/play/core/splitinstall/l0;

    iget-object v1, v1, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/play/core/internal/t;->e()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/a1;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/t;->e:Lcom/google/android/play/core/splitinstall/l0;

    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/l0;->k(Lcom/google/android/play/core/splitinstall/l0;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->a()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/splitinstall/j0;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/t;->e:Lcom/google/android/play/core/splitinstall/l0;

    iget-object v6, p0, Lcom/google/android/play/core/splitinstall/t;->d:Lcom/google/android/play/core/tasks/o;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/splitinstall/j0;-><init>(Lcom/google/android/play/core/splitinstall/l0;Lcom/google/android/play/core/tasks/o;)V

    .line 5
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/play/core/internal/a1;->E1(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/c1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/t;->b:Ljava/util/Collection;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/t;->c:Ljava/util/Collection;

    aput-object v4, v2, v3

    const-string v3, "startInstall(%s,%s)"

    .line 6
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/t;->d:Lcom/google/android/play/core/tasks/o;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 7
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/o;->d(Ljava/lang/Exception;)Z

    return-void
.end method
