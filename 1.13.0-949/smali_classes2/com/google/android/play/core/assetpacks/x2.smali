.class public final synthetic Lcom/google/android/play/core/assetpacks/x2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/y2;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/google/android/play/core/tasks/o;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/y2;Ljava/util/List;Lcom/google/android/play/core/tasks/o;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/x2;->a:Lcom/google/android/play/core/assetpacks/y2;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/x2;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/x2;->c:Lcom/google/android/play/core/tasks/o;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/x2;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/x2;->a:Lcom/google/android/play/core/assetpacks/y2;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/x2;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/x2;->c:Lcom/google/android/play/core/tasks/o;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/x2;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/play/core/assetpacks/y2;->o(Ljava/util/List;Lcom/google/android/play/core/tasks/o;Ljava/util/List;)V

    return-void
.end method
