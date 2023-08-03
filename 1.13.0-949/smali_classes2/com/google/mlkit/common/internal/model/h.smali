.class public final synthetic Lcom/google/mlkit/common/internal/model/h;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/common/internal/model/j;

.field public final synthetic b:Lcom/google/mlkit/common/model/a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/common/internal/model/j;Lcom/google/mlkit/common/model/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/internal/model/h;->a:Lcom/google/mlkit/common/internal/model/j;

    iput-object p2, p0, Lcom/google/mlkit/common/internal/model/h;->b:Lcom/google/mlkit/common/model/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/mlkit/common/internal/model/h;->a:Lcom/google/mlkit/common/internal/model/j;

    iget-object v1, p0, Lcom/google/mlkit/common/internal/model/h;->b:Lcom/google/mlkit/common/model/a;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/internal/model/j;->e(Lcom/google/mlkit/common/model/a;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
