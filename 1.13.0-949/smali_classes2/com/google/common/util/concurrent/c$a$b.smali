.class Lcom/google/common/util/concurrent/c$a$b;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/c$a;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/c$a;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/c$a$b;->a:Lcom/google/common/util/concurrent/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/c$a$b;->a:Lcom/google/common/util/concurrent/c$a;

    iget-object v0, v0, Lcom/google/common/util/concurrent/c$a;->p:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c;->o()V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/c$a$b;->a:Lcom/google/common/util/concurrent/c$a;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->v()V

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/c$a$b;->a:Lcom/google/common/util/concurrent/c$a;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->isRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/c$a$b;->a:Lcom/google/common/util/concurrent/c$a;

    iget-object v0, v0, Lcom/google/common/util/concurrent/c$a;->p:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5
    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/c$a$b;->a:Lcom/google/common/util/concurrent/c$a;

    iget-object v1, v1, Lcom/google/common/util/concurrent/c$a;->p:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/c;->n()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    :try_start_3
    invoke-static {}, Lcom/google/common/util/concurrent/c;->j()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/c$a$b;->a:Lcom/google/common/util/concurrent/c$a;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/i;->u(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/c$a$b;->a:Lcom/google/common/util/concurrent/c$a;

    iget-object v0, v0, Lcom/google/common/util/concurrent/c$a;->p:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c;->n()V

    .line 9
    iget-object v0, p0, Lcom/google/common/util/concurrent/c$a$b;->a:Lcom/google/common/util/concurrent/c$a;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->w()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 10
    iget-object v1, p0, Lcom/google/common/util/concurrent/c$a$b;->a:Lcom/google/common/util/concurrent/c$a;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/i;->u(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
