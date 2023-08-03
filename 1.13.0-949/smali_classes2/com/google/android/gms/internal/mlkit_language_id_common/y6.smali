.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/y6;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# instance fields
.field private final a:Ljava/lang/Float;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/w6;Lcom/google/android/gms/internal/mlkit_language_id_common/x6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/w6;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/y6;->a:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/internal/mlkit_language_id_common/m;
        zza = 0x3
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/y6;->a:Ljava/lang/Float;

    return-object v0
.end method
