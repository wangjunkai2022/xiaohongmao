.class public abstract Lcom/google/android/gms/internal/mlkit_common/db;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/cb;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/ua;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/ua;-><init>()V

    const-string v0, "common"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/ua;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/cb;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/cb;->a(Z)Lcom/google/android/gms/internal/mlkit_common/cb;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/cb;->b(I)Lcom/google/android/gms/internal/mlkit_common/cb;

    return-object p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Z
.end method
