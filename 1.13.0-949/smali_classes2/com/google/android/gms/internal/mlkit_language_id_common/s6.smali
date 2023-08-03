.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/s6;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;

.field private final c:Ljava/lang/Boolean;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/q6;Lcom/google/android/gms/internal/mlkit_language_id_common/r6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/q6;->g(Lcom/google/android/gms/internal/mlkit_language_id_common/q6;)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/s6;->a:Ljava/lang/Long;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/q6;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/q6;)Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/s6;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/q6;->f(Lcom/google/android/gms/internal/mlkit_language_id_common/q6;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/s6;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_language_id_common/m;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/s6;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhu;

    return-object v0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_language_id_common/m;
        zza = 0x3
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/s6;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final c()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_language_id_common/m;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/s6;->a:Ljava/lang/Long;

    return-object v0
.end method
