.class final Lcom/google/android/play/core/assetpacks/v;
.super Lcom/google/android/play/core/assetpacks/s;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic e:Lcom/google/android/play/core/assetpacks/d0;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/v;->e:Lcom/google/android/play/core/assetpacks/d0;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/s;-><init>(Lcom/google/android/play/core/assetpacks/d0;Lcom/google/android/play/core/tasks/o;)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/assetpacks/s;->B(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/v;->e:Lcom/google/android/play/core/assetpacks/d0;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/play/core/assetpacks/d0;->A(Lcom/google/android/play/core/assetpacks/d0;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s;->c:Lcom/google/android/play/core/tasks/o;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/o;->e(Ljava/lang/Object;)Z

    return-void
.end method
