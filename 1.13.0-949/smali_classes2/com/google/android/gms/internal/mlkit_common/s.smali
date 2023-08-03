.class final Lcom/google/android/gms/internal/mlkit_common/s;
.super Lcom/google/android/gms/internal/mlkit_common/zzaq;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private final transient c:Lcom/google/android/gms/internal/mlkit_common/zzap;

.field private final transient d:Lcom/google/android/gms/internal/mlkit_common/zzan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzap;Lcom/google/android/gms/internal/mlkit_common/zzan;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzaq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/s;->c:Lcom/google/android/gms/internal/mlkit_common/zzap;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/s;->d:Lcom/google/android/gms/internal/mlkit_common/zzan;

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/s;->d:Lcom/google/android/gms/internal/mlkit_common/zzan;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzaj;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/a;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/s;->c:Lcom/google/android/gms/internal/mlkit_common/zzap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/s;->d:Lcom/google/android/gms/internal/mlkit_common/zzan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzl(I)Lcom/google/android/gms/internal/mlkit_common/y;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/s;->c:Lcom/google/android/gms/internal/mlkit_common/zzap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_common/w;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/s;->d:Lcom/google/android/gms/internal/mlkit_common/zzan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzl(I)Lcom/google/android/gms/internal/mlkit_common/y;

    move-result-object v0

    return-object v0
.end method
