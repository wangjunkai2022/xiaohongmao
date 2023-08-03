.class Lcom/google/common/util/concurrent/k$a$a;
.super Ljava/lang/Object;
.source "AggregateFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/k$a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/common/util/concurrent/q0;

.field final synthetic c:Lcom/google/common/util/concurrent/k$a;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/k$a;ILcom/google/common/util/concurrent/q0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/k$a$a;->c:Lcom/google/common/util/concurrent/k$a;

    iput p2, p0, Lcom/google/common/util/concurrent/k$a$a;->a:I

    iput-object p3, p0, Lcom/google/common/util/concurrent/k$a$a;->b:Lcom/google/common/util/concurrent/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/k$a$a;->c:Lcom/google/common/util/concurrent/k$a;

    iget v1, p0, Lcom/google/common/util/concurrent/k$a$a;->a:I

    iget-object v2, p0, Lcom/google/common/util/concurrent/k$a$a;->b:Lcom/google/common/util/concurrent/q0;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/k$a;->j(Lcom/google/common/util/concurrent/k$a;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/k$a$a;->c:Lcom/google/common/util/concurrent/k$a;

    invoke-static {v0}, Lcom/google/common/util/concurrent/k$a;->k(Lcom/google/common/util/concurrent/k$a;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/k$a$a;->c:Lcom/google/common/util/concurrent/k$a;

    invoke-static {v1}, Lcom/google/common/util/concurrent/k$a;->k(Lcom/google/common/util/concurrent/k$a;)V

    .line 3
    throw v0
.end method
