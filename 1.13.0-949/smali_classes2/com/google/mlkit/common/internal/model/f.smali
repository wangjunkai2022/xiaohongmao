.class public final synthetic Lcom/google/mlkit/common/internal/model/f;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/common/internal/model/j;

.field public final synthetic b:Lcom/google/mlkit/common/model/a;

.field public final synthetic c:Lcom/google/android/gms/tasks/l;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/common/internal/model/j;Lcom/google/mlkit/common/model/a;Lcom/google/android/gms/tasks/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/internal/model/f;->a:Lcom/google/mlkit/common/internal/model/j;

    iput-object p2, p0, Lcom/google/mlkit/common/internal/model/f;->b:Lcom/google/mlkit/common/model/a;

    iput-object p3, p0, Lcom/google/mlkit/common/internal/model/f;->c:Lcom/google/android/gms/tasks/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/common/internal/model/f;->a:Lcom/google/mlkit/common/internal/model/j;

    iget-object v1, p0, Lcom/google/mlkit/common/internal/model/f;->b:Lcom/google/mlkit/common/model/a;

    iget-object v2, p0, Lcom/google/mlkit/common/internal/model/f;->c:Lcom/google/android/gms/tasks/l;

    invoke-virtual {v0, v1, v2}, Lcom/google/mlkit/common/internal/model/j;->f(Lcom/google/mlkit/common/model/a;Lcom/google/android/gms/tasks/l;)V

    return-void
.end method
