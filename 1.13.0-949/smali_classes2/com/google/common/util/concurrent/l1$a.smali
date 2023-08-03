.class final Lcom/google/common/util/concurrent/l1$a;
.super Lcom/google/common/util/concurrent/o0;
.source "TrustedListenableFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/o0<",
        "Lcom/google/common/util/concurrent/q0<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/common/util/concurrent/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/m<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/google/common/util/concurrent/l1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/l1;Lcom/google/common/util/concurrent/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/l1$a;->f:Lcom/google/common/util/concurrent/l1;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/o0;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/m;

    iput-object p1, p0, Lcom/google/common/util/concurrent/l1$a;->e:Lcom/google/common/util/concurrent/m;

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/q0;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/l1$a;->h(Lcom/google/common/util/concurrent/q0;Ljava/lang/Throwable;)V

    return-void
.end method

.method final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/l1$a;->f:Lcom/google/common/util/concurrent/l1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/x$a;->isDone()Z

    move-result v0

    return v0
.end method

.method bridge synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/l1$a;->i()Lcom/google/common/util/concurrent/q0;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/l1$a;->e:Lcom/google/common/util/concurrent/m;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h(Lcom/google/common/util/concurrent/q0;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/google/common/util/concurrent/l1$a;->f:Lcom/google/common/util/concurrent/l1;

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/d;->O(Lcom/google/common/util/concurrent/q0;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/l1$a;->f:Lcom/google/common/util/concurrent/l1;

    invoke-virtual {p1, p2}, Lcom/google/common/util/concurrent/d;->N(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method i()Lcom/google/common/util/concurrent/q0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/l1$a;->e:Lcom/google/common/util/concurrent/m;

    .line 2
    invoke-interface {v0}, Lcom/google/common/util/concurrent/m;->call()Lcom/google/common/util/concurrent/q0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/l1$a;->e:Lcom/google/common/util/concurrent/m;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/google/common/base/a0;->V(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/q0;

    return-object v0
.end method
