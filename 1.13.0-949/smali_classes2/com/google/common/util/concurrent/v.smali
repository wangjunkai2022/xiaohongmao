.class public final Lcom/google/common/util/concurrent/v;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/v$e;
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/common/util/concurrent/q0<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lcom/google/common/util/concurrent/j0;->n(Ljava/lang/Object;)Lcom/google/common/util/concurrent/q0;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/v;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a()Lcom/google/common/util/concurrent/v;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/v;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/v;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/v$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/v$a;-><init>(Lcom/google/common/util/concurrent/v;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/v;->c(Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/m<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/common/util/concurrent/v$e;->a:Lcom/google/common/util/concurrent/v$e;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/v$b;

    invoke-direct {v0, p0, v4, p1}, Lcom/google/common/util/concurrent/v$b;-><init>(Lcom/google/common/util/concurrent/v;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/common/util/concurrent/m;)V

    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/e1;->R()Lcom/google/common/util/concurrent/e1;

    move-result-object v5

    .line 5
    iget-object p1, p0, Lcom/google/common/util/concurrent/v;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/google/common/util/concurrent/q0;

    .line 6
    new-instance p1, Lcom/google/common/util/concurrent/v$c;

    invoke-direct {p1, p0, v6, p2}, Lcom/google/common/util/concurrent/v$c;-><init>(Lcom/google/common/util/concurrent/v;Lcom/google/common/util/concurrent/q0;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/j0;->t(Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/common/util/concurrent/j0;->r(Lcom/google/common/util/concurrent/q0;)Lcom/google/common/util/concurrent/q0;

    move-result-object p2

    .line 9
    new-instance v7, Lcom/google/common/util/concurrent/v$d;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/v$d;-><init>(Lcom/google/common/util/concurrent/v;Lcom/google/common/util/concurrent/q0;Lcom/google/common/util/concurrent/q0;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/common/util/concurrent/e1;Lcom/google/common/util/concurrent/q0;)V

    .line 10
    invoke-static {}, Lcom/google/common/util/concurrent/x0;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p2, v7, v0}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/x0;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method
