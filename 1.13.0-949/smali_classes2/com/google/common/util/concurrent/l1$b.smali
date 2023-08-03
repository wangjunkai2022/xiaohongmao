.class final Lcom/google/common/util/concurrent/l1$b;
.super Lcom/google/common/util/concurrent/o0;
.source "TrustedListenableFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/o0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/google/common/util/concurrent/l1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/l1;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/l1$b;->f:Lcom/google/common/util/concurrent/l1;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/o0;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/l1$b;->e:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/google/common/util/concurrent/l1$b;->f:Lcom/google/common/util/concurrent/l1;

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/d;->M(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/l1$b;->f:Lcom/google/common/util/concurrent/l1;

    invoke-virtual {p1, p2}, Lcom/google/common/util/concurrent/d;->N(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/l1$b;->f:Lcom/google/common/util/concurrent/l1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/x$a;->isDone()Z

    move-result v0

    return v0
.end method

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

    iget-object v0, p0, Lcom/google/common/util/concurrent/l1$b;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/l1$b;->e:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
