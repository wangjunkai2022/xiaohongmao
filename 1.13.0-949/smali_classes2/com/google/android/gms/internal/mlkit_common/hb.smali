.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/hb;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/mlkit_common/kb;

.field public final synthetic b:Lcom/google/android/gms/internal/mlkit_common/ab;

.field public final synthetic c:Lcom/google/android/gms/internal/mlkit_common/zziu;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/kb;Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/android/gms/internal/mlkit_common/zziu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/hb;->a:Lcom/google/android/gms/internal/mlkit_common/kb;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/hb;->b:Lcom/google/android/gms/internal/mlkit_common/ab;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/hb;->c:Lcom/google/android/gms/internal/mlkit_common/zziu;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/hb;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/hb;->a:Lcom/google/android/gms/internal/mlkit_common/kb;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/hb;->b:Lcom/google/android/gms/internal/mlkit_common/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/hb;->c:Lcom/google/android/gms/internal/mlkit_common/zziu;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/hb;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_common/kb;->b(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/android/gms/internal/mlkit_common/zziu;Ljava/lang/String;)V

    return-void
.end method
