.class final Lcom/google/android/gms/internal/mlkit_language_id_common/eb;
.super Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field final transient c:I

.field final transient d:I

.field final synthetic e:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->c:I

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->d:I

    return-void
.end method


# virtual methods
.method final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzq;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method final c()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzq;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method final d()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Lr7/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzq;->d()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->d:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/g9;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->c:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->d:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;->zzf(II)Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->d:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/g9;->c(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->c:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;->zzf(II)Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    move-result-object p1

    return-object p1
.end method
