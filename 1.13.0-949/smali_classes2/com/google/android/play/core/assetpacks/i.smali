.class final Lcom/google/android/play/core/assetpacks/i;
.super Lcom/google/android/play/core/internal/i;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/play/core/tasks/o;

.field final synthetic d:Lcom/google/android/play/core/assetpacks/d0;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;Ljava/lang/String;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/i;->d:Lcom/google/android/play/core/assetpacks/d0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/i;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/i;->c:Lcom/google/android/play/core/tasks/o;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/i;-><init>(Lcom/google/android/play/core/tasks/o;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i;->d:Lcom/google/android/play/core/assetpacks/d0;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/d0;->w(Lcom/google/android/play/core/assetpacks/d0;)Lcom/google/android/play/core/internal/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/internal/t;->e()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/i2;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/i;->d:Lcom/google/android/play/core/assetpacks/d0;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/d0;->y(Lcom/google/android/play/core/assetpacks/d0;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/i;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0, v3}, Lcom/google/android/play/core/assetpacks/d0;->p(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/d0;->q()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/google/android/play/core/assetpacks/a0;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/i;->d:Lcom/google/android/play/core/assetpacks/d0;

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/i;->c:Lcom/google/android/play/core/tasks/o;

    invoke-direct {v5, v6, v7}, Lcom/google/android/play/core/assetpacks/a0;-><init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;)V

    .line 4
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/internal/i2;->L(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 5
    invoke-static {}, Lcom/google/android/play/core/assetpacks/d0;->v()Lcom/google/android/play/core/internal/h;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/i;->b:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v0, "removePack(%s)"

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
