.class public final synthetic Lcom/google/mlkit/common/internal/model/e;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/android/gms/tasks/j;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/common/sdkinternal/model/f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/model/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/internal/model/e;->a:Lcom/google/mlkit/common/sdkinternal/model/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/k;
    .locals 0

    iget-object p1, p0, Lcom/google/mlkit/common/internal/model/e;->a:Lcom/google/mlkit/common/sdkinternal/model/f;

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/model/f;->a()Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method
