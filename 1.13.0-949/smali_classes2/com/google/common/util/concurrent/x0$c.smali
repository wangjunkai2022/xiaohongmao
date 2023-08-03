.class final Lcom/google/common/util/concurrent/x0$c;
.super Lcom/google/common/util/concurrent/o1;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/x0;->r(Ljava/util/concurrent/ExecutorService;Lcom/google/common/base/i0;)Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/base/i0;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/common/base/i0;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/util/concurrent/x0$c;->b:Lcom/google/common/base/i0;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/o1;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/x0$c;->b:Lcom/google/common/base/i0;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/p;->d(Ljava/lang/Runnable;Lcom/google/common/base/i0;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/x0$c;->b:Lcom/google/common/base/i0;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/p;->e(Ljava/util/concurrent/Callable;Lcom/google/common/base/i0;)Ljava/util/concurrent/Callable;

    move-result-object p1

    return-object p1
.end method
