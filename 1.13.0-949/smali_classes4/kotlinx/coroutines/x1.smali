.class public final Lkotlinx/coroutines/x1;
.super Ljava/lang/Object;
.source "Executors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\n\u0010\u0008\u001a\u00020\u0004*\u00020\u0005*\u0010\u0008\u0007\u0010\n\"\u00020\u00012\u00020\u0001B\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Ljava/util/concurrent/ExecutorService;",
        "Lkotlinx/coroutines/v1;",
        "d",
        "(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/v1;",
        "Ljava/util/concurrent/Executor;",
        "Lkotlinx/coroutines/n0;",
        "c",
        "(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/n0;",
        "b",
        "Lkotlinx/coroutines/y1;",
        "CloseableCoroutineDispatcher",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static synthetic a()V
    .locals 0
    .annotation build Lkotlinx/coroutines/y1;
    .end annotation

    return-void
.end method

.method public static final b(Lkotlinx/coroutines/n0;)Ljava/util/concurrent/Executor;
    .locals 2
    .param p0    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/v1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/v1;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/v1;->p0()Ljava/util/concurrent/Executor;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Lkotlinx/coroutines/h1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/h1;-><init>(Lkotlinx/coroutines/n0;)V

    :cond_2
    return-object v1
.end method

.method public static final c(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/n0;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "from"
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    instance-of v0, p0, Lkotlinx/coroutines/h1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/h1;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lkotlinx/coroutines/h1;->a:Lkotlinx/coroutines/n0;

    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Lkotlinx/coroutines/w1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/w1;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object v1
.end method

.method public static final d(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/v1;
    .locals 1
    .param p0    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "from"
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/w1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/w1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
