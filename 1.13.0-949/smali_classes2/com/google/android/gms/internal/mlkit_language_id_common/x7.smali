.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/x7;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field private a:Ljava/lang/Float;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/mlkit_language_id_common/x7;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;->a:Ljava/lang/Float;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/mlkit_language_id_common/x7;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/x7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;->a:Ljava/lang/Float;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/x7;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/x7;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/mlkit_language_id_common/z7;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/z7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/z7;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/x7;Lcom/google/android/gms/internal/mlkit_language_id_common/y7;)V

    return-object v0
.end method
