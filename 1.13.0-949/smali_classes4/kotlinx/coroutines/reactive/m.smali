.class public final Lkotlinx/coroutines/reactive/m;
.super Lkotlinx/coroutines/a;
.source "Publish.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/d0;
.implements Lorg/reactivestreams/e;
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
        "Lorg/reactivestreams/e;",
        "Lkotlinx/coroutines/selects/e<",
        "TT;",
        "Lkotlinx/coroutines/channels/j0<",
        "-TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublish.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Publish.kt\nkotlinx/coroutines/reactive/PublisherCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,329:1\n1#2:330\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0007\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u00020\u00052\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00070\u0006B7\u0012\u0006\u0010I\u001a\u000207\u0012\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u000003\u0012\u0018\u0010:\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u00030%\u00a2\u0006\u0004\u0008J\u0010KJ\u0019\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0008\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J%\u0010\u0019\u001a\u00020\u00182\u0014\u0010\u0017\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00030\u0016H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ&\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001c2\u0006\u0010\u001b\u001a\u00028\u0000H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001b\u0010 \u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!JX\u0010)\u001a\u00020\u0003\"\u0004\u0008\u0001\u0010\"2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010\u001b\u001a\u00028\u00002(\u0010(\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010&\u0012\u0006\u0012\u0004\u0018\u00010\'0%H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*J\u0017\u0010,\u001a\u00020\u00032\u0006\u0010)\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010/\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008/\u00100J\u001f\u00101\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u00081\u0010\u0012J\u000f\u00102\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u00082\u0010\rR\u001a\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u0000038\u0008X\u0088\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R&\u0010:\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u00030%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010?\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u001a\u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010BR\u0014\u0010D\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010ER&\u0010H\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00070\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010G\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006L"
    }
    d2 = {
        "Lkotlinx/coroutines/reactive/m;",
        "T",
        "Lkotlinx/coroutines/a;",
        "",
        "Lkotlinx/coroutines/channels/d0;",
        "Lorg/reactivestreams/e;",
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
        "",
        "block",
        "n",
        "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "",
        "request",
        "(J)V",
        "value",
        "u1",
        "(Lkotlin/Unit;)V",
        "m1",
        "cancel",
        "Lorg/reactivestreams/d;",
        "c",
        "Lorg/reactivestreams/d;",
        "subscriber",
        "Lkotlin/coroutines/CoroutineContext;",
        "d",
        "Lkotlin/jvm/functions/Function2;",
        "exceptionOnCancelHandler",
        "Lkotlinx/coroutines/sync/c;",
        "e",
        "Lkotlinx/coroutines/sync/c;",
        "mutex",
        "cancelled",
        "Z",
        "getChannel",
        "()Lkotlinx/coroutines/channels/j0;",
        "channel",
        "isClosedForSend",
        "()Z",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/e;",
        "onSend",
        "parentContext",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Lorg/reactivestreams/d;Lkotlin/jvm/functions/Function2;)V",
        "kotlinx-coroutines-reactive"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation build Lkotlinx/coroutines/e2;
.end annotation


# static fields
.field private static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile synthetic _nRequested:J
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lorg/reactivestreams/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile cancelled:Z

.field private final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lkotlinx/coroutines/sync/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/reactive/m;

    const-string v1, "_nRequested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/reactive/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lorg/reactivestreams/d;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lorg/reactivestreams/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lorg/reactivestreams/d<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/reactive/m;->c:Lorg/reactivestreams/d;

    .line 3
    iput-object p3, p0, Lkotlinx/coroutines/reactive/m;->d:Lkotlin/jvm/functions/Function2;

    .line 4
    invoke-static {v1}, Lkotlinx/coroutines/sync/e;->a(Z)Lkotlinx/coroutines/sync/c;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/reactive/m;->e:Lkotlinx/coroutines/sync/c;

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lkotlinx/coroutines/reactive/m;->_nRequested:J

    return-void
.end method

.method public static final synthetic p1(Lkotlinx/coroutines/reactive/m;Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/reactive/m;->r1(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q1(Lkotlinx/coroutines/reactive/m;)Lkotlinx/coroutines/sync/c;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/reactive/m;->e:Lkotlinx/coroutines/sync/c;

    return-object p0
.end method

.method private final r1(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/reactive/m;->w1()V

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->A()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/reactive/m;->c:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    iget-wide v3, p0, Lkotlinx/coroutines/reactive/m;->_nRequested:J

    const/4 p1, 0x0

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, v3, v0

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x1

    sub-long v9, v3, v0

    .line 6
    sget-object v1, Lkotlinx/coroutines/reactive/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v2, p0

    move-wide v5, v9

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    cmp-long v0, v9, v7

    if-nez v0, :cond_4

    return-object p1

    .line 7
    :cond_4
    :goto_0
    invoke-direct {p0}, Lkotlinx/coroutines/reactive/m;->w1()V

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lkotlinx/coroutines/reactive/m;->cancelled:Z

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/reactive/m;->close(Ljava/lang/Throwable;)Z

    move-result v0

    .line 10
    invoke-direct {p0}, Lkotlinx/coroutines/reactive/m;->w1()V

    if-eqz v0, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    iget-object v0, p0, Lkotlinx/coroutines/reactive/m;->d:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->A()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :goto_1
    return-object p1

    .line 13
    :cond_6
    invoke-direct {p0}, Lkotlinx/coroutines/reactive/m;->w1()V

    .line 14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Attempted to emit `null` inside a reactive publisher"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final s1(Ljava/lang/Throwable;Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-wide v2, p0, Lkotlinx/coroutines/reactive/m;->_nRequested:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v4, -0x2

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 2
    :cond_0
    :goto_0
    iget-object p1, p0, Lkotlinx/coroutines/reactive/m;->e:Lkotlinx/coroutines/sync/c;

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/sync/c$a;->d(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 3
    :cond_1
    :try_start_1
    iput-wide v4, p0, Lkotlinx/coroutines/reactive/m;->_nRequested:J

    .line 4
    iget-boolean v2, p0, Lkotlinx/coroutines/reactive/m;->cancelled:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lkotlinx/coroutines/reactive/m;->d:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 6
    :try_start_2
    iget-object p1, p0, Lkotlinx/coroutines/reactive/m;->c:Lorg/reactivestreams/d;

    invoke-interface {p1}, Lorg/reactivestreams/d;->onComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/coroutines/p0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 8
    :cond_3
    :try_start_4
    iget-object p2, p0, Lkotlinx/coroutines/reactive/m;->c:Lorg/reactivestreams/d;

    invoke-interface {p2, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    if-eq p2, p1, :cond_4

    .line 9
    :try_start_5
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 10
    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/coroutines/p0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 11
    :goto_1
    iget-object p1, p0, Lkotlinx/coroutines/reactive/m;->e:Lkotlinx/coroutines/sync/c;

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/sync/c$a;->d(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :catchall_2
    move-exception p1

    iget-object p2, p0, Lkotlinx/coroutines/reactive/m;->e:Lkotlinx/coroutines/sync/c;

    invoke-static {p2, v1, v0, v1}, Lkotlinx/coroutines/sync/c$a;->d(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)V

    throw p1
.end method

.method private final v1(Ljava/lang/Throwable;Z)V
    .locals 8

    .line 1
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/reactive/m;->_nRequested:J

    const-wide/16 v0, -0x2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    cmp-long v7, v2, v0

    if-ltz v7, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lkotlinx/coroutines/reactive/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    .line 3
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/reactive/m;->s1(Ljava/lang/Throwable;Z)V

    goto :goto_2

    .line 4
    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/reactive/m;->e:Lkotlinx/coroutines/sync/c;

    const/4 v1, 0x0

    invoke-static {v0, v1, v6, v1}, Lkotlinx/coroutines/sync/c$a;->c(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/reactive/m;->s1(Ljava/lang/Throwable;Z)V

    :cond_4
    :goto_2
    return-void

    .line 5
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final w1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/reactive/m;->e:Lkotlinx/coroutines/sync/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/c$a;->d(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/reactive/m;->e:Lkotlinx/coroutines/sync/c;

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/c$a;->c(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->q0()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->r0()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/reactive/m;->s1(Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lkotlinx/coroutines/reactive/m;->cancelled:Z

    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0}, Lkotlinx/coroutines/q2;->d(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

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

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/reactive/m;->t1(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;

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

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/reactive/m;->v1(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public n(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .param p1    # Lkotlinx/coroutines/selects/f;
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
    new-instance v0, Lkotlinx/coroutines/reactive/m$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lkotlinx/coroutines/reactive/m$b;-><init>(Lkotlinx/coroutines/reactive/m;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object v4, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v5, Lkotlinx/coroutines/reactive/m$a;

    invoke-direct {v5, p0, p1, v0, v1}, Lkotlinx/coroutines/reactive/m$a;-><init>(Lkotlinx/coroutines/reactive/m;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/reactive/m;->u1(Lkotlin/Unit;)V

    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
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

.method public request(J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "non-positive subscription request "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/q2;->Y(Ljava/lang/Throwable;)Z

    return-void

    .line 2
    :cond_0
    iget-wide v4, p0, Lkotlinx/coroutines/reactive/m;->_nRequested:J

    cmp-long v8, v4, v0

    if-gez v8, :cond_1

    return-void

    :cond_1
    add-long v2, v4, p1

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v9, v2, v0

    if-ltz v9, :cond_3

    cmp-long v9, p1, v6

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move-wide v6, v2

    :cond_3
    :goto_0
    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    return-void

    .line 3
    :cond_4
    sget-object v2, Lkotlinx/coroutines/reactive/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v8, :cond_5

    .line 4
    invoke-direct {p0}, Lkotlinx/coroutines/reactive/m;->w1()V

    :cond_5
    return-void
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p2, Lkotlinx/coroutines/reactive/m$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/reactive/m$c;

    iget v1, v0, Lkotlinx/coroutines/reactive/m$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/reactive/m$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/reactive/m$c;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/reactive/m$c;-><init>(Lkotlinx/coroutines/reactive/m;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/reactive/m$c;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/reactive/m$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lkotlinx/coroutines/reactive/m$c;->b:Ljava/lang/Object;

    iget-object v0, v0, Lkotlinx/coroutines/reactive/m$c;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/reactive/m;

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
    iget-object p2, p0, Lkotlinx/coroutines/reactive/m;->e:Lkotlinx/coroutines/sync/c;

    iput-object p0, v0, Lkotlinx/coroutines/reactive/m$c;->a:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/reactive/m$c;->b:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/reactive/m$c;->e:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v3, v2}, Lkotlinx/coroutines/sync/c$a;->b(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    invoke-direct {v0, p1}, Lkotlinx/coroutines/reactive/m;->r1(Ljava/lang/Object;)Ljava/lang/Throwable;

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

    const-string v0, "PublisherCoroutine doesn\'t support invokeOnClose"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/reactive/m;->e:Lkotlinx/coroutines/sync/c;

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
    invoke-direct {p0, p1}, Lkotlinx/coroutines/reactive/m;->r1(Ljava/lang/Object;)Ljava/lang/Throwable;

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

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/reactive/m;->v1(Ljava/lang/Throwable;Z)V

    return-void
.end method
