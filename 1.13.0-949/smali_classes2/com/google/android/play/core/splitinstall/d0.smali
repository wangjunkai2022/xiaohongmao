.class final Lcom/google/android/play/core/splitinstall/d0;
.super Lcom/google/android/play/core/splitinstall/k0;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/l0;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/k0;-><init>(Lcom/google/android/play/core/splitinstall/l0;Lcom/google/android/play/core/tasks/o;)V

    return-void
.end method


# virtual methods
.method public final w(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/splitinstall/k0;->w(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/o;->e(Ljava/lang/Object;)Z

    return-void
.end method
