.class public abstract Lcom/google/android/gms/internal/mlkit_common/mb;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h()Lcom/google/android/gms/internal/mlkit_common/lb;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/xa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/xa;-><init>()V

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/xa;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/lb;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/lb;->f(Z)Lcom/google/android/gms/internal/mlkit_common/lb;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/lb;->e(Z)Lcom/google/android/gms/internal/mlkit_common/lb;

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/ModelType;->UNKNOWN:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/lb;->d(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/lb;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzit;->zza:Lcom/google/android/gms/internal/mlkit_common/zzit;

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/lb;->b(Lcom/google/android/gms/internal/mlkit_common/zzit;)Lcom/google/android/gms/internal/mlkit_common/lb;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zziz;->zza:Lcom/google/android/gms/internal/mlkit_common/zziz;

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_common/lb;->a(Lcom/google/android/gms/internal/mlkit_common/zziz;)Lcom/google/android/gms/internal/mlkit_common/lb;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/lb;->c(I)Lcom/google/android/gms/internal/mlkit_common/lb;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Lcom/google/mlkit/common/sdkinternal/ModelType;
.end method

.method public abstract c()Lcom/google/android/gms/internal/mlkit_common/zzit;
.end method

.method public abstract d()Lcom/google/android/gms/internal/mlkit_common/zziz;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method
