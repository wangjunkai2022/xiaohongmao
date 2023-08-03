.class final Lcom/google/android/gms/internal/mlkit_common/r;
.super Lcom/google/android/gms/internal/mlkit_common/zzaq;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private final transient c:Lcom/google/android/gms/internal/mlkit_common/zzap;

.field private final transient d:[Ljava/lang/Object;

.field private final transient e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzap;[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzaq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/r;->c:Lcom/google/android/gms/internal/mlkit_common/zzap;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/r;->d:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_common/r;->e:I

    return-void
.end method

.method static synthetic h(Lcom/google/android/gms/internal/mlkit_common/r;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/r;->e:I

    return p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/mlkit_common/r;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/r;->d:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzf()Lcom/google/android/gms/internal/mlkit_common/zzan;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzaj;->a([Ljava/lang/Object;I)I

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

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/r;->c:Lcom/google/android/gms/internal/mlkit_common/zzap;

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method final e()Lcom/google/android/gms/internal/mlkit_common/zzan;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/q;-><init>(Lcom/google/android/gms/internal/mlkit_common/r;)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzf()Lcom/google/android/gms/internal/mlkit_common/zzan;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzl(I)Lcom/google/android/gms/internal/mlkit_common/y;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/r;->e:I

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_common/w;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzf()Lcom/google/android/gms/internal/mlkit_common/zzan;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzl(I)Lcom/google/android/gms/internal/mlkit_common/y;

    move-result-object v0

    return-object v0
.end method
