.class final Lkotlinx/coroutines/h;
.super Lkotlinx/coroutines/a;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BlockingCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B!\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0012\u0010\u0001\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\r\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/coroutines/h;",
        "T",
        "Lkotlinx/coroutines/a;",
        "",
        "state",
        "",
        "p1",
        "()Ljava/lang/Object;",
        "Ljava/lang/Thread;",
        "c",
        "Ljava/lang/Thread;",
        "blockedThread",
        "Lkotlinx/coroutines/p1;",
        "d",
        "Lkotlinx/coroutines/p1;",
        "eventLoop",
        "",
        "E0",
        "()Z",
        "isScopedCoroutine",
        "Lkotlin/coroutines/CoroutineContext;",
        "parentContext",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/p1;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Thread;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlinx/coroutines/p1;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/p1;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Thread;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/p1;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/h;->c:Ljava/lang/Thread;

    .line 3
    iput-object p3, p0, Lkotlinx/coroutines/h;->d:Lkotlinx/coroutines/p1;

    return-void
.end method


# virtual methods
.method protected E0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected T(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/h;->c:Ljava/lang/Thread;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/h;->c:Ljava/lang/Thread;

    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/b;->g(Ljava/lang/Thread;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    return-void
.end method

.method public final p1()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->d()V

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/h;->d:Lkotlinx/coroutines/p1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v2, v1, v3}, Lkotlinx/coroutines/p1;->v0(Lkotlinx/coroutines/p1;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :cond_2
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/h;->d:Lkotlinx/coroutines/p1;

    if-nez v0, :cond_3

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/p1;->z0()J

    move-result-wide v4

    .line 5
    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->i()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_8

    .line 6
    :try_start_2
    iget-object v0, p0, Lkotlinx/coroutines/h;->d:Lkotlinx/coroutines/p1;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v0, v2, v1, v3}, Lkotlinx/coroutines/p1;->q0(Lkotlinx/coroutines/p1;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->h()V

    .line 8
    :goto_4
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->y0()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/r2;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lkotlinx/coroutines/e0;

    if-eqz v1, :cond_6

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/e0;

    :cond_6
    if-nez v3, :cond_7

    return-object v0

    :cond_7
    iget-object v0, v3, Lkotlinx/coroutines/e0;->a:Ljava/lang/Throwable;

    throw v0

    .line 10
    :cond_8
    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v0

    if-nez v0, :cond_9

    move-object v0, v3

    goto :goto_5

    :cond_9
    invoke-virtual {v0, p0, v4, v5}, Lkotlinx/coroutines/b;->c(Ljava/lang/Object;J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_5
    if-nez v0, :cond_2

    invoke-static {p0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1

    .line 11
    :cond_a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/q2;->Y(Ljava/lang/Throwable;)Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_4
    iget-object v4, p0, Lkotlinx/coroutines/h;->d:Lkotlinx/coroutines/p1;

    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {v4, v2, v1, v3}, Lkotlinx/coroutines/p1;->q0(Lkotlinx/coroutines/p1;ZILjava/lang/Object;)V

    :goto_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 13
    invoke-static {}, Lkotlinx/coroutines/c;->b()Lkotlinx/coroutines/b;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v1}, Lkotlinx/coroutines/b;->h()V

    :goto_7
    throw v0
.end method
