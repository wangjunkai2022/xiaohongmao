.class public abstract Lcom/google/common/util/concurrent/f0;
.super Lcom/google/common/util/concurrent/e0;
.source "ForwardingListenableFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/q0;


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/e0<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/q0<",
        "TV;>;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/e0;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f0;->N()Lcom/google/common/util/concurrent/q0;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f0;->N()Lcom/google/common/util/concurrent/q0;

    move-result-object v0

    return-object v0
.end method

.method protected abstract N()Lcom/google/common/util/concurrent/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;"
        }
    .end annotation
.end method

.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f0;->N()Lcom/google/common/util/concurrent/q0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
