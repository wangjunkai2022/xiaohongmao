.class public final Lcom/google/android/gms/internal/mlkit_common/v7;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/mlkit_common/zzip;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/t7;Lcom/google/android/gms/internal/mlkit_common/u7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/t7;->a(Lcom/google/android/gms/internal/mlkit_common/t7;)Lcom/google/android/gms/internal/mlkit_common/zzip;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/v7;->a:Lcom/google/android/gms/internal/mlkit_common/zzip;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/mlkit_common/zzip;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_common/g0;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/v7;->a:Lcom/google/android/gms/internal/mlkit_common/zzip;

    return-object v0
.end method
