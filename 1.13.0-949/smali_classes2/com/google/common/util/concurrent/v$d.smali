.class Lcom/google/common/util/concurrent/v$d;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/v;->c(Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/q0;

.field final synthetic b:Lcom/google/common/util/concurrent/q0;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic d:Lcom/google/common/util/concurrent/e1;

.field final synthetic e:Lcom/google/common/util/concurrent/q0;

.field final synthetic f:Lcom/google/common/util/concurrent/v;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/v;Lcom/google/common/util/concurrent/q0;Lcom/google/common/util/concurrent/q0;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/common/util/concurrent/e1;Lcom/google/common/util/concurrent/q0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/v$d;->f:Lcom/google/common/util/concurrent/v;

    iput-object p2, p0, Lcom/google/common/util/concurrent/v$d;->a:Lcom/google/common/util/concurrent/q0;

    iput-object p3, p0, Lcom/google/common/util/concurrent/v$d;->b:Lcom/google/common/util/concurrent/q0;

    iput-object p4, p0, Lcom/google/common/util/concurrent/v$d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lcom/google/common/util/concurrent/v$d;->d:Lcom/google/common/util/concurrent/e1;

    iput-object p6, p0, Lcom/google/common/util/concurrent/v$d;->e:Lcom/google/common/util/concurrent/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/v$d;->a:Lcom/google/common/util/concurrent/q0;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/v$d;->b:Lcom/google/common/util/concurrent/q0;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/v$d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/common/util/concurrent/v$e;->a:Lcom/google/common/util/concurrent/v$e;

    sget-object v2, Lcom/google/common/util/concurrent/v$e;->b:Lcom/google/common/util/concurrent/v$e;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/v$d;->d:Lcom/google/common/util/concurrent/e1;

    iget-object v1, p0, Lcom/google/common/util/concurrent/v$d;->e:Lcom/google/common/util/concurrent/q0;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/e1;->O(Lcom/google/common/util/concurrent/q0;)Z

    :cond_1
    return-void
.end method
