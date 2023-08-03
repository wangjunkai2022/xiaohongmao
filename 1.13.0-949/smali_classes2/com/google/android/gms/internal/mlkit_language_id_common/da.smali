.class public abstract Lcom/google/android/gms/internal/mlkit_language_id_common/da;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/ca;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/y9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/y9;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/y9;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/ca;

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ca;->a(Z)Lcom/google/android/gms/internal/mlkit_language_id_common/ca;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ca;->b(I)Lcom/google/android/gms/internal/mlkit_language_id_common/ca;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Z
.end method
