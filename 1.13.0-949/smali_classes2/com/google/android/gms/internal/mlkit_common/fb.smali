.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/fb;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/mlkit_common/kb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/kb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/fb;->a:Lcom/google/android/gms/internal/mlkit_common/kb;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/fb;->a:Lcom/google/android/gms/internal/mlkit_common/kb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/kb;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
