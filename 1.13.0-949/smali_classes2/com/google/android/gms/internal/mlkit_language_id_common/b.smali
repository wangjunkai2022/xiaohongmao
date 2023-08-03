.class final Lcom/google/android/gms/internal/mlkit_language_id_common/b;
.super Lcom/google/android/gms/internal/mlkit_language_id_common/zzx;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field private final transient c:Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;

.field private final transient d:[Ljava/lang/Object;

.field private final transient e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->d:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->e:I

    return-void
.end method

.method static synthetic h(Lcom/google/android/gms/internal/mlkit_language_id_common/b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->e:I

    return p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/mlkit_language_id_common/b;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->d:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzx;->zzf()Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzq;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/a;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method final e()Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/hb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/hb;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/b;)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzx;->zzf()Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;->zzj(I)Lcom/google/android/gms/internal/mlkit_language_id_common/h;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->e:I

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_language_id_common/g;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzx;->zzf()Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;->zzj(I)Lcom/google/android/gms/internal/mlkit_language_id_common/h;

    move-result-object v0

    return-object v0
.end method
