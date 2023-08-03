.class public final Lcom/google/android/gms/internal/mlkit_common/g7;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/mlkit_common/zzjd;

.field private final b:Ljava/lang/Boolean;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/e7;Lcom/google/android/gms/internal/mlkit_common/f7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/e7;->d(Lcom/google/android/gms/internal/mlkit_common/e7;)Lcom/google/android/gms/internal/mlkit_common/zzjd;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/g7;->a:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/e7;->e(Lcom/google/android/gms/internal/mlkit_common/e7;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/g7;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/mlkit_common/zzjd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_common/g0;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/g7;->a:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    return-object v0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_common/g0;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/g7;->b:Ljava/lang/Boolean;

    return-object v0
.end method
