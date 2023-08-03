.class public final Lcom/giphy/sdk/core/threading/a$a;
.super Ljava/lang/Object;
.source "ApiTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/core/threading/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\nR\u0017\u0010\r\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000e\u0010\nR\u001a\u0010\u0010\u001a\u00020\u000f8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/giphy/sdk/core/threading/a$a;",
        "",
        "Ljava/util/concurrent/ExecutorService;",
        "c",
        "Ljava/util/concurrent/Executor;",
        "b",
        "",
        "CPU_COUNT",
        "I",
        "a",
        "()I",
        "THREAD_POOL_CORE_SIZE",
        "d",
        "THREAD_POOL_MAX_SIZE",
        "f",
        "",
        "THREAD_POOL_KEEP_ALIVE_TIME",
        "J",
        "e",
        "()J",
        "COMPLETION_EXECUTOR",
        "Ljava/util/concurrent/Executor;",
        "NETWORK_REQUEST_EXECUTOR",
        "Ljava/util/concurrent/ExecutorService;",
        "<init>",
        "()V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/core/threading/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-static {}, Lcom/giphy/sdk/core/threading/a;->b()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/util/concurrent/Executor;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-static {}, Lcom/giphy/sdk/core/threading/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/giphy/sdk/core/threading/b;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/giphy/sdk/core/threading/b;-><init>(Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/giphy/sdk/core/threading/a;->i(Ljava/util/concurrent/Executor;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/giphy/sdk/core/threading/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c()Ljava/util/concurrent/ExecutorService;
    .locals 8
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-static {}, Lcom/giphy/sdk/core/threading/a;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {p0}, Lcom/giphy/sdk/core/threading/a$a;->d()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/giphy/sdk/core/threading/a$a;->f()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Lcom/giphy/sdk/core/threading/a$a;->e()J

    move-result-wide v4

    .line 6
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-static {v0}, Lcom/giphy/sdk/core/threading/a;->j(Ljava/util/concurrent/ExecutorService;)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/giphy/sdk/core/threading/a;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final d()I
    .locals 1

    invoke-static {}, Lcom/giphy/sdk/core/threading/a;->f()I

    move-result v0

    return v0
.end method

.method public final e()J
    .locals 2

    invoke-static {}, Lcom/giphy/sdk/core/threading/a;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 1

    invoke-static {}, Lcom/giphy/sdk/core/threading/a;->h()I

    move-result v0

    return v0
.end method
