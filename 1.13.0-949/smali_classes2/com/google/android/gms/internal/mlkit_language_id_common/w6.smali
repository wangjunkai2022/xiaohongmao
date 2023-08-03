.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/w6;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field private a:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/mlkit_language_id_common/w6;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->a:Ljava/lang/Float;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Float;)Lcom/google/android/gms/internal/mlkit_language_id_common/w6;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->a:Ljava/lang/Float;

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/mlkit_language_id_common/y6;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/y6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/y6;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/w6;Lcom/google/android/gms/internal/mlkit_language_id_common/x6;)V

    return-object v0
.end method
