.class Lcom/google/common/util/concurrent/h$e$b;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/h$e;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/h$e;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/h$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    invoke-static {v0}, Lcom/google/common/util/concurrent/h$e;->z(Lcom/google/common/util/concurrent/h$e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    iget-object v0, v0, Lcom/google/common/util/concurrent/h$e;->t:Lcom/google/common/util/concurrent/h;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/h;->q()V

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    iget-object v1, v0, Lcom/google/common/util/concurrent/h$e;->t:Lcom/google/common/util/concurrent/h;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/h;->n()Lcom/google/common/util/concurrent/h$d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    iget-object v2, v2, Lcom/google/common/util/concurrent/h$e;->t:Lcom/google/common/util/concurrent/h;

    invoke-static {v2}, Lcom/google/common/util/concurrent/h;->k(Lcom/google/common/util/concurrent/h;)Lcom/google/common/util/concurrent/i;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    invoke-static {v3}, Lcom/google/common/util/concurrent/h$e;->C(Lcom/google/common/util/concurrent/h$e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    invoke-static {v4}, Lcom/google/common/util/concurrent/h$e;->D(Lcom/google/common/util/concurrent/h$e;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/util/concurrent/h$d;->c(Lcom/google/common/util/concurrent/i;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/h$e;->B(Lcom/google/common/util/concurrent/h$e;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/i;->u(Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    invoke-static {v0}, Lcom/google/common/util/concurrent/h$e;->A(Lcom/google/common/util/concurrent/h$e;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    invoke-static {v0}, Lcom/google/common/util/concurrent/h$e;->A(Lcom/google/common/util/concurrent/h$e;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    invoke-static {v0}, Lcom/google/common/util/concurrent/h$e;->z(Lcom/google/common/util/concurrent/h$e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/h$e$b;->a:Lcom/google/common/util/concurrent/h$e;

    invoke-static {v1}, Lcom/google/common/util/concurrent/h$e;->z(Lcom/google/common/util/concurrent/h$e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw v0
.end method
