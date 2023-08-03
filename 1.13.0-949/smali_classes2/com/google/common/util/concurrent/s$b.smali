.class final Lcom/google/common/util/concurrent/s$b;
.super Lcom/google/common/util/concurrent/s$c;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/s<",
        "TV;>.c<TV;>;"
    }
.end annotation


# instance fields
.field private final h:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/common/util/concurrent/s;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/s;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/s$b;->i:Lcom/google/common/util/concurrent/s;

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/google/common/util/concurrent/s$c;-><init>(Lcom/google/common/util/concurrent/s;Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/s$b;->h:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
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
    iget-object v0, p0, Lcom/google/common/util/concurrent/s$b;->h:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/s$b;->h:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method i(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/s$b;->i:Lcom/google/common/util/concurrent/s;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/d;->M(Ljava/lang/Object;)Z

    return-void
.end method
