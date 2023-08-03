.class final Lkotlinx/coroutines/reactive/o;
.super Ljava/lang/Object;
.source "ReactiveFlow.kt"

# interfaces
.implements Lorg/reactivestreams/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/d<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactiveFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactiveFlow.kt\nkotlinx/coroutines/reactive/ReactiveSubscriber\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,273:1\n1#2:274\n494#3,5:275\n*S KotlinDebug\n*F\n+ 1 ReactiveFlow.kt\nkotlinx/coroutines/reactive/ReactiveSubscriber\n*L\n131#1:275,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u001f\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\n\u001a\u00020\u0007H\u0016J\u0012\u0010\r\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\u0007R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\u000e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0016R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0019\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lkotlinx/coroutines/reactive/o;",
        "",
        "T",
        "Lorg/reactivestreams/d;",
        "c",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "value",
        "",
        "onNext",
        "(Ljava/lang/Object;)V",
        "onComplete",
        "",
        "t",
        "onError",
        "Lorg/reactivestreams/e;",
        "s",
        "onSubscribe",
        "b",
        "a",
        "",
        "J",
        "requestSize",
        "Lorg/reactivestreams/e;",
        "subscription",
        "Lkotlinx/coroutines/channels/m;",
        "Lkotlinx/coroutines/channels/m;",
        "channel",
        "",
        "capacity",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "<init>",
        "(ILkotlinx/coroutines/channels/BufferOverflow;J)V",
        "kotlinx-coroutines-reactive"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final a:J

.field private b:Lorg/reactivestreams/e;

.field private final c:Lkotlinx/coroutines/channels/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;J)V
    .locals 0
    .param p2    # Lkotlinx/coroutines/channels/BufferOverflow;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p3, p0, Lkotlinx/coroutines/reactive/o;->a:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 p3, 0x4

    const/4 p4, 0x0

    .line 3
    invoke-static {p1, p2, p4, p3, p4}, Lkotlinx/coroutines/channels/p;->d(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/m;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/reactive/o;->c:Lkotlinx/coroutines/channels/m;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/reactive/o;->b:Lorg/reactivestreams/e;

    if-nez v0, :cond_0

    const-string v0, "subscription"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/reactive/o;->b:Lorg/reactivestreams/e;

    if-nez v0, :cond_0

    const-string v0, "subscription"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-wide v1, p0, Lkotlinx/coroutines/reactive/o;->a:J

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/e;->request(J)V

    return-void
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/reactive/o$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/reactive/o$a;

    iget v1, v0, Lkotlinx/coroutines/reactive/o$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/reactive/o$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/reactive/o$a;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/reactive/o$a;-><init>(Lkotlinx/coroutines/reactive/o;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/reactive/o$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/reactive/o$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlinx/coroutines/channels/q;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/q;->o()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lkotlinx/coroutines/reactive/o;->c:Lkotlinx/coroutines/channels/m;

    iput v3, v0, Lkotlinx/coroutines/reactive/o$a;->c:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/f0;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlinx/coroutines/channels/q;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    .line 6
    instance-of v0, p1, Lkotlinx/coroutines/channels/q$c;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lkotlinx/coroutines/channels/q;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    const/4 p1, 0x0

    :cond_4
    return-object p1

    .line 7
    :cond_5
    throw v0
.end method

.method public onComplete()V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/reactive/o;->c:Lkotlinx/coroutines/channels/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/channels/j0$a;->a(Lkotlinx/coroutines/channels/j0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/reactive/o;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->close(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/reactive/o;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/q;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not added to channel because it was full, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lkotlinx/coroutines/reactive/o;->c:Lkotlinx/coroutines/channels/m;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 0
    .param p1    # Lorg/reactivestreams/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/reactive/o;->b:Lorg/reactivestreams/e;

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/reactive/o;->b()V

    return-void
.end method
