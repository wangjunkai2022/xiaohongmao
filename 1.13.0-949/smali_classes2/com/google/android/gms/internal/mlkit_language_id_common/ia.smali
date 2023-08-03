.class public final synthetic Lcom/google/android/gms/internal/mlkit_language_id_common/ia;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

.field public final synthetic b:Lcom/google/android/gms/internal/mlkit_language_id_common/ba;

.field public final synthetic c:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/ba;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ia;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ia;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/ba;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ia;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ia;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ia;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ia;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/ba;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ia;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ia;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->b(Lcom/google/android/gms/internal/mlkit_language_id_common/ba;Lcom/google/android/gms/internal/mlkit_language_id_common/zzhv;Ljava/lang/String;)V

    return-void
.end method
