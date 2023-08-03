.class Lcom/google/common/util/concurrent/p0$a;
.super Lcom/google/common/util/concurrent/e0;
.source "JdkFutureAdapters.java"

# interfaces
.implements Lcom/google/common/util/concurrent/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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


# static fields
.field private static final e:Ljava/util/concurrent/ThreadFactory;

.field private static final f:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/common/util/concurrent/u;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/i1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/i1;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/i1;->e(Z)Lcom/google/common/util/concurrent/i1;

    move-result-object v0

    const-string v1, "ListenableFutureAdapter-thread-%d"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/i1;->f(Ljava/lang/String;)Lcom/google/common/util/concurrent/i1;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i1;->b()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/p0$a;->e:Ljava/util/concurrent/ThreadFactory;

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/p0$a;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/p0$a;->f:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/p0$a;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/e0;-><init>()V

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/u;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/u;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/p0$a;->b:Lcom/google/common/util/concurrent/u;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/p0$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    iput-object p1, p0, Lcom/google/common/util/concurrent/p0$a;->d:Ljava/util/concurrent/Future;

    .line 6
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/p0$a;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic N(Lcom/google/common/util/concurrent/p0$a;)Ljava/util/concurrent/Future;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/p0$a;->d:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static synthetic O(Lcom/google/common/util/concurrent/p0$a;)Lcom/google/common/util/concurrent/u;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/p0$a;->b:Lcom/google/common/util/concurrent/u;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/p0$a;->M()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected M()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$a;->d:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$a;->b:Lcom/google/common/util/concurrent/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/u;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2
    iget-object p1, p0, Lcom/google/common/util/concurrent/p0$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/common/util/concurrent/p0$a;->d:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/common/util/concurrent/p0$a;->b:Lcom/google/common/util/concurrent/u;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/u;->b()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/p0$a;->a:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/common/util/concurrent/p0$a$a;

    invoke-direct {p2, p0}, Lcom/google/common/util/concurrent/p0$a$a;-><init>(Lcom/google/common/util/concurrent/p0$a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
