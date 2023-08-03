.class public abstract Lkotlinx/coroutines/channels/c;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/j0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/c$b;,
        Lkotlinx/coroutines/channels/c$d;,
        Lkotlinx/coroutines/channels/c$c;,
        Lkotlinx/coroutines/channels/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/j0<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractSendChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 6 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1132:1\n1#2:1133\n297#3,12:1134\n165#3,4:1146\n165#3,4:1155\n177#3:1159\n91#3,3:1160\n178#3,6:1163\n165#3,4:1169\n297#3,12:1184\n332#4,5:1150\n37#5,11:1173\n645#6,6:1196\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractSendChannel\n*L\n96#1:1134,12\n104#1:1146,4\n247#1:1155,4\n252#1:1159\n252#1:1160,3\n252#1:1163,6\n269#1:1169,4\n358#1:1184,12\n190#1:1150,5\n342#1:1173,11\n455#1:1196,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002:\u0004KOijB)\u0012 \u0010M\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0018\u00010:j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`J\u00a2\u0006\u0004\u0008h\u0010>J\u001b\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00028\u00002\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\rJ+\u0010\u000f\u001a\u00020\u000b*\u0006\u0012\u0002\u0008\u00030\u000e2\u0006\u0010\u0008\u001a\u00028\u00002\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0014\u001a\u00020\u000b2\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015JX\u0010\u001c\u001a\u00020\u000b\"\u0004\u0008\u0001\u0010\u00162\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00172\u0006\u0010\u0008\u001a\u00028\u00002(\u0010\u001b\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0019H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010!\u001a\u00020\u001a2\u0006\u0010\u0008\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008!\u0010\"J#\u0010#\u001a\u00020\u001a2\u0006\u0010\u0008\u001a\u00028\u00002\n\u0010\u0018\u001a\u0006\u0012\u0002\u0008\u00030\u0017H\u0014\u00a2\u0006\u0004\u0008#\u0010$J\u0011\u0010&\u001a\u0004\u0018\u00010%H\u0004\u00a2\u0006\u0004\u0008&\u0010\'J\u001d\u0010)\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010(2\u0006\u0010\u0008\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008)\u0010*J#\u0010-\u001a\u000e\u0012\u0002\u0008\u00030+j\u0006\u0012\u0002\u0008\u0003`,2\u0006\u0010\u0008\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008-\u0010.J\u001b\u0010/\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00028\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u0010\rJ\u0017\u00101\u001a\u0002002\u0006\u0010\u0008\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u00081\u00102J$\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u000b032\u0006\u0010\u0008\u001a\u00028\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u00084\u0010\"J\u0019\u00106\u001a\u0004\u0018\u00010\u001a2\u0006\u0010/\u001a\u00020%H\u0014\u00a2\u0006\u0004\u00086\u00107J\u0019\u00108\u001a\u0002002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u00088\u00109J)\u0010=\u001a\u00020\u000b2\u0018\u0010<\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u000b0:j\u0002`;H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u0017\u0010@\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020?H\u0014\u00a2\u0006\u0004\u0008@\u0010AJ\u0017\u0010B\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010(H\u0014\u00a2\u0006\u0004\u0008B\u0010CJ\u001d\u0010E\u001a\u0008\u0012\u0004\u0012\u00028\u00000D2\u0006\u0010\u0008\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010H\u001a\u00020GH\u0016\u00a2\u0006\u0004\u0008H\u0010IR.\u0010M\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0018\u00010:j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`J8\u0004X\u0085\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u001a\u0010S\u001a\u00020N8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010RR\u0014\u0010V\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010UR\u0014\u0010X\u001a\u00020G8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010IR\u0014\u0010Z\u001a\u0002008$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010UR\u0014\u0010[\u001a\u0002008$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0001\u0010UR\u001a\u0010^\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00038DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010]R\u001a\u0010`\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00038DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010]R\u0011\u0010a\u001a\u0002008F\u00a2\u0006\u0006\u001a\u0004\u0008a\u0010UR#\u0010e\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020b8F\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010dR\u0014\u0010g\u001a\u00020G8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010I\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006k"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/c;",
        "E",
        "Lkotlinx/coroutines/channels/j0;",
        "Lkotlinx/coroutines/channels/v;",
        "closed",
        "",
        "A",
        "(Lkotlinx/coroutines/channels/v;)Ljava/lang/Throwable;",
        "element",
        "z",
        "(Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)Ljava/lang/Throwable;",
        "",
        "M",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation;",
        "B",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V",
        "cause",
        "C",
        "(Ljava/lang/Throwable;)V",
        "y",
        "(Lkotlinx/coroutines/channels/v;)V",
        "R",
        "Lkotlinx/coroutines/selects/f;",
        "select",
        "Lkotlin/Function2;",
        "",
        "block",
        "K",
        "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "",
        "j",
        "()I",
        "H",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "I",
        "(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/i0;",
        "O",
        "()Lkotlinx/coroutines/channels/i0;",
        "Lkotlinx/coroutines/channels/g0;",
        "L",
        "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/g0;",
        "Lkotlinx/coroutines/internal/x$b;",
        "Lkotlinx/coroutines/internal/AddLastDesc;",
        "k",
        "(Ljava/lang/Object;)Lkotlinx/coroutines/internal/x$b;",
        "send",
        "",
        "offer",
        "(Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/channels/q;",
        "trySend-JP2dKIU",
        "trySend",
        "m",
        "(Lkotlinx/coroutines/channels/i0;)Ljava/lang/Object;",
        "close",
        "(Ljava/lang/Throwable;)Z",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/channels/Handler;",
        "handler",
        "invokeOnClose",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Lkotlinx/coroutines/internal/x;",
        "J",
        "(Lkotlinx/coroutines/internal/x;)V",
        "N",
        "()Lkotlinx/coroutines/channels/g0;",
        "Lkotlinx/coroutines/channels/c$d;",
        "l",
        "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/c$d;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "onUndeliveredElement",
        "Lkotlinx/coroutines/internal/v;",
        "b",
        "Lkotlinx/coroutines/internal/v;",
        "r",
        "()Lkotlinx/coroutines/internal/v;",
        "queue",
        "G",
        "()Z",
        "isFullImpl",
        "s",
        "queueDebugStateString",
        "D",
        "isBufferAlwaysFull",
        "isBufferFull",
        "q",
        "()Lkotlinx/coroutines/channels/v;",
        "closedForSend",
        "p",
        "closedForReceive",
        "isClosedForSend",
        "Lkotlinx/coroutines/selects/e;",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/e;",
        "onSend",
        "n",
        "bufferDebugString",
        "<init>",
        "c",
        "d",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field protected final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TE;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Lkotlinx/coroutines/internal/v;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/channels/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->a:Lkotlin/jvm/functions/Function1;

    .line 3
    new-instance p1, Lkotlinx/coroutines/internal/v;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/v;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method private final A(Lkotlinx/coroutines/channels/v;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/v<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/c;->y(Lkotlinx/coroutines/channels/v;)V

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/v;->o0()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method private final B(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;TE;",
            "Lkotlinx/coroutines/channels/v<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/c;->y(Lkotlinx/coroutines/channels/v;)V

    .line 2
    invoke-virtual {p3}, Lkotlinx/coroutines/channels/v;->o0()Ljava/lang/Throwable;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1, v2}, Lkotlinx/coroutines/internal/g0;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p2

    if-nez p2, :cond_1

    .line 4
    :goto_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-static {p2, p3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 6
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method private final C(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/b;->h:Lkotlinx/coroutines/internal/p0;

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v2, Lkotlinx/coroutines/channels/c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final G()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->S()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/g0;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final K(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;TE;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/channels/j0<",
            "-TE;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/c;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    new-instance v0, Lkotlinx/coroutines/channels/c$c;

    invoke-direct {v0, p2, p0, p1, p3}, Lkotlinx/coroutines/channels/c$c;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/c;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V

    .line 4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/c;->m(Lkotlinx/coroutines/channels/i0;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/f;->p(Lkotlinx/coroutines/l1;)V

    return-void

    .line 6
    :cond_1
    instance-of v0, v1, Lkotlinx/coroutines/channels/v;

    if-nez v0, :cond_4

    .line 7
    sget-object v0, Lkotlinx/coroutines/channels/b;->g:Lkotlinx/coroutines/internal/p0;

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    instance-of v0, v1, Lkotlinx/coroutines/channels/e0;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enqueueSend returned "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    check-cast v1, Lkotlinx/coroutines/channels/v;

    invoke-direct {p0, p2, v1}, Lkotlinx/coroutines/channels/c;->z(Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/o0;->p(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 11
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/channels/c;->I(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-static {}, Lkotlinx/coroutines/selects/g;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_6

    return-void

    .line 13
    :cond_6
    sget-object v1, Lkotlinx/coroutines/channels/b;->e:Lkotlinx/coroutines/internal/p0;

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 14
    :cond_7
    sget-object v1, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_8

    goto :goto_0

    .line 15
    :cond_8
    sget-object v1, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/p0;

    if-ne v0, v1, :cond_9

    .line 16
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->u()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lz7/b;->d(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-void

    .line 17
    :cond_9
    instance-of p1, v0, Lkotlinx/coroutines/channels/v;

    if-eqz p1, :cond_a

    check-cast v0, Lkotlinx/coroutines/channels/v;

    invoke-direct {p0, p2, v0}, Lkotlinx/coroutines/channels/c;->z(Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/o0;->p(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "offerSelectInternal returned "

    .line 18
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final M(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 1
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/t;->b(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/r;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {p0}, Lkotlinx/coroutines/channels/c;->c(Lkotlinx/coroutines/channels/c;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lkotlinx/coroutines/channels/k0;

    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/channels/k0;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/q;)V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/l0;

    iget-object v2, p0, Lkotlinx/coroutines/channels/c;->a:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, p1, v0, v2}, Lkotlinx/coroutines/channels/l0;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/q;Lkotlin/jvm/functions/Function1;)V

    .line 6
    :goto_1
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/channels/c;->m(Lkotlinx/coroutines/channels/i0;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    invoke-static {v0, v1}, Lkotlinx/coroutines/t;->c(Lkotlinx/coroutines/q;Lkotlinx/coroutines/internal/x;)V

    goto :goto_3

    .line 8
    :cond_1
    instance-of v1, v2, Lkotlinx/coroutines/channels/v;

    if-eqz v1, :cond_2

    .line 9
    check-cast v2, Lkotlinx/coroutines/channels/v;

    invoke-static {p0, v0, p1, v2}, Lkotlinx/coroutines/channels/c;->a(Lkotlinx/coroutines/channels/c;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V

    goto :goto_3

    .line 10
    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/b;->g:Lkotlinx/coroutines/internal/p0;

    if-ne v2, v1, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    instance-of v1, v2, Lkotlinx/coroutines/channels/e0;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "enqueueSend returned "

    .line 12
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    sget-object v2, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/p0;

    if-ne v1, v2, :cond_6

    .line 15
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_6
    sget-object v2, Lkotlinx/coroutines/channels/b;->e:Lkotlinx/coroutines/internal/p0;

    if-ne v1, v2, :cond_7

    goto :goto_0

    .line 17
    :cond_7
    instance-of v2, v1, Lkotlinx/coroutines/channels/v;

    if-eqz v2, :cond_a

    .line 18
    check-cast v1, Lkotlinx/coroutines/channels/v;

    invoke-static {p0, v0, p1, v1}, Lkotlinx/coroutines/channels/c;->a(Lkotlinx/coroutines/channels/c;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V

    .line 19
    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/r;->A()Ljava/lang/Object;

    move-result-object p1

    .line 20
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_8

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 21
    :cond_8
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_9

    return-object p1

    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 22
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "offerInternal returned "

    .line 23
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lkotlinx/coroutines/channels/c;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/c;->B(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)V

    return-void
.end method

.method public static final synthetic c(Lkotlinx/coroutines/channels/c;)Z
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/c;->G()Z

    move-result p0

    return p0
.end method

.method public static final synthetic f(Lkotlinx/coroutines/channels/c;Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/c;->K(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic i(Lkotlinx/coroutines/channels/c;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->M(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final j()I
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/x;

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    instance-of v3, v1, Lkotlinx/coroutines/internal/x;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/x;->S()Lkotlinx/coroutines/internal/x;

    move-result-object v1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private final s()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->S()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    if-ne v0, v1, :cond_0

    const-string v0, "EmptyQueue"

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/channels/v;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/channels/e0;

    if-eqz v1, :cond_2

    const-string v1, "ReceiveQueued"

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/channels/i0;

    if-eqz v1, :cond_3

    const-string v1, "SendQueued"

    goto :goto_0

    :cond_3
    const-string v1, "UNEXPECTED:"

    .line 6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v2

    if-eq v2, v0, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",queueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/c;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    instance-of v0, v2, Lkotlinx/coroutines/channels/v;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private final y(Lkotlinx/coroutines/channels/v;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/v<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/p;->c(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v3

    instance-of v4, v3, Lkotlinx/coroutines/channels/e0;

    if-eqz v4, :cond_0

    check-cast v3, Lkotlinx/coroutines/channels/e0;

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_5

    if-nez v2, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    instance-of v0, v2, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    check-cast v2, Lkotlinx/coroutines/channels/e0;

    .line 4
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/channels/e0;->i0(Lkotlinx/coroutines/channels/v;)V

    goto :goto_3

    .line 5
    :cond_2
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_4

    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 7
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/e0;

    .line 8
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/e0;->i0(Lkotlinx/coroutines/channels/v;)V

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    .line 9
    :cond_4
    :goto_3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->J(Lkotlinx/coroutines/internal/x;)V

    return-void

    .line 10
    :cond_5
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/x;->Z()Z

    move-result v4

    if-nez v4, :cond_6

    .line 11
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/x;->U()V

    goto :goto_0

    .line 12
    :cond_6
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private final z(Ljava/lang/Object;Lkotlinx/coroutines/channels/v;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/channels/v<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/c;->y(Lkotlinx/coroutines/channels/v;)V

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->a:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lkotlinx/coroutines/internal/g0;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/channels/v;->o0()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p2}, Lkotlinx/coroutines/channels/v;->o0()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 4
    throw p1
.end method


# virtual methods
.method protected abstract D()Z
.end method

.method protected abstract E()Z
.end method

.method protected H(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->N()Lkotlinx/coroutines/channels/g0;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/b;->e:Lkotlinx/coroutines/internal/p0;

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Lkotlinx/coroutines/channels/g0;->x(Ljava/lang/Object;Lkotlinx/coroutines/internal/x$d;)Lkotlinx/coroutines/internal/p0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/g0;->o(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0}, Lkotlinx/coroutines/channels/g0;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected I(Ljava/lang/Object;Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlinx/coroutines/selects/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/selects/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->l(Ljava/lang/Object;)Lkotlinx/coroutines/channels/c$d;

    move-result-object v0

    .line 2
    invoke-interface {p2, v0}, Lkotlinx/coroutines/selects/f;->w(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x$e;->o()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/channels/g0;

    .line 4
    invoke-interface {p2, p1}, Lkotlinx/coroutines/channels/g0;->o(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p2}, Lkotlinx/coroutines/channels/g0;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected J(Lkotlinx/coroutines/internal/x;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/x;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method protected final L(Ljava/lang/Object;)Lkotlinx/coroutines/channels/g0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/channels/g0<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    new-instance v1, Lkotlinx/coroutines/channels/c$a;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/channels/c$a;-><init>(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object p1

    .line 3
    instance-of v2, p1, Lkotlinx/coroutines/channels/g0;

    if-eqz v2, :cond_1

    check-cast p1, Lkotlinx/coroutines/channels/g0;

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1, v1, v0}, Lkotlinx/coroutines/internal/x;->K(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected N()Lkotlinx/coroutines/channels/g0;
    .locals 4
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
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/x;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/channels/g0;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/g0;

    .line 5
    instance-of v2, v2, Lkotlinx/coroutines/channels/v;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/x;->W()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/x;->c0()Lkotlinx/coroutines/internal/x;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lkotlinx/coroutines/channels/g0;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/x;->V()V

    goto :goto_0
.end method

.method protected final O()Lkotlinx/coroutines/channels/i0;
    .locals 4
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->R()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/x;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/channels/i0;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/i0;

    .line 5
    instance-of v2, v2, Lkotlinx/coroutines/channels/v;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/x;->W()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/x;->c0()Lkotlinx/coroutines/internal/x;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lkotlinx/coroutines/channels/i0;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/x;->V()V

    goto :goto_0
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/v;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/v;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    .line 3
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lkotlinx/coroutines/channels/v;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/internal/x;->K(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/v;

    .line 7
    :goto_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/c;->y(Lkotlinx/coroutines/channels/v;)V

    if-eqz v4, :cond_3

    .line 8
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/c;->C(Ljava/lang/Throwable;)V

    :cond_3
    return v4
.end method

.method public final getOnSend()Lkotlinx/coroutines/selects/e;
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

    new-instance v0, Lkotlinx/coroutines/channels/c$f;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/c$f;-><init>(Lkotlinx/coroutines/channels/c;)V

    return-object v0
.end method

.method public invokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 3
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

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/channels/c;->onCloseHandler:Ljava/lang/Object;

    .line 3
    sget-object v0, Lkotlinx/coroutines/channels/b;->h:Lkotlinx/coroutines/internal/p0;

    if-ne p1, v0, :cond_0

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered and successfully invoked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another handler was already registered: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->q()Lkotlinx/coroutines/channels/v;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v2, Lkotlinx/coroutines/channels/b;->h:Lkotlinx/coroutines/internal/p0;

    invoke-static {v0, p0, p1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v1, Lkotlinx/coroutines/channels/v;->d:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final isClosedForSend()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->q()Lkotlinx/coroutines/channels/v;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final k(Ljava/lang/Object;)Lkotlinx/coroutines/internal/x$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/internal/x$b<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/c$b;

    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/channels/c$b;-><init>(Lkotlinx/coroutines/internal/v;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final l(Ljava/lang/Object;)Lkotlinx/coroutines/channels/c$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/channels/c$d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/c$d;

    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/channels/c$d;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/internal/v;)V

    return-object v0
.end method

.method protected m(Lkotlinx/coroutines/channels/i0;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlinx/coroutines/channels/i0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/channels/g0;

    if-eqz v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {v1, p1, v0}, Lkotlinx/coroutines/internal/x;->K(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    .line 7
    new-instance v1, Lkotlinx/coroutines/channels/c$e;

    invoke-direct {v1, p1, p0}, Lkotlinx/coroutines/channels/c$e;-><init>(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/channels/c;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lkotlinx/coroutines/channels/g0;

    if-eqz v3, :cond_3

    return-object v2

    .line 10
    :cond_3
    invoke-virtual {v2, p1, v0, v1}, Lkotlinx/coroutines/internal/x;->e0(Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x;Lkotlinx/coroutines/internal/x$c;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    if-nez v3, :cond_6

    .line 11
    sget-object p1, Lkotlinx/coroutines/channels/b;->g:Lkotlinx/coroutines/internal/p0;

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected n()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/j0$a;->c(Lkotlinx/coroutines/channels/j0;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->a:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v3}, Lkotlinx/coroutines/internal/g0;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 4
    throw p1

    .line 5
    :cond_1
    :goto_0
    throw v0
.end method

.method protected final p()Lkotlinx/coroutines/channels/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/v<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->S()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/channels/v;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/c;->y(Lkotlinx/coroutines/channels/v;)V

    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method protected final q()Lkotlinx/coroutines/channels/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/v<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/x;->T()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/channels/v;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/c;->y(Lkotlinx/coroutines/channels/v;)V

    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method protected final r()Lkotlinx/coroutines/internal/v;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/internal/v;

    return-object v0
.end method

.method public final send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/p0;

    if-ne v0, v1, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->M(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/v0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/v0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/c;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lkotlinx/coroutines/channels/b;->d:Lkotlinx/coroutines/internal/p0;

    if-ne p1, v0, :cond_0

    sget-object p1, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/channels/q$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/b;->e:Lkotlinx/coroutines/internal/p0;

    if-ne p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c;->q()Lkotlinx/coroutines/channels/v;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/q$b;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/c;->A(Lkotlinx/coroutines/channels/v;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/q$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/channels/v;

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lkotlinx/coroutines/channels/q;->b:Lkotlinx/coroutines/channels/q$b;

    check-cast p1, Lkotlinx/coroutines/channels/v;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/c;->A(Lkotlinx/coroutines/channels/v;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/q$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trySend returned "

    .line 8
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
