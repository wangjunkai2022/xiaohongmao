.class public final Lcom/google/android/play/core/splitinstall/h1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static a:Lcom/google/android/play/core/splitinstall/c1;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/c1;
    .locals 3

    const-class v0, Lcom/google/android/play/core/splitinstall/h1;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/play/core/splitinstall/h1;->a:Lcom/google/android/play/core/splitinstall/c1;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/splitinstall/q0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/splitinstall/q0;-><init>(Lcom/google/android/play/core/splitinstall/i0;)V

    new-instance v2, Lcom/google/android/play/core/splitinstall/k;

    invoke-static {p0}, Lcom/google/android/play/core/internal/e1;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/splitinstall/k;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/splitinstall/q0;->a(Lcom/google/android/play/core/splitinstall/k;)Lcom/google/android/play/core/splitinstall/q0;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/q0;->b()Lcom/google/android/play/core/splitinstall/c1;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/splitinstall/h1;->a:Lcom/google/android/play/core/splitinstall/c1;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/splitinstall/h1;->a:Lcom/google/android/play/core/splitinstall/c1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
