.class final Lcom/google/android/play/core/assetpacks/c0;
.super Lcom/google/android/play/core/assetpacks/s;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final e:Ljava/util/List;

.field private final f:Lcom/google/android/play/core/assetpacks/x1;

.field private final g:Lcom/google/android/play/core/assetpacks/m3;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;Lcom/google/android/play/core/assetpacks/x1;Lcom/google/android/play/core/assetpacks/m3;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/s;-><init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;)V

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/c0;->f:Lcom/google/android/play/core/assetpacks/x1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/c0;->g:Lcom/google/android/play/core/assetpacks/m3;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/c0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final D1(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/s;->D1(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/s;->c:Lcom/google/android/play/core/tasks/o;

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/c0;->f:Lcom/google/android/play/core/assetpacks/x1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/c0;->g:Lcom/google/android/play/core/assetpacks/m3;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/c0;->e:Ljava/util/List;

    .line 2
    invoke-static {p2, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/f;->e(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/x1;Lcom/google/android/play/core/assetpacks/m3;Ljava/util/List;)Lcom/google/android/play/core/assetpacks/f;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/o;->e(Ljava/lang/Object;)Z

    return-void
.end method
