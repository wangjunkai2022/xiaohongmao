.class public final Lcom/google/android/play/core/appupdate/e;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static a:Lcom/google/android/play/core/appupdate/f;


# direct methods
.method static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/f;
    .locals 3

    const-class v0, Lcom/google/android/play/core/appupdate/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/play/core/appupdate/e;->a:Lcom/google/android/play/core/appupdate/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/appupdate/c0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/appupdate/c0;-><init>(Lcom/google/android/play/core/appupdate/b0;)V

    new-instance v2, Lcom/google/android/play/core/appupdate/l;

    invoke-static {p0}, Lcom/google/android/play/core/internal/e1;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/appupdate/l;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/appupdate/c0;->a(Lcom/google/android/play/core/appupdate/l;)Lcom/google/android/play/core/appupdate/c0;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/c0;->b()Lcom/google/android/play/core/appupdate/f;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/appupdate/e;->a:Lcom/google/android/play/core/appupdate/f;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/appupdate/e;->a:Lcom/google/android/play/core/appupdate/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
