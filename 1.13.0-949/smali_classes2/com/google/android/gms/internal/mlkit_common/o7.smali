.class public final Lcom/google/android/gms/internal/mlkit_common/o7;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/mlkit_common/zzjd;

.field private b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/mlkit_common/o7;)Lcom/google/android/gms/internal/mlkit_common/zzjd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/o7;->a:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/mlkit_common/o7;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/o7;->b:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/o7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/o7;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/mlkit_common/zzjd;)Lcom/google/android/gms/internal/mlkit_common/o7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/o7;->a:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/mlkit_common/q7;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/q7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/q7;-><init>(Lcom/google/android/gms/internal/mlkit_common/o7;Lcom/google/android/gms/internal/mlkit_common/p7;)V

    return-object v0
.end method
