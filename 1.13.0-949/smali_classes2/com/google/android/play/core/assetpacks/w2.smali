.class public final synthetic Lcom/google/android/play/core/assetpacks/w2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/y2;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/google/android/play/core/assetpacks/m0;

.field public final synthetic d:Lcom/google/android/play/core/tasks/o;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/y2;Ljava/util/List;Lcom/google/android/play/core/assetpacks/m0;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/w2;->a:Lcom/google/android/play/core/assetpacks/y2;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/w2;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/w2;->c:Lcom/google/android/play/core/assetpacks/m0;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/w2;->d:Lcom/google/android/play/core/tasks/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w2;->a:Lcom/google/android/play/core/assetpacks/y2;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/w2;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/w2;->c:Lcom/google/android/play/core/assetpacks/m0;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/w2;->d:Lcom/google/android/play/core/tasks/o;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/play/core/assetpacks/y2;->l(Ljava/util/List;Lcom/google/android/play/core/assetpacks/m0;Lcom/google/android/play/core/tasks/o;)V

    return-void
.end method
