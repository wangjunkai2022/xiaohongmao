.class public final Lcom/google/android/gms/internal/mlkit_common/d8;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/internal/mlkit_common/zzje;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/mlkit_common/zzjd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/mlkit_common/d8;)Lcom/google/android/gms/internal/mlkit_common/zzjd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/d8;->d:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/mlkit_common/d8;)Lcom/google/android/gms/internal/mlkit_common/zzje;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/d8;->b:Lcom/google/android/gms/internal/mlkit_common/zzje;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/google/android/gms/internal/mlkit_common/d8;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/d8;->c:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/google/android/gms/internal/mlkit_common/d8;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/d8;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/d8;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/d8;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/mlkit_common/zzjd;)Lcom/google/android/gms/internal/mlkit_common/d8;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/d8;->d:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/d8;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/d8;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/mlkit_common/zzje;)Lcom/google/android/gms/internal/mlkit_common/d8;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/d8;->b:Lcom/google/android/gms/internal/mlkit_common/zzje;

    return-object p0
.end method

.method public final g()Lcom/google/android/gms/internal/mlkit_common/f8;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/f8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/f8;-><init>(Lcom/google/android/gms/internal/mlkit_common/d8;Lcom/google/android/gms/internal/mlkit_common/e8;)V

    return-object v0
.end method
