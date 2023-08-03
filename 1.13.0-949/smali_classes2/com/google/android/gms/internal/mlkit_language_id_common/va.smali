.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/va;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# static fields
.field private static a:Lcom/google/android/gms/internal/mlkit_language_id_common/ua;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static declared-synchronized a(Lcom/google/android/gms/internal/mlkit_language_id_common/da;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/ta;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/mlkit/common/sdkinternal/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/da;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/ca;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ca;->c()Lcom/google/android/gms/internal/mlkit_language_id_common/da;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->a(Lcom/google/android/gms/internal/mlkit_language_id_common/da;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
