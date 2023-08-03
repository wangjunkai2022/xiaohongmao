.class Lcom/google/android/play/core/splitinstall/k0;
.super Lcom/google/android/play/core/internal/b1;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final c:Lcom/google/android/play/core/tasks/o;

.field final synthetic d:Lcom/google/android/play/core/splitinstall/l0;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/l0;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/b1;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetSessionStates"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public B0(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p2, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onGetSession(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public X0(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredUninstall"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final c0(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p2, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onCompleteInstall(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final d0(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetSplitsForAppUpdate"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public f1(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredLanguageUninstall"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public g(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p2, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onCancelInstall(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredInstall"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final k0(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    const-string v0, "error_code"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    new-instance v1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    .line 4
    invoke-direct {v1, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/o;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public q0(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p2, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onStartInstall(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final u0(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCompleteInstallForAppUpdate"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public w(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/k0;->d:Lcom/google/android/play/core/splitinstall/l0;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/l0;->b:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/l0;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredLanguageInstall"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
