.class Lkotlinx/coroutines/channels/k;
.super Lkotlinx/coroutines/a;
.source "Broadcast.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/d0;
.implements Lkotlinx/coroutines/channels/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlinx/coroutines/channels/d0<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/i<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,199:1\n702#2,2:200\n702#2,2:202\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n*L\n149#1:200,2\n154#1:202,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0012\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0008\u0012\u0004\u0012\u00028\u00000\u0005B%\u0012\u0006\u00106\u001a\u000205\u0012\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u00107\u001a\u00020\u000e\u00a2\u0006\u0004\u00088\u00109J.\u0010\u000c\u001a\u00020\u00032#\u0010\u000b\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u00030\u0006H\u0097\u0001J\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0097\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0096\u0001J\u001b\u0010\u0013\u001a\u00020\u00032\u0006\u0010\r\u001a\u00028\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\'\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00152\u0006\u0010\r\u001a\u00028\u0000H\u0096\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0012\u0010\u0019\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0007J\u0016\u0010\u001c\u001a\u00020\u00032\u000e\u0010\n\u001a\n\u0018\u00010\u001aj\u0004\u0018\u0001`\u001bJ\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0017\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u000eH\u0014J\u0012\u0010#\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0016R \u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u0014\u0010)\u001a\u00020\u000e8\u0016X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R&\u0010/\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000,0+8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0014\u00101\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u0010*R\u001a\u00104\u001a\u0008\u0012\u0004\u0012\u00028\u00000,8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u00103\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006:"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/k;",
        "E",
        "Lkotlinx/coroutines/a;",
        "",
        "Lkotlinx/coroutines/channels/d0;",
        "Lkotlinx/coroutines/channels/i;",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "handler",
        "invokeOnClose",
        "element",
        "",
        "offer",
        "(Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/channels/f0;",
        "g",
        "send",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/q;",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "trySend",
        "b",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "d",
        "a0",
        "value",
        "q1",
        "(Lkotlin/Unit;)V",
        "handled",
        "m1",
        "close",
        "c",
        "Lkotlinx/coroutines/channels/i;",
        "p1",
        "()Lkotlinx/coroutines/channels/i;",
        "_channel",
        "isClosedForSend",
        "()Z",
        "Lkotlinx/coroutines/selects/e;",
        "Lkotlinx/coroutines/channels/j0;",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/e;",
        "onSend",
        "a",
        "isActive",
        "getChannel",
        "()Lkotlinx/coroutines/channels/j0;",
        "channel",
        "Lkotlin/coroutines/CoroutineContext;",
        "parentContext",
        "active",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/i;Z)V",
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
.field private final c:Lkotlinx/coroutines/channels/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/i;Z)V
    .locals 1
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/channels/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p3}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    .line 3
    sget-object p2, Lkotlinx/coroutines/j2;->k2:Lkotlinx/coroutines/j2$b;

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/j2;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/q2;->B0(Lkotlinx/coroutines/j2;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-super {p0}, Lkotlinx/coroutines/a;->a()Z

    move-result v0

    return v0
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
    iget-object v0, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/i;->d(Ljava/util/concurrent/CancellationException;)V

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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/q2;->O(Lkotlinx/coroutines/q2;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/j2;)V

    move-object p1, v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/k;->a0(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->close(Ljava/lang/Throwable;)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/q2;->start()Z

    return p1
.end method

.method public final d(Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/q2;->O(Lkotlinx/coroutines/q2;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/j2;)V

    move-object p1, v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/k;->a0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public g()Lkotlinx/coroutines/channels/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/f0<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/i;->g()Lkotlinx/coroutines/channels/f0;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lkotlinx/coroutines/channels/j0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/j0<",
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

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

    iget-object v0, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->invokeOnClose(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public isClosedForSend()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/j0;->isClosedForSend()Z

    move-result v0

    return v0
.end method

.method protected m1(Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->close(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/coroutines/p0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic n1(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/k;->q1(Lkotlin/Unit;)V

    return-void
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final p1()Lkotlinx/coroutines/channels/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    return-object v0
.end method

.method protected q1(Lkotlin/Unit;)V
    .locals 2
    .param p1    # Lkotlin/Unit;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object p1, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/channels/j0$a;->a(Lkotlinx/coroutines/channels/j0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/channels/j0;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lkotlinx/coroutines/channels/k;->c:Lkotlinx/coroutines/channels/i;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
