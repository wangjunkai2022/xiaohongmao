.class final Lkotlinx/coroutines/rx2/p;
.super Lkotlinx/coroutines/a;
.source "RxObservable.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/d0;
.implements Lkotlinx/coroutines/selects/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlinx/coroutines/channels/d0<",
        "TT;>;",
        "Lkotlinx/coroutines/selects/e<",
        "TT;",
        "Lkotlinx/coroutines/channels/j0<",
        "-TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxObservable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxObservable.kt\nkotlinx/coroutines/rx2/RxObservableCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,217:1\n1#2:218\n167#3:219\n*S KotlinDebug\n*F\n+ 1 RxObservable.kt\nkotlinx/coroutines/rx2/RxObservableCoroutine\n*L\n165#1:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00070\u0006B\u001d\u0012\u0006\u0010?\u001a\u00020>\u0012\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u00000.\u00a2\u0006\u0004\u0008@\u0010AJ\u0019\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0008\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J%\u0010\u0019\u001a\u00020\u00182\u0014\u0010\u0017\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00040\u0016H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ&\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001c2\u0006\u0010\u001b\u001a\u00028\u0000H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001b\u0010 \u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!JX\u0010(\u001a\u00020\u0004\"\u0004\u0008\u0001\u0010\"2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010\u001b\u001a\u00028\u00002(\u0010\'\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010&\u0012\u0006\u0012\u0004\u0018\u00010\u00010%H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010+\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008+\u0010,J\u001f\u0010-\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008-\u0010\u0012R\u001a\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u00000.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u001a\u00108\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u0014\u00109\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010:R&\u0010=\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00070\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006B"
    }
    d2 = {
        "Lkotlinx/coroutines/rx2/p;",
        "",
        "T",
        "Lkotlinx/coroutines/a;",
        "",
        "Lkotlinx/coroutines/channels/d0;",
        "Lkotlinx/coroutines/selects/e;",
        "Lkotlinx/coroutines/channels/j0;",
        "elem",
        "",
        "r1",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "w1",
        "()V",
        "cause",
        "",
        "handled",
        "s1",
        "(Ljava/lang/Throwable;Z)V",
        "v1",
        "close",
        "(Ljava/lang/Throwable;)Z",
        "Lkotlin/Function1;",
        "handler",
        "",
        "t1",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;",
        "element",
        "Lkotlinx/coroutines/channels/q;",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "trySend",
        "send",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "R",
        "Lkotlinx/coroutines/selects/f;",
        "select",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "block",
        "n",
        "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "value",
        "u1",
        "(Lkotlin/Unit;)V",
        "m1",
        "Lio/reactivex/b0;",
        "c",
        "Lio/reactivex/b0;",
        "subscriber",
        "Lkotlinx/coroutines/sync/c;",
        "d",
        "Lkotlinx/coroutines/sync/c;",
        "mutex",
        "getChannel",
        "()Lkotlinx/coroutines/channels/j0;",
        "channel",
        "isClosedForSend",
        "()Z",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/e;",
        "onSend",
        "Lkotlin/coroutines/CoroutineContext;",
        "parentContext",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Lio/reactivex/b0;)V",
        "kotlinx-coroutines-rx2"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _signal:I
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lio/reactivex/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlinx/coroutines/sync/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/rx2/p;

    const-string v1, "_signal"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/rx2/p;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lio/reactivex/b0;)V
    .locals 2
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/reactivex/b0<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/rx2/p;->c:Lio/reactivex/b0;

    const/4 p1, 0x0

    .line 3
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/sync/e;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/c;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/rx2/p;->d:Lkotlinx/coroutines/sync/c;

    .line 4
    iput v0, p0, Lkotlinx/coroutines/rx2/p;->_signal:I

    return-void
.end method

.method public static final synthetic p1(Lkotlinx/coroutines/rx2/p;Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/rx2/p;->r1(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q1(Lkotlinx/coroutines/rx2/p;)Lkotlinx/coroutines/sync/c;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/rx2/p;->d:Lkotlinx/coroutines/sync/c;

    return-object p0
.end method

.method private final r1(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->q0()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->r0()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/rx2/p;->s1(Ljava/lang/Throwable;Z)V

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->A()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/rx2/p;->c:Lio/reactivex/b0;

    invoke-interface {v0, p1}, Lio/reactivex/i;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/rx2/p;->w1()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    new-instance v0, Lio/reactivex/exceptions/UndeliverableException;

    invoke-direct {v0, p1}, Lio/reactivex/exceptions/UndeliverableException;-><init>(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/rx2/p;->close(Ljava/lang/Throwable;)Z

    move-result p1

    .line 8
    invoke-direct {p0}, Lkotlinx/coroutines/rx2/p;->w1()V

    if-eqz p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlinx/coroutines/rx2/e;->a(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->A()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final s1(Ljava/lang/Throwable;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget v2, p0, Lkotlinx/coroutines/rx2/p;->_signal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/rx2/p;->d:Lkotlinx/coroutines/sync/c;

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/sync/c$a;->d(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    :try_start_1
    iput v3, p0, Lkotlinx/coroutines/rx2/p;->_signal:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    if-nez v2, :cond_2

    .line 4
    :try_start_2
    iget-object p1, p0, Lkotlinx/coroutines/rx2/p;->c:Lio/reactivex/b0;

    invoke-interface {p1}, Lio/reactivex/i;->onComplete()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    :try_start_3
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/rx2/e;->a(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    goto :goto_1

    .line 6
    :cond_2
    instance-of v3, v2, Lio/reactivex/exceptions/UndeliverableException;

    if-eqz v3, :cond_3

    if-nez p2, :cond_3

    .line 7
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/rx2/e;->a(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->A()Ljava/util/concurrent/CancellationException;

    move-result-object p2

    if-ne v2, p2, :cond_4

    iget-object p2, p0, Lkotlinx/coroutines/rx2/p;->c:Lio/reactivex/b0;

    invoke-interface {p2}, Lio/reactivex/b0;->isDisposed()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_5

    .line 9
    :cond_4
    :try_start_4
    iget-object p2, p0, Lkotlinx/coroutines/rx2/p;->c:Lio/reactivex/b0;

    invoke-interface {p2, p1}, Lio/reactivex/i;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p2

    .line 10
    :try_start_5
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/rx2/e;->a(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 12
    :cond_5
    :goto_1
    iget-object p1, p0, Lkotlinx/coroutines/rx2/p;->d:Lkotlinx/coroutines/sync/c;

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/sync/c$a;->d(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lkotlinx/coroutines/rx2/p;->d:Lkotlinx/coroutines/sync/c;

    invoke-static {p2, v1, v0, v1}, Lkotlinx/coroutines/sync/c$a;->d(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)V

    throw p1
.end method

.method private final v1(Ljava/lang/Throwable;Z)V
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/rx2/p;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/rx2/p;->d:Lkotlinx/coroutines/sync/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/sync/c$a;->c(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/rx2/p;->s1(Ljava/lang/Throwable;Z)V

    :cond_1
    return-void
.end method

.method private final w1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx2/p;->d:Lkotlinx/coroutines/sync/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/c$a;->d(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/rx2/p;->d:Lkotlinx/coroutines/sync/c;

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/c$a;->c(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->q0()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->r0()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/rx2/p;->s1(Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/q2;->Y(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getChannel()Lkotlinx/coroutines/channels/j0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/j0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    return-object p0
.end method

.method public getOnSend()Lkotlinx/coroutines/selects/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/e<",
            "TT;",
            "Lkotlinx/coroutines/channels/j0<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    return-object p0
.end method

.method public bridge synthetic invokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx2/p;->t1(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;

    return-void
.end method

.method public isClosedForSend()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/a;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected m1(Ljava/lang/Throwable;Z)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/rx2/p;->v1(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public n(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .param p1    # Lkotlinx/coroutines/selects/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;TT;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/channels/j0<",
            "-TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/rx2/p$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lkotlinx/coroutines/rx2/p$b;-><init>(Lkotlinx/coroutines/rx2/p;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object v4, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v5, Lkotlinx/coroutines/rx2/p$a;

    invoke-direct {v5, p0, p1, v0, v1}, Lkotlinx/coroutines/rx2/p$a;-><init>(Lkotlinx/coroutines/rx2/p;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public bridge synthetic n1(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx2/p;->u1(Lkotlin/Unit;)V

    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/d0$a;->a(Lkotlinx/coroutines/channels/d0;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/rx2/p$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/rx2/p$c;

    iget v1, v0, Lkotlinx/coroutines/rx2/p$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/rx2/p$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/rx2/p$c;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/rx2/p$c;-><init>(Lkotlinx/coroutines/rx2/p;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/rx2/p$c;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/rx2/p$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lkotlinx/coroutines/rx2/p$c;->b:Ljava/lang/Object;

    iget-object v0, v0, Lkotlinx/coroutines/rx2/p$c;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/rx2/p;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lkotlinx/coroutines/rx2/p;->d:Lkotlinx/coroutines/sync/c;

    iput-object p0, v0, Lkotlinx/coroutines/rx2/p$c;->a:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/rx2/p$c;->b:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/rx2/p$c;->e:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v3, v2}, Lkotlinx/coroutines/sync/c$a;->b(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    invoke-direct {v0, p1}, Lkotlinx/coroutines/rx2/p;->r1(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 7
    :cond_4
    throw p1
.end method

.method public t1(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RxObservableCoroutine doesn\'t support invokeOnClose"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx2/p;->d:Lkotlinx/coroutines/sync/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/c$a;->c(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/q$b;->b()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/rx2/p;->r1(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/channels/q$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/q$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected u1(Lkotlin/Unit;)V
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/rx2/p;->v1(Ljava/lang/Throwable;Z)V

    return-void
.end method
