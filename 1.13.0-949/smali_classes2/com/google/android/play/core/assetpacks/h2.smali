.class public final synthetic Lcom/google/android/play/core/assetpacks/h2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/o2;

.field public final synthetic b:Lcom/google/android/play/core/assetpacks/l2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/o2;Lcom/google/android/play/core/assetpacks/l2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/h2;->a:Lcom/google/android/play/core/assetpacks/o2;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/h2;->b:Lcom/google/android/play/core/assetpacks/l2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/h2;->a:Lcom/google/android/play/core/assetpacks/o2;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/h2;->b:Lcom/google/android/play/core/assetpacks/l2;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/l2;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/o2;->n(I)V

    return-void
.end method
