.class public final Lcom/google/android/gms/internal/mlkit_common/kc;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/jc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/jc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/jc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_common/gc;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/jc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/jc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/jc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_common/gc;)V

    return-object v0
.end method
