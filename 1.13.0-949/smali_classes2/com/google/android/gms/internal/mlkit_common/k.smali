.class public final Lcom/google/android/gms/internal/mlkit_common/k;
.super Lcom/google/android/gms/internal/mlkit_common/i;
.source "com.google.mlkit:common@@18.4.0"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/i;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/k;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/i;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/i;

    return-object p0
.end method

.method public final d()Lcom/google/android/gms/internal/mlkit_common/zzan;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/i;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/i;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/i;->b:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzan;->h([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_common/zzan;

    move-result-object v0

    return-object v0
.end method
