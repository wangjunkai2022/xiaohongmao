.class public Lkotlinx/coroutines/channels/n;
.super Lkotlinx/coroutines/a;
.source "ChannelCoroutine.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlinx/coroutines/channels/m<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,41:1\n702#2,2:42\n702#2,2:44\n702#2,2:46\n*S KotlinDebug\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n*L\n21#1:42,2\n26#1:44,2\n32#1:46,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u0004B-\u0012\u0006\u0010@\u001a\u00020?\u0012\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010A\u001a\u00020\u0007\u0012\u0006\u0010B\u001a\u00020\u0007\u00a2\u0006\u0004\u0008C\u0010DJ\u0013\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0001J.\u0010\r\u001a\u00020\u00032#\u0010\u000c\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00030\tH\u0097\u0001J\u000f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eH\u0096\u0003J\u0018\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00028\u0000H\u0097\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00018\u0000H\u0097\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0013\u0010\u0015\u001a\u00028\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\"\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0096A\u00f8\u0001\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\u0015\u0010\u0019\u001a\u0004\u0018\u00018\u0000H\u0097A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u0016J\u001b\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00028\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0017H\u0096\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0014J\'\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00172\u0006\u0010\u0010\u001a\u00028\u0000H\u0096\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0008\u0010 \u001a\u00020\u0003H\u0016J\u0012\u0010!\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007J\u0016\u0010$\u001a\u00020\u00032\u000e\u0010\u0006\u001a\n\u0018\u00010\"j\u0004\u0018\u0001`#J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R \u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00048\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0014\u0010-\u001a\u00020\u00078\u0016X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0014\u0010.\u001a\u00020\u00078\u0016X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010,R\u0014\u0010/\u001a\u00020\u00078\u0016X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010,R\u001a\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u0000008\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R#\u00105\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0017008\u0016X\u0096\u0005\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u00084\u00102R\u001c\u00107\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000008VX\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u00086\u00102R&\u0010<\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u000009088\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0017\u0010>\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010)\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006E"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/n;",
        "E",
        "Lkotlinx/coroutines/a;",
        "",
        "Lkotlinx/coroutines/channels/m;",
        "",
        "cause",
        "",
        "close",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "handler",
        "invokeOnClose",
        "Lkotlinx/coroutines/channels/o;",
        "iterator",
        "element",
        "offer",
        "(Ljava/lang/Object;)Z",
        "poll",
        "()Ljava/lang/Object;",
        "F",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/q;",
        "x",
        "w",
        "send",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "v",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "trySend",
        "cancel",
        "b",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "d",
        "a0",
        "c",
        "Lkotlinx/coroutines/channels/m;",
        "p1",
        "()Lkotlinx/coroutines/channels/m;",
        "_channel",
        "e",
        "()Z",
        "isClosedForReceive",
        "isClosedForSend",
        "isEmpty",
        "Lkotlinx/coroutines/selects/d;",
        "o",
        "()Lkotlinx/coroutines/selects/d;",
        "onReceive",
        "t",
        "onReceiveCatching",
        "u",
        "onReceiveOrNull",
        "Lkotlinx/coroutines/selects/e;",
        "Lkotlinx/coroutines/channels/j0;",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/e;",
        "onSend",
        "getChannel",
        "channel",
        "Lkotlin/coroutines/CoroutineContext;",
        "parentContext",
        "initParentJob",
        "active",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/m;ZZ)V",
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
.field private final c:Lkotlinx/coroutines/channels/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/m<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/m;ZZ)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/channels/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/m<",
            "TE;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    return-void
.end method


# virtual methods
.method public F(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/f0;->F(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a0(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/coroutines/q2;->d1(Lkotlinx/coroutines/q2;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/f0;->d(Ljava/util/concurrent/CancellationException;)V

    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/q2;->Y(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final synthetic b(Ljava/lang/Throwable;)Z
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .line 1
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/q2;->O(Lkotlinx/coroutines/q2;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/j2;)V

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/n;->a0(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic cancel()V
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/q2;->O(Lkotlinx/coroutines/q2;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/j2;)V

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/n;->a0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->close(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/q2;->O(Lkotlinx/coroutines/q2;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/j2;)V

    move-object p1, v0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/n;->a0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/f0;->e()Z

    move-result v0

    return v0
.end method

.method public final getChannel()Lkotlinx/coroutines/channels/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/m<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    return-object p0
.end method

.method public getOnSend()Lkotlinx/coroutines/selects/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/e<",
            "TE;",
            "Lkotlinx/coroutines/channels/j0<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/j0;->getOnSend()Lkotlinx/coroutines/selects/e;

    move-result-object v0

    return-object v0
.end method

.method public invokeOnClose(Lkotlin/jvm/functions/Function1;)V
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
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/y1;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->invokeOnClose(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public isClosedForSend()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/j0;->isClosedForSend()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/f0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lkotlinx/coroutines/channels/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/o<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/f0;->iterator()Lkotlinx/coroutines/channels/o;

    move-result-object v0

    return-object v0
.end method

.method public o()Lkotlinx/coroutines/selects/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/f0;->o()Lkotlinx/coroutines/selects/d;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final p1()Lkotlinx/coroutines/channels/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/m<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'tryReceive\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'poll\' did, for the precise replacement please refer to the \'poll\' documentation"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "tryReceive().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/f0;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/channels/j0;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t()Lkotlinx/coroutines/selects/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "Lkotlinx/coroutines/channels/q<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/f0;->t()Lkotlinx/coroutines/selects/d;

    move-result-object v0

    return-object v0
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public u()Lkotlinx/coroutines/selects/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/f0;->u()Lkotlinx/coroutines/selects/d;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/Object;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/f0;->v()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in favor of \'receiveCatching\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'receiveOrNull\' did, for the detailed replacement please refer to the \'receiveOrNull\' documentation"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "receiveCatching().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/internal/LowPriorityInOverloadResolution;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/f0;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/q<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/n;->c:Lkotlinx/coroutines/channels/m;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/f0;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p1
.end method
