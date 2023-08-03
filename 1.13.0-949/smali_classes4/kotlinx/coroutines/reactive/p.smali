.class final Lkotlinx/coroutines/reactive/p;
.super Lkotlinx/coroutines/channels/a0;
.source "Channel.kt"

# interfaces
.implements Lorg/reactivestreams/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/a0<",
        "TT;>;",
        "Lorg/reactivestreams/d<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channel.kt\nkotlinx/coroutines/reactive/SubscriptionChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,112:1\n1#2:113\n351#3,2:114\n*S KotlinDebug\n*F\n+ 1 Channel.kt\nkotlinx/coroutines/reactive/SubscriptionChannel\n*L\n46#1:114,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0006J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/reactive/p;",
        "T",
        "Lkotlinx/coroutines/channels/a0;",
        "Lorg/reactivestreams/d;",
        "",
        "f0",
        "()V",
        "e0",
        "Lkotlinx/coroutines/internal/x;",
        "closed",
        "J",
        "(Lkotlinx/coroutines/internal/x;)V",
        "Lorg/reactivestreams/e;",
        "s",
        "onSubscribe",
        "(Lorg/reactivestreams/e;)V",
        "t",
        "onNext",
        "(Ljava/lang/Object;)V",
        "onComplete",
        "",
        "e",
        "onError",
        "(Ljava/lang/Throwable;)V",
        "",
        "d",
        "I",
        "request",
        "<init>",
        "(I)V",
        "kotlinx-coroutines-reactive"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _requested:I
    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile synthetic _subscription:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/reactive/p;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_subscription"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/reactive/p;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "_requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/reactive/p;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/reactive/p;->d:I

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    iput-object v0, p0, Lkotlinx/coroutines/reactive/p;->_subscription:Ljava/lang/Object;

    .line 4
    iput v1, p0, Lkotlinx/coroutines/reactive/p;->_requested:I

    return-void

    .line 5
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Invalid request size: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public J(Lkotlinx/coroutines/internal/x;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param

    sget-object p1, Lkotlinx/coroutines/reactive/p;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/reactivestreams/e;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    :goto_0
    return-void
.end method

.method public e0()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/reactive/p;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    return-void
.end method

.method public f0()V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lkotlinx/coroutines/reactive/p;->_requested:I

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/reactive/p;->_subscription:Ljava/lang/Object;

    check-cast v1, Lorg/reactivestreams/e;

    add-int/lit8 v2, v0, -0x1

    if-eqz v1, :cond_2

    if-gez v2, :cond_2

    .line 3
    iget v3, p0, Lkotlinx/coroutines/reactive/p;->d:I

    if-eq v0, v3, :cond_1

    sget-object v4, Lkotlinx/coroutines/reactive/p;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lkotlinx/coroutines/reactive/p;->d:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/reactivestreams/e;->request(J)V

    return-void

    .line 5
    :cond_2
    sget-object v1, Lkotlinx/coroutines/reactive/p;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/c;->close(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->close(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/reactive/p;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 3
    .param p1    # Lorg/reactivestreams/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/reactive/p;->_subscription:Ljava/lang/Object;

    .line 2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->isClosedForSend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/reactive/p;->_requested:I

    .line 5
    iget v1, p0, Lkotlinx/coroutines/reactive/p;->d:I

    if-lt v0, v1, :cond_1

    return-void

    .line 6
    :cond_1
    sget-object v2, Lkotlinx/coroutines/reactive/p;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget v1, p0, Lkotlinx/coroutines/reactive/p;->d:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    return-void
.end method
