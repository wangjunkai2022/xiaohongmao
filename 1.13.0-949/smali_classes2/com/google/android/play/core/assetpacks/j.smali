.class final Lcom/google/android/play/core/assetpacks/j;
.super Lcom/google/android/play/core/internal/i;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/google/android/play/core/tasks/o;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/google/android/play/core/assetpacks/d0;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;Ljava/util/List;Ljava/util/Map;Lcom/google/android/play/core/tasks/o;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/j;->f:Lcom/google/android/play/core/assetpacks/d0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/j;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/j;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/j;->d:Lcom/google/android/play/core/tasks/o;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/j;->e:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/i;-><init>(Lcom/google/android/play/core/tasks/o;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/j;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/d0;->z(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/j;->f:Lcom/google/android/play/core/assetpacks/d0;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/d0;->w(Lcom/google/android/play/core/assetpacks/d0;)Lcom/google/android/play/core/internal/t;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/internal/t;->e()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/i2;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/j;->f:Lcom/google/android/play/core/assetpacks/d0;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/d0;->y(Lcom/google/android/play/core/assetpacks/d0;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/j;->c:Ljava/util/Map;

    .line 3
    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/d0;->r(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v10, Lcom/google/android/play/core/assetpacks/c0;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/j;->f:Lcom/google/android/play/core/assetpacks/d0;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/j;->d:Lcom/google/android/play/core/tasks/o;

    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/d0;->t(Lcom/google/android/play/core/assetpacks/d0;)Lcom/google/android/play/core/assetpacks/x1;

    move-result-object v7

    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/d0;->u(Lcom/google/android/play/core/assetpacks/d0;)Lcom/google/android/play/core/assetpacks/m3;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/play/core/assetpacks/j;->e:Ljava/util/List;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/c0;-><init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;Lcom/google/android/play/core/assetpacks/x1;Lcom/google/android/play/core/assetpacks/m3;Ljava/util/List;)V

    .line 4
    invoke-interface {v1, v2, v0, v3, v10}, Lcom/google/android/play/core/internal/i2;->x0(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/d0;->v()Lcom/google/android/play/core/internal/h;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/j;->b:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "startDownload(%s)"

    .line 5
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/j;->d:Lcom/google/android/play/core/tasks/o;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 6
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/o;->d(Ljava/lang/Exception;)Z

    return-void
.end method
