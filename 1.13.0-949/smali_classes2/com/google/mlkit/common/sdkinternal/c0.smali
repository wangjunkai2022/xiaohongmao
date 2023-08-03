.class public final synthetic Lcom/google/mlkit/common/sdkinternal/c0;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/common/sdkinternal/n;

.field public final synthetic b:Lcom/google/android/gms/tasks/l;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/n;Lcom/google/android/gms/tasks/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/c0;->a:Lcom/google/mlkit/common/sdkinternal/n;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/c0;->b:Lcom/google/android/gms/tasks/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/c0;->a:Lcom/google/mlkit/common/sdkinternal/n;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/c0;->b:Lcom/google/android/gms/tasks/l;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/n;->i(Lcom/google/android/gms/tasks/l;)V

    return-void
.end method
