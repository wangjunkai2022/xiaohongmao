.class public final Lcom/google/android/play/core/assetpacks/j2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static a:Lcom/google/android/play/core/assetpacks/g;


# direct methods
.method static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/g;
    .locals 3

    const-class v0, Lcom/google/android/play/core/assetpacks/j2;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/play/core/assetpacks/j2;->a:Lcom/google/android/play/core/assetpacks/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/assetpacks/k1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/assetpacks/k1;-><init>(Lcom/google/android/play/core/assetpacks/j1;)V

    new-instance v2, Lcom/google/android/play/core/assetpacks/o4;

    invoke-static {p0}, Lcom/google/android/play/core/internal/e1;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/assetpacks/o4;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/k1;->b(Lcom/google/android/play/core/assetpacks/o4;)Lcom/google/android/play/core/assetpacks/k1;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/k1;->a()Lcom/google/android/play/core/assetpacks/g;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/assetpacks/j2;->a:Lcom/google/android/play/core/assetpacks/g;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/assetpacks/j2;->a:Lcom/google/android/play/core/assetpacks/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
