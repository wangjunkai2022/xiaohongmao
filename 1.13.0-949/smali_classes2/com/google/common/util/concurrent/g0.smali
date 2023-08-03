.class public abstract Lcom/google/common/util/concurrent/g0;
.super Lcom/google/common/util/concurrent/c0;
.source "ForwardingListeningExecutorService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/u0;


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation build Lh3/c;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/c0;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/g0;->N()Lcom/google/common/util/concurrent/u0;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/g0;->N()Lcom/google/common/util/concurrent/u0;

    move-result-object v0

    return-object v0
.end method

.method protected abstract N()Lcom/google/common/util/concurrent/u0;
.end method

.method public submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "*>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/g0;->N()Lcom/google/common/util/concurrent/u0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/u0;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/google/common/util/concurrent/q0<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/g0;->N()Lcom/google/common/util/concurrent/u0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/u0;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcom/google/common/util/concurrent/q0<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/g0;->N()Lcom/google/common/util/concurrent/u0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/u0;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/g0;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/g0;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/g0;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    return-object p1
.end method
