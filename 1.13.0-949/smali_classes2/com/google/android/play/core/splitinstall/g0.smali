.class final Lcom/google/android/play/core/splitinstall/g0;
.super Lcom/google/android/play/core/splitinstall/k0;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/l0;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/k0;-><init>(Lcom/google/android/play/core/splitinstall/l0;Lcom/google/android/play/core/tasks/o;)V

    return-void
.end method


# virtual methods
.method public final B0(ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/k0;->B0(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/k0;->c:Lcom/google/android/play/core/tasks/o;

    .line 2
    invoke-static {p2}, Lcom/google/android/play/core/splitinstall/f;->n(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/o;->e(Ljava/lang/Object;)Z

    return-void
.end method
