.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/wa;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# static fields
.field private static a:Lcom/google/android/gms/internal/mlkit_language_id_common/wa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/internal/mlkit_language_id_common/wa;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/wa;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/wa;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/wa;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/wa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/wa;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/wa;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/wa;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/wa;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/wa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
