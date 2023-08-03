.class public final synthetic Lcom/google/android/gms/internal/mlkit_language_id_common/la;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/f;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/ma;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/la;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/la;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/la;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

    iget-wide v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/la;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ma;->b(JLjava/lang/Exception;)V

    return-void
.end method
