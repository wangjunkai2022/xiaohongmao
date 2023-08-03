.class Lcom/google/android/play/core/appupdate/r;
.super Lcom/google/android/play/core/internal/e2;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final c:Lcom/google/android/play/core/internal/h;

.field final d:Lcom/google/android/play/core/tasks/o;

.field final synthetic e:Lcom/google/android/play/core/appupdate/u;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/u;Lcom/google/android/play/core/internal/h;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/r;->e:Lcom/google/android/play/core/appupdate/u;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/e2;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/r;->c:Lcom/google/android/play/core/internal/h;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/r;->d:Lcom/google/android/play/core/tasks/o;

    return-void
.end method


# virtual methods
.method public h(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/r;->e:Lcom/google/android/play/core/appupdate/u;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/u;->a:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/r;->d:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/r;->c:Lcom/google/android/play/core/internal/h;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRequestInfo"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public y(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/r;->e:Lcom/google/android/play/core/appupdate/u;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/u;->a:Lcom/google/android/play/core/internal/t;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/r;->d:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/r;->c:Lcom/google/android/play/core/internal/h;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCompleteUpdate"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/h;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
