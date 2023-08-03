.class public final synthetic Lcom/google/mlkit/common/sdkinternal/v;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/common/sdkinternal/c;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/gms/internal/mlkit_common/kb;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/c;ILcom/google/android/gms/internal/mlkit_common/kb;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/v;->a:Lcom/google/mlkit/common/sdkinternal/c;

    iput p2, p0, Lcom/google/mlkit/common/sdkinternal/v;->b:I

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/v;->c:Lcom/google/android/gms/internal/mlkit_common/kb;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/v;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/v;->a:Lcom/google/mlkit/common/sdkinternal/c;

    iget v1, p0, Lcom/google/mlkit/common/sdkinternal/v;->b:I

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/v;->c:Lcom/google/android/gms/internal/mlkit_common/kb;

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/v;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mlkit/common/sdkinternal/c;->a(ILcom/google/android/gms/internal/mlkit_common/kb;Ljava/lang/Runnable;)V

    return-void
.end method
