.class final Lcom/google/android/gms/internal/mlkit_language_id_common/c;
.super Lcom/google/android/gms/internal/mlkit_language_id_common/zzx;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field private final transient c:Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;

.field private final transient d:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/c;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/c;->d:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/c;->d:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzq;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/a;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/c;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/c;->d:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;->zzj(I)Lcom/google/android/gms/internal/mlkit_language_id_common/h;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/c;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_language_id_common/g;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/c;->d:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;->zzj(I)Lcom/google/android/gms/internal/mlkit_language_id_common/h;

    move-result-object v0

    return-object v0
.end method
