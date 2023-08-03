.class final Lcom/google/common/util/concurrent/s;
.super Lcom/google/common/util/concurrent/k;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/s$b;,
        Lcom/google/common/util/concurrent/s$a;,
        Lcom/google/common/util/concurrent/s$c;,
        Lcom/google/common/util/concurrent/s$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/k<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/q0<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/m<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/k;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/s$d;

    new-instance v1, Lcom/google/common/util/concurrent/s$a;

    invoke-direct {v1, p0, p4, p3}, Lcom/google/common/util/concurrent/s$a;-><init>(Lcom/google/common/util/concurrent/s;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/util/concurrent/s$d;-><init>(Lcom/google/common/util/concurrent/s;Lcom/google/common/collect/ImmutableCollection;ZLcom/google/common/util/concurrent/s$c;)V

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/k;->V(Lcom/google/common/util/concurrent/k$a;)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/q0<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/common/util/concurrent/k;-><init>()V

    .line 4
    new-instance v0, Lcom/google/common/util/concurrent/s$d;

    new-instance v1, Lcom/google/common/util/concurrent/s$b;

    invoke-direct {v1, p0, p4, p3}, Lcom/google/common/util/concurrent/s$b;-><init>(Lcom/google/common/util/concurrent/s;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/util/concurrent/s$d;-><init>(Lcom/google/common/util/concurrent/s;Lcom/google/common/collect/ImmutableCollection;ZLcom/google/common/util/concurrent/s$c;)V

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/k;->V(Lcom/google/common/util/concurrent/k$a;)V

    return-void
.end method
