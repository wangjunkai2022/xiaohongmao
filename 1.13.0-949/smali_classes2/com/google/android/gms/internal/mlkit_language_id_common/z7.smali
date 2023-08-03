.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/z7;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field private final a:Ljava/lang/Float;

.field private final b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/x7;Lcom/google/android/gms/internal/mlkit_language_id_common/y7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/x7;)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/z7;->a:Ljava/lang/Float;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/x7;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/z7;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_language_id_common/m;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/z7;->a:Ljava/lang/Float;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_language_id_common/m;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/z7;->b:Ljava/lang/String;

    return-object v0
.end method
