.class public final Lcom/google/android/gms/internal/mlkit_common/d0;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private a:I

.field private final b:Lcom/google/android/gms/internal/mlkit_common/zzbi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzbi;->zza:Lcom/google/android/gms/internal/mlkit_common/zzbi;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/d0;->b:Lcom/google/android/gms/internal/mlkit_common/zzbi;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/mlkit_common/d0;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/d0;->a:I

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/mlkit_common/g0;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/c0;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/d0;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/d0;->b:Lcom/google/android/gms/internal/mlkit_common/zzbi;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/c0;-><init>(ILcom/google/android/gms/internal/mlkit_common/zzbi;)V

    return-object v0
.end method
