.class public final synthetic Lcom/google/android/play/core/assetpacks/f0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/j0;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/j0;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/f0;->a:Lcom/google/android/play/core/assetpacks/j0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/f0;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f0;->a:Lcom/google/android/play/core/assetpacks/j0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/f0;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/j0;->i(Landroid/os/Bundle;)V

    return-void
.end method
