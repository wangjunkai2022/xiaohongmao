.class final Lcom/google/android/play/core/assetpacks/y;
.super Lcom/google/android/play/core/assetpacks/s;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final e:I

.field final f:Ljava/lang/String;

.field final g:I

.field final synthetic h:Lcom/google/android/play/core/assetpacks/d0;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/y;->h:Lcom/google/android/play/core/assetpacks/d0;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/s;-><init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/y;->e:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/y;->f:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/play/core/assetpacks/y;->g:I

    return-void
.end method


# virtual methods
.method public final w(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y;->h:Lcom/google/android/play/core/assetpacks/d0;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/d0;->w(Lcom/google/android/play/core/assetpacks/d0;)Lcom/google/android/play/core/internal/t;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s;->c:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/t;->s(Lcom/google/android/play/core/tasks/o;)V

    const-string v0, "error_code"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/google/android/play/core/assetpacks/d0;->v()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onError(%d), retrying notifyModuleCompleted..."

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget p1, p0, Lcom/google/android/play/core/assetpacks/y;->g:I

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y;->h:Lcom/google/android/play/core/assetpacks/d0;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/y;->e:I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/y;->f:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    .line 4
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/play/core/assetpacks/d0;->C(Lcom/google/android/play/core/assetpacks/d0;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
