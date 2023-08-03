.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/cb;
.super Lcom/google/android/gms/internal/mlkit_language_id_common/ab;
.source "com.google.mlkit:language-id-common@@16.0.0"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/cb;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/ab;

    return-object p0
.end method

.method public final d()Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->b:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;->h([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_language_id_common/zzu;

    move-result-object v0

    return-object v0
.end method
