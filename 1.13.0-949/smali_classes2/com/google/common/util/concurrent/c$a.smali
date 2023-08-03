.class Lcom/google/common/util/concurrent/c$a;
.super Lcom/google/common/util/concurrent/i;
.source "AbstractExecutionThreadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lcom/google/common/util/concurrent/c;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/c$a;->p:Lcom/google/common/util/concurrent/c;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/c$a;->p:Lcom/google/common/util/concurrent/c;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c;->k()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/c$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/c$a$a;-><init>(Lcom/google/common/util/concurrent/c$a;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/x0;->q(Ljava/util/concurrent/Executor;Lcom/google/common/base/i0;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/common/util/concurrent/c$a$b;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/c$a$b;-><init>(Lcom/google/common/util/concurrent/c$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected o()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/c$a;->p:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c;->p()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/c$a;->p:Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
