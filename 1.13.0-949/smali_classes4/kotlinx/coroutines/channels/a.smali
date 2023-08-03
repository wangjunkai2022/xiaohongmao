.class public abstract Lkotlinx/coroutines/channels/a;
.super Lkotlinx/coroutines/channels/c;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/a$g;,
        Lkotlinx/coroutines/channels/a$f;,
        Lkotlinx/coroutines/channels/a$a;,
        Lkotlinx/coroutines/channels/a$b;,
        Lkotlinx/coroutines/channels/a$c;,
        Lkotlinx/coroutines/channels/a$d;,
        Lkotlinx/coroutines/channels/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/c<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/m<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 5 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannelKt\n+ 6 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 7 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n*L\n1#1,1132:1\n1#2:1133\n332#3,5:1134\n165#4,4:1139\n177#4:1143\n91#4,3:1144\n178#4,6:1147\n1128#5:1153\n1128#5:1165\n37#6,11:1154\n19#7:1166\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractChannel\n*L\n597#1:1134,5\n620#1:1139,4\n621#1:1143\n621#1:1144,3\n621#1:1147,6\n631#1:1153\n781#1:1165\n696#1:1154,11\n822#1:1166\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0007W)X,GYZB)\u0012 \u0010T\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0013\u0018\u00010Rj\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`S\u00a2\u0006\u0004\u0008U\u0010VJ!\u0010\u0007\u001a\u00028\u0001\"\u0004\u0008\u0001\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u0002JT\u0010\u0014\u001a\u00020\u0013\"\u0004\u0008\u0001\u0010\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00052$\u0010\u0012\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015JZ\u0010\u0017\u001a\u00020\u0013\"\u0004\u0008\u0001\u0010\u0004* \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0010H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018JT\u0010\u0019\u001a\u00020\u000b\"\u0004\u0008\u0001\u0010\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\r2$\u0010\u0012\u001a \u0008\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ \u0010\u001d\u001a\u00020\u00132\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u001b2\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0002J\n\u0010\u001e\u001a\u0004\u0018\u00010\u0010H\u0014J\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u00102\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0014J\u0013\u0010 \u001a\u00028\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!J\u0016\u0010\"\u001a\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u0014J\"\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000#H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008$\u0010!J\u001c\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000#\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0012\u0010)\u001a\u00020\u000b2\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0007J\u0016\u0010,\u001a\u00020\u00132\u000e\u0010(\u001a\n\u0018\u00010*j\u0004\u0018\u0001`+J\u0019\u0010-\u001a\u00020\u000b2\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0000\u00a2\u0006\u0004\u0008-\u0010.J\u0010\u00100\u001a\u00020\u00132\u0006\u0010/\u001a\u00020\u000bH\u0014J/\u00106\u001a\u00020\u00132\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u000202012\n\u00105\u001a\u0006\u0012\u0002\u0008\u000304H\u0014\u00f8\u0001\u0000\u00f8\u0001\u0002\u00a2\u0006\u0004\u00086\u00107J\u000f\u00109\u001a\u0008\u0012\u0004\u0012\u00028\u000008H\u0086\u0002J\u000e\u0010;\u001a\u0008\u0012\u0004\u0012\u00028\u00000:H\u0004J\u0010\u0010=\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010<H\u0014J\u0008\u0010>\u001a\u00020\u0013H\u0014J\u0008\u0010?\u001a\u00020\u0013H\u0014R\u0014\u0010B\u001a\u00020\u000b8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010AR\u0014\u0010D\u001a\u00020\u000b8$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010AR\u0014\u0010F\u001a\u00020\u000b8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010AR\u0014\u0010H\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010AR\u0014\u0010I\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010AR\u0014\u0010K\u001a\u00020\u000b8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010AR\u0017\u0010O\u001a\u0008\u0012\u0004\u0012\u00028\u00000L8F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010NR \u0010Q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000#0L8F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010N\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006["
    }
    d2 = {
        "Lkotlinx/coroutines/channels/a;",
        "E",
        "Lkotlinx/coroutines/channels/c;",
        "Lkotlinx/coroutines/channels/m;",
        "R",
        "",
        "receiveMode",
        "i0",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/e0;",
        "receive",
        "",
        "V",
        "Lkotlinx/coroutines/selects/f;",
        "select",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/Continuation;",
        "block",
        "",
        "j0",
        "(Lkotlinx/coroutines/selects/f;ILkotlin/jvm/functions/Function2;)V",
        "value",
        "l0",
        "(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/f;ILjava/lang/Object;)V",
        "X",
        "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;I)Z",
        "Lkotlinx/coroutines/q;",
        "cont",
        "k0",
        "g0",
        "h0",
        "F",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "W",
        "Lkotlinx/coroutines/channels/q;",
        "x",
        "v",
        "()Ljava/lang/Object;",
        "",
        "cause",
        "b",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "d",
        "T",
        "(Ljava/lang/Throwable;)Z",
        "wasClosed",
        "c0",
        "Lkotlinx/coroutines/internal/p;",
        "Lkotlinx/coroutines/channels/i0;",
        "list",
        "Lkotlinx/coroutines/channels/v;",
        "closed",
        "d0",
        "(Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V",
        "Lkotlinx/coroutines/channels/o;",
        "iterator",
        "Lkotlinx/coroutines/channels/a$g;",
        "U",
        "Lkotlinx/coroutines/channels/g0;",
        "N",
        "f0",
        "e0",
        "Z",
        "()Z",
        "isBufferAlwaysEmpty",
        "a0",
        "isBufferEmpty",
        "Y",
        "hasReceiveOrClosed",
        "e",
        "isClosedForReceive",
        "isEmpty",
        "b0",
        "isEmptyImpl",
        "Lkotlinx/coroutines/selects/d;",
        "o",
        "()Lkotlinx/coroutines/selects/d;",
        "onReceive",
        "t",
        "onReceiveCatching",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "onUndeliveredElement",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "a",
        "c",
        "f",
        "g",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/c;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic P(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/channels/e0;)Z
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/a;->V(Lkotlinx/coroutines/channels/e0;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic Q(Lkotlinx/coroutines/channels/a;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/a;->i0(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic R(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/selects/f;ILkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/a;->j0(Lkotlinx/coroutines/selects/f;ILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic S(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/q;Lkotlinx/coroutines/channels/e0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/a;->k0(Lkotlinx/coroutines/q;Lkotlinx/coroutines/channels/e0;)V

    return-void
.end method

.method private final V(Lkotlinx/coroutines/channels/e0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/e0<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/a;->W(Lkotlinx/coroutines/channels/e0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->f0()V

    :cond_0
    return p1
.end method

.method private final X(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/a$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/channels/a$e;-><init>(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;I)V

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/a;->V(Lkotlinx/coroutines/channels/e0;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/f;->p(Lkotlinx/coroutines/l1;)V

    :cond_0
    return p2
.end method

.method private final i0(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/t;->b(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/r;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lkotlinx/coroutines/channels/a$b;

    invoke-direct {v1, v0, p1}, Lkotlinx/coroutines/channels/a$b;-><init>(Lkotlinx/coroutines/q;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/a$c;

    iget-object v2, p0, Lkotlinx/coroutines/channels/c;->a:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v0, p1, v2}, Lkotlinx/coroutines/channels/a$c;-><init>(Lkotlinx/coroutines/q;ILkotlin/jvm/functions/Function1;)V

    .line 5
    :cond_1
    :goto_0
    invoke-static {p0, v1}, Lkotlinx/coroutines/channels/a;->P(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/channels/e0;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/channels/a;->S(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/q;Lkotlinx/coroutines/channels/e0;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->g0()Ljava/lang/Object;

    move-result-object p1

    .line 8
    instance-of v2, p1, Lkotlinx/coroutines/channels/v;

    if-eqz v2, :cond_3

    .line 9
    check-cast p1, Lkotlinx/coroutines/channels/v;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/a$b;->i0(Lkotlinx/coroutines/channels/v;)V

    goto :goto_1

    .line 10
    :cond_3
    sget-object v2, Lkotlinx/coroutines/channels/b;->f:Lkotlinx/coroutines/internal/p0;

    if-eq p1, v2, :cond_1

    .line 11
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/a$b;->j0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/e0;->h0(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lkotlinx/coroutines/q;->r(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 12
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/r;->A()Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    return-object p1
.end method

.method private final j0(Lkotlinx/coroutines/selects/f;ILkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;I",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->b0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0, p1, p3, p2}, Lkotlinx/coroutines/channels/a;->X(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/a;->h0(Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/selects/g;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    return-void

    .line 6
    :cond_3
    sget-object v1, Lkotlinx/coroutines/channels/b;->f:Lkotlinx/coroutines/internal/p0;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    sget-object v1, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    invoke-direct {p0, p3, p1, p2, v0}, Lkotlinx/coroutines/channels/a;->l0(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/f;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private final k0(Lkotlinx/coroutines/q;Lkotlinx/coroutines/channels/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/q<",
            "*>;",
            "Lkotlinx/coroutines/channels/e0<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/a$f;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/channels/a$f;-><init>(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/channels/e0;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/q;->k(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final l0(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/selects/f;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lkotlinx/coroutines/channels/v;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p2}, Lkotlinx/coroutines/selects/f;->t()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object p3, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    check-cast p4, Lkotlinx/coroutines/channels/v;

    iget-object p4, p4, Lkotlinx/coroutines/channels/v;->d:Ljava/lang/Throwable;

    invoke-virtual {p3, p4}, Lkotlinx/coroutines/channels/q$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/channels/q;->b(Ljava/lang/Object;)Lkotlinx/coroutines/channels/q;

    move-result-object p3

    invoke-interface {p2}, Lkotlinx/coroutines/selects/f;->u()Lkotlin/coroutines/Continuation;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lz7/b;->d(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    goto :goto_1

    .line 4
    :cond_2
    check-cast p4, Lkotlinx/coroutines/channels/v;

    invoke-virtual {p4}, Lkotlinx/coroutines/channels/v;->n0()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/o0;->p(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_3
    if-ne p3, v1, :cond_5

    .line 5
    sget-object p3, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    if-eqz v0, :cond_4

    check-cast p4, Lkotlinx/coroutines/channels/v;

    iget-object p4, p4, Lkotlinx/coroutines/channels/v;->d:Ljava/lang/Throwable;

    invoke-virtual {p3, p4}, Lkotlinx/coroutines/channels/q$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_4
    invoke-virtual {p3, p4}, Lkotlinx/coroutines/channels/q$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_0
    invoke-static {p3}, Lkotlinx/coroutines/channels/q;->b(Ljava/lang/Object;)Lkotlinx/coroutines/channels/q;

    move-result-object p3

    .line 6
    invoke-interface {p2}, Lkotlinx/coroutines/selects/f;->u()Lkotlin/coroutines/Continuation;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lz7/b;->d(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    goto :goto_1

    .line 7
    :cond_5
    invoke-interface {p2}, Lkotlinx/coroutines/selects/f;->u()Lkotlin/coroutines/Continuation;

    move-result-object p2

    invoke-static {p1, p4, p2}, Lz7/b;->d(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final F(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->g0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/b;->f:Lkotlinx/coroutines/internal/p0;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Lkotlinx/coroutines/channels/v;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/channels/a;->i0(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected N()Lkotlinx/coroutines/channels/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/g0<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/channels/c;->N()Lkotlinx/coroutines/channels/g0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/channels/v;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->e0()V

    :cond_0
    return-object v0
.end method

.method public final T(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->close(Ljava/lang/Throwable;)Z

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/a;->c0(Z)V

    return p1
.end method

.method protected final U()Lkotlinx/coroutines/channels/a$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/a$g<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/a$g;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->r()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/a$g;-><init>(Lkotlinx/coroutines/internal/v;)V

    return-object v0
.end method

.method protected W(Lkotlinx/coroutines/channels/e0;)Z
    .locals 6
    .param p1    # Lkotlinx/coroutines/channels/e0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/e0<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->Z()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->r()Lkotlinx/coroutines/internal/v;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lkotlinx/coroutines/channels/i0;

    xor-int/2addr v4, v2

    if-nez v4, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v3, p1, v0}, Lkotlinx/coroutines/internal/x;->K(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->r()Lkotlinx/coroutines/internal/v;

    move-result-object v0

    .line 7
    new-instance v3, Lkotlinx/coroutines/channels/a$h;

    invoke-direct {v3, p1, p0}, Lkotlinx/coroutines/channels/a$h;-><init>(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/channels/a;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v4

    .line 9
    instance-of v5, v4, Lkotlinx/coroutines/channels/i0;

    xor-int/2addr v5, v2

    if-nez v5, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v4, p1, v0, v3}, Lkotlinx/coroutines/internal/x;->e0(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x$c;)I

    move-result v4

    if-eq v4, v2, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :cond_5
    :goto_2
    return v1
.end method

.method protected final Y()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->r()Lkotlinx/coroutines/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->S()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/g0;

    return v0
.end method

.method protected abstract Z()Z
.end method

.method protected abstract a0()Z
.end method

.method public final synthetic b(Ljava/lang/Throwable;)Z
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/a;->T(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method protected final b0()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->r()Lkotlinx/coroutines/internal/v;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->S()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/i0;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected c0(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->q()Lkotlinx/coroutines/channels/v;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/internal/p;->c(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/internal/v;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/channels/a;->d0(Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/x;->Z()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/x;->U()V

    goto :goto_0

    .line 8
    :cond_1
    check-cast v1, Lkotlinx/coroutines/channels/i0;

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot happen"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic cancel()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    invoke-static {p0}, Lkotlinx/coroutines/channels/m$a;->a(Lkotlinx/coroutines/channels/m;)V

    return-void
.end method

.method public final d(Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/v0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/a;->T(Ljava/lang/Throwable;)Z

    return-void
.end method

.method protected d0(Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/channels/v;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/channels/v<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/channels/i0;

    .line 2
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/i0;->i0(Lkotlinx/coroutines/channels/v;)V

    goto :goto_1

    .line 3
    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/i0;

    .line 6
    invoke-virtual {v0, p2}, Lkotlinx/coroutines/channels/i0;->i0(Lkotlinx/coroutines/channels/v;)V

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->p()Lkotlinx/coroutines/channels/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected e0()V
    .locals 0

    return-void
.end method

.method protected f0()V
    .locals 0

    return-void
.end method

.method protected g0()Ljava/lang/Object;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->O()Lkotlinx/coroutines/channels/i0;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/b;->f:Lkotlinx/coroutines/internal/p0;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/i0;->j0(Lkotlinx/coroutines/internal/x$d;)Lkotlinx/coroutines/internal/p0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/i0;->g0()V

    .line 4
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/i0;->h0()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/i0;->k0()V

    goto :goto_0
.end method

.method protected h0(Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/selects/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->U()Lkotlinx/coroutines/channels/a$g;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/f;->w(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x$e;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/i0;

    .line 4
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/i0;->g0()V

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x$e;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/i0;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/i0;->h0()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->b0()Z

    move-result v0

    return v0
.end method

.method public final iterator()Lkotlinx/coroutines/channels/o;
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

    new-instance v0, Lkotlinx/coroutines/channels/a$a;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/a$a;-><init>(Lkotlinx/coroutines/channels/a;)V

    return-object v0
.end method

.method public final o()Lkotlinx/coroutines/selects/d;
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

    new-instance v0, Lkotlinx/coroutines/channels/a$i;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/a$i;-><init>(Lkotlinx/coroutines/channels/a;)V

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

    invoke-static {p0}, Lkotlinx/coroutines/channels/m$a;->d(Lkotlinx/coroutines/channels/m;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lkotlinx/coroutines/selects/d;
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

    new-instance v0, Lkotlinx/coroutines/channels/a$j;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/a$j;-><init>(Lkotlinx/coroutines/channels/a;)V

    return-object v0
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

    invoke-static {p0}, Lkotlinx/coroutines/channels/m$a;->b(Lkotlinx/coroutines/channels/m;)Lkotlinx/coroutines/selects/d;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/Object;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->g0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/b;->f:Lkotlinx/coroutines/internal/p0;

    if-ne v0, v1, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/q$b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/channels/v;

    if-eqz v1, :cond_1

    sget-object v1, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    check-cast v0, Lkotlinx/coroutines/channels/v;

    iget-object v0, v0, Lkotlinx/coroutines/channels/v;->d:Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/channels/q$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    sget-object v1, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/channels/q$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/m$a;->e(Lkotlinx/coroutines/channels/m;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lkotlinx/coroutines/channels/a$k;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/a$k;

    iget v1, v0, Lkotlinx/coroutines/channels/a$k;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/a$k;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/a$k;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/channels/a$k;-><init>(Lkotlinx/coroutines/channels/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/a$k;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/a$k;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

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
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->g0()Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v2, Lkotlinx/coroutines/channels/b;->f:Lkotlinx/coroutines/internal/p0;

    if-eq p1, v2, :cond_4

    .line 6
    instance-of v0, p1, Lkotlinx/coroutines/channels/v;

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    check-cast p1, Lkotlinx/coroutines/channels/v;

    iget-object p1, p1, Lkotlinx/coroutines/channels/v;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/q$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object v0, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/q$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1

    .line 7
    :cond_4
    iput v3, v0, Lkotlinx/coroutines/channels/a$k;->c:I

    invoke-direct {p0, v3, v0}, Lkotlinx/coroutines/channels/a;->i0(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Lkotlinx/coroutines/channels/q;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/q;->o()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
