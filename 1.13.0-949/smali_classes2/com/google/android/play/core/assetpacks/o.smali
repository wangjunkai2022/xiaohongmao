.class final Lcom/google/android/play/core/assetpacks/o;
.super Lcom/google/android/play/core/internal/i;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/play/core/tasks/o;

.field final synthetic e:I

.field final synthetic f:Lcom/google/android/play/core/assetpacks/d0;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;ILjava/lang/String;Lcom/google/android/play/core/tasks/o;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/o;->f:Lcom/google/android/play/core/assetpacks/d0;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/o;->b:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/o;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/o;->d:Lcom/google/android/play/core/tasks/o;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/o;->e:I

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/i;-><init>(Lcom/google/android/play/core/tasks/o;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->f:Lcom/google/android/play/core/assetpacks/d0;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/d0;->w(Lcom/google/android/play/core/assetpacks/d0;)Lcom/google/android/play/core/internal/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/t;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/i2;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/o;->f:Lcom/google/android/play/core/assetpacks/d0;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/d0;->y(Lcom/google/android/play/core/assetpacks/d0;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/o;->b:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/o;->c:Ljava/lang/String;

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/play/core/assetpacks/d0;->p(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/d0;->q()Landroid/os/Bundle;

    move-result-object v3

    new-instance v10, Lcom/google/android/play/core/assetpacks/y;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/o;->f:Lcom/google/android/play/core/assetpacks/d0;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/o;->d:Lcom/google/android/play/core/tasks/o;

    iget v7, p0, Lcom/google/android/play/core/assetpacks/o;->b:I

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/o;->c:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/play/core/assetpacks/o;->e:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/y;-><init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;ILjava/lang/String;I)V

    .line 4
    invoke-interface {v0, v1, v2, v3, v10}, Lcom/google/android/play/core/internal/i2;->J0(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/google/android/play/core/assetpacks/d0;->v()Lcom/google/android/play/core/internal/h;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notifyModuleCompleted"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
