.class final Lcom/google/common/util/concurrent/j$a;
.super Lcom/google/common/util/concurrent/j;
.source "AbstractTransformFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/j<",
        "TI;TO;",
        "Lcom/google/common/util/concurrent/n<",
        "-TI;+TO;>;",
        "Lcom/google/common/util/concurrent/q0<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/q0;Lcom/google/common/util/concurrent/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/q0<",
            "+TI;>;",
            "Lcom/google/common/util/concurrent/n<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/j;-><init>(Lcom/google/common/util/concurrent/q0;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/google/common/util/concurrent/n;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/j$a;->c0(Lcom/google/common/util/concurrent/n;Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic b0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/q0;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/j$a;->d0(Lcom/google/common/util/concurrent/q0;)V

    return-void
.end method

.method c0(Lcom/google/common/util/concurrent/n;Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/n<",
            "-TI;+TO;>;TI;)",
            "Lcom/google/common/util/concurrent/q0<",
            "+TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lcom/google/common/util/concurrent/n;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 2
    invoke-static {p2, v0, p1}, Lcom/google/common/base/a0;->V(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method d0(Lcom/google/common/util/concurrent/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/q0<",
            "+TO;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/d;->O(Lcom/google/common/util/concurrent/q0;)Z

    return-void
.end method
