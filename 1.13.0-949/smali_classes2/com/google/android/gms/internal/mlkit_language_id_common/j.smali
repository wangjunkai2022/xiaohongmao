.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/j;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field private a:I

.field private final b:Lcom/google/android/gms/internal/mlkit_language_id_common/zzal;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzal;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/zzal;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/zzal;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a:I

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/mlkit_language_id_common/m;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/i;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/zzal;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/i;-><init>(ILcom/google/android/gms/internal/mlkit_language_id_common/zzal;)V

    return-object v0
.end method
