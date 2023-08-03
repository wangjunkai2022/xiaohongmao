.class final Lcom/google/common/util/concurrent/s$a;
.super Lcom/google/common/util/concurrent/s$c;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/s<",
        "TV;>.c<",
        "Lcom/google/common/util/concurrent/q0<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final h:Lcom/google/common/util/concurrent/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/m<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/common/util/concurrent/s;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/s;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/s$a;->i:Lcom/google/common/util/concurrent/s;

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/google/common/util/concurrent/s$c;-><init>(Lcom/google/common/util/concurrent/s;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/m;

    iput-object p1, p0, Lcom/google/common/util/concurrent/s$a;->h:Lcom/google/common/util/concurrent/m;

    return-void
.end method


# virtual methods
.method bridge synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/s$a;->j()Lcom/google/common/util/concurrent/q0;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/s$a;->h:Lcom/google/common/util/concurrent/m;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic i(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/q0;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/s$a;->k(Lcom/google/common/util/concurrent/q0;)V

    return-void
.end method

.method j()Lcom/google/common/util/concurrent/q0;
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

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/s$c;->f:Z

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/s$a;->h:Lcom/google/common/util/concurrent/m;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/m;->call()Lcom/google/common/util/concurrent/q0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/s$a;->h:Lcom/google/common/util/concurrent/m;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/a0;->V(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/q0;

    return-object v0
.end method

.method k(Lcom/google/common/util/concurrent/q0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/s$a;->i:Lcom/google/common/util/concurrent/s;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/d;->O(Lcom/google/common/util/concurrent/q0;)Z

    return-void
.end method
