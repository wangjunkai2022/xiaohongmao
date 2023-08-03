.class public final synthetic Lcom/google/android/gms/internal/mlkit_language_id_common/fa;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/fa;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/fa;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
