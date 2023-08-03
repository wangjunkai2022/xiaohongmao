.class public final Lkotlinx/coroutines/internal/l;
.super Lkotlinx/coroutines/f1;
.source "DispatchedContinuation.kt"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/f1<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,317:1\n243#1,8:389\n255#1:397\n256#1,2:408\n258#1:413\n155#2,2:318\n155#2,2:320\n155#2,2:322\n155#2,2:324\n1#3:326\n1#3:332\n1#3:373\n297#4,5:327\n302#4,12:333\n314#4:367\n297#4,5:368\n302#4,12:374\n314#4:428\n199#5,3:345\n202#5,14:353\n199#5,3:386\n202#5,14:414\n95#6,5:348\n107#6,10:398\n118#6,2:410\n117#6:412\n107#6,13:429\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n225#1:389,8\n226#1:397\n226#1:408,2\n226#1:413\n79#1:318,2\n105#1:320,2\n149#1:322,2\n169#1:324,2\n203#1:332\n224#1:373\n203#1:327,5\n203#1:333,12\n203#1:367\n224#1:368,5\n224#1:374,12\n224#1:428\n203#1:345,3\n203#1:353,14\n224#1:386,3\n224#1:414,14\n204#1:348,5\n226#1:398,10\n226#1:410,2\n226#1:412\n255#1:429,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\u0008\u0012\u0004\u0012\u00028\u00000\u0005B\u001d\u0012\u0006\u0010:\u001a\u000208\u0012\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0004\u0008L\u0010MJ\u0017\u0010\u0008\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0015\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0010\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ \u0010!\u001a\u00020\r2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001fH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"JH\u0010\'\u001a\u00020\r2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001f2%\u0008\u0008\u0010&\u001a\u001f\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008$\u0012\u0008\u0008%\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\r\u0018\u00010#H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(J!\u0010*\u001a\u00020\r2\u0008\u0010)\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0019\u001a\u00020\u0016H\u0010\u00a2\u0006\u0004\u0008*\u0010+J\u001a\u0010-\u001a\u00020\n2\u0008\u0010,\u001a\u0004\u0018\u00010\u001cH\u0086\u0008\u00a2\u0006\u0004\u0008-\u0010.J!\u0010/\u001a\u00020\r2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001fH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u0010\"J\u001f\u00103\u001a\u00020\r2\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u00083\u00104J\u000f\u00106\u001a\u000205H\u0016\u00a2\u0006\u0004\u00086\u00107R\u0014\u0010:\u001a\u0002088\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u00109R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u001e\u0010@\u001a\u0004\u0018\u00010\u001c8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000c\n\u0004\u0008=\u0010>\u0012\u0004\u0008?\u0010\u000fR\u0014\u0010B\u001a\u00020\u001c8\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010>R\u001a\u0010D\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010\u0013R\u0014\u00101\u001a\u0002008\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010FR\u001c\u0010I\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u001a\u0010K\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010J\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006N"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/l;",
        "T",
        "Lkotlinx/coroutines/f1;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "Lkotlin/coroutines/Continuation;",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getStackTraceElement",
        "()Ljava/lang/StackTraceElement;",
        "",
        "u",
        "()Z",
        "",
        "o",
        "()V",
        "w",
        "Lkotlinx/coroutines/r;",
        "p",
        "()Lkotlinx/coroutines/r;",
        "Lkotlinx/coroutines/q;",
        "continuation",
        "",
        "D",
        "(Lkotlinx/coroutines/q;)Ljava/lang/Throwable;",
        "cause",
        "v",
        "(Ljava/lang/Throwable;)Z",
        "",
        "n",
        "()Ljava/lang/Object;",
        "Lkotlin/Result;",
        "result",
        "resumeWith",
        "(Ljava/lang/Object;)V",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "onCancellation",
        "x",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "takenState",
        "d",
        "(Ljava/lang/Object;Ljava/lang/Throwable;)V",
        "state",
        "y",
        "(Ljava/lang/Object;)Z",
        "A",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "value",
        "q",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lkotlinx/coroutines/n0;",
        "Lkotlinx/coroutines/n0;",
        "dispatcher",
        "e",
        "Lkotlin/coroutines/Continuation;",
        "f",
        "Ljava/lang/Object;",
        "get_state$kotlinx_coroutines_core$annotations",
        "_state",
        "g",
        "countOrElement",
        "s",
        "reusableCancellableContinuation",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "callerFrame",
        "()Lkotlin/coroutines/Continuation;",
        "delegate",
        "<init>",
        "(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)V",
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
.field private static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public final d:Lkotlinx/coroutines/n0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public final e:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public f:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field public final g:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/internal/l;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/f1;-><init>(I)V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/l;->d:Lkotlinx/coroutines/n0;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/internal/l;->e:Lkotlin/coroutines/Continuation;

    .line 4
    invoke-static {}, Lkotlinx/coroutines/internal/m;->a()Lkotlinx/coroutines/internal/p0;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/l;->f:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/u0;->b(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/l;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lkotlinx/coroutines/internal/l;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method

.method private final s()Lkotlinx/coroutines/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/r<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/r;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/r;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic t()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->e:Lkotlin/coroutines/Continuation;

    iget-object v1, p0, Lkotlinx/coroutines/internal/l;->g:Ljava/lang/Object;

    .line 2
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 3
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/u0;->c(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v3, Lkotlinx/coroutines/internal/u0;->a:Lkotlinx/coroutines/internal/p0;

    if-eq v1, v3, :cond_0

    .line 5
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/m0;->g(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/w3;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    .line 6
    :try_start_0
    iget-object v4, p0, Lkotlinx/coroutines/internal/l;->e:Lkotlin/coroutines/Continuation;

    invoke-interface {v4, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lkotlinx/coroutines/w3;->q1()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    :cond_1
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/u0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/w3;->q1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    :cond_3
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/u0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method

.method public final D(Lkotlinx/coroutines/q;)Ljava/lang/Throwable;
    .locals 3
    .param p1    # Lkotlinx/coroutines/q;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/q<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlinx/coroutines/internal/m;->b:Lkotlinx/coroutines/internal/p0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    .line 4
    :cond_1
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 5
    sget-object p1, Lkotlinx/coroutines/internal/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent state "

    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/f0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lkotlinx/coroutines/f0;

    iget-object p1, p1, Lkotlinx/coroutines/f0;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e()Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    return-object p0
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->e:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->e:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/Object;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->f:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/internal/m;->a()Lkotlinx/coroutines/internal/p0;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/internal/l;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final o()V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlinx/coroutines/internal/m;->b:Lkotlinx/coroutines/internal/p0;

    if-eq v0, v1, :cond_0

    return-void
.end method

.method public final p()Lkotlinx/coroutines/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/r<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->_reusableCancellableContinuation:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/m;->b:Lkotlinx/coroutines/internal/p0;

    iput-object v0, p0, Lkotlinx/coroutines/internal/l;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/r;

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Lkotlinx/coroutines/internal/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lkotlinx/coroutines/internal/m;->b:Lkotlinx/coroutines/internal/p0;

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lkotlinx/coroutines/r;

    return-object v0

    .line 6
    :cond_2
    sget-object v1, Lkotlinx/coroutines/internal/m;->b:Lkotlinx/coroutines/internal/p0;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Inconsistent state "

    .line 8
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final q(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lkotlinx/coroutines/internal/l;->f:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lkotlinx/coroutines/f1;->c:I

    .line 3
    iget-object p2, p0, Lkotlinx/coroutines/internal/l;->d:Lkotlinx/coroutines/n0;

    invoke-virtual {p2, p1, p0}, Lkotlinx/coroutines/n0;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->e:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v1, v2, v1}, Lkotlinx/coroutines/j0;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lkotlinx/coroutines/internal/l;->d:Lkotlinx/coroutines/n0;

    invoke-virtual {v4, v0}, Lkotlinx/coroutines/n0;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 4
    iput-object v3, p0, Lkotlinx/coroutines/internal/l;->f:Ljava/lang/Object;

    .line 5
    iput v5, p0, Lkotlinx/coroutines/f1;->c:I

    .line 6
    iget-object p1, p0, Lkotlinx/coroutines/internal/l;->d:Lkotlinx/coroutines/n0;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/n0;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lkotlinx/coroutines/p3;->a:Lkotlinx/coroutines/p3;

    invoke-virtual {v0}, Lkotlinx/coroutines/p3;->b()Lkotlinx/coroutines/p1;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lkotlinx/coroutines/p1;->x0()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    iput-object v3, p0, Lkotlinx/coroutines/internal/l;->f:Ljava/lang/Object;

    .line 10
    iput v5, p0, Lkotlinx/coroutines/f1;->c:I

    .line 11
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/p1;->s0(Lkotlinx/coroutines/f1;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/p1;->u0(Z)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/coroutines/internal/l;->g:Ljava/lang/Object;

    .line 14
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/u0;->c(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/l;->e:Lkotlin/coroutines/Continuation;

    invoke-interface {v5, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 16
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/u0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 18
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/p1;->A0()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/u0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 20
    :try_start_3
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/f1;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    :goto_0
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/p1;->p0(Z)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/p1;->p0(Z)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/l;->d:Lkotlinx/coroutines/n0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/l;->e:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/v0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->_reusableCancellableContinuation:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlinx/coroutines/internal/m;->b:Lkotlinx/coroutines/internal/p0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 4
    :cond_1
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    return v3

    .line 5
    :cond_2
    sget-object v1, Lkotlinx/coroutines/internal/l;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final w()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->o()V

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/internal/l;->s()Lkotlinx/coroutines/r;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/r;->v()V

    :goto_0
    return-void
.end method

.method public final x(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lkotlinx/coroutines/j0;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/l;->d:Lkotlinx/coroutines/n0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/n0;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/internal/l;->f:Ljava/lang/Object;

    .line 4
    iput v1, p0, Lkotlinx/coroutines/f1;->c:I

    .line 5
    iget-object p1, p0, Lkotlinx/coroutines/internal/l;->d:Lkotlinx/coroutines/n0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/n0;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 6
    :cond_0
    sget-object v0, Lkotlinx/coroutines/p3;->a:Lkotlinx/coroutines/p3;

    invoke-virtual {v0}, Lkotlinx/coroutines/p3;->b()Lkotlinx/coroutines/p1;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lkotlinx/coroutines/p1;->x0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iput-object p2, p0, Lkotlinx/coroutines/internal/l;->f:Ljava/lang/Object;

    .line 9
    iput v1, p0, Lkotlinx/coroutines/f1;->c:I

    .line 10
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/p1;->s0(Lkotlinx/coroutines/f1;)V

    goto/16 :goto_4

    .line 11
    :cond_1
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/p1;->u0(Z)V

    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/j2;->k2:Lkotlinx/coroutines/j2$b;

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/j2;

    if-eqz v3, :cond_2

    .line 13
    invoke-interface {v3}, Lkotlinx/coroutines/j2;->a()Z

    move-result v4

    if-nez v4, :cond_2

    .line 14
    invoke-interface {v3}, Lkotlinx/coroutines/j2;->A()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    .line 15
    invoke-virtual {p0, p2, v3}, Lkotlinx/coroutines/internal/l;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 16
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_8

    .line 17
    iget-object p2, p0, Lkotlinx/coroutines/internal/l;->e:Lkotlin/coroutines/Continuation;

    iget-object v3, p0, Lkotlinx/coroutines/internal/l;->g:Ljava/lang/Object;

    .line 18
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 19
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/u0;->c(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 20
    sget-object v5, Lkotlinx/coroutines/internal/u0;->a:Lkotlinx/coroutines/internal/p0;

    if-eq v3, v5, :cond_3

    .line 21
    invoke-static {p2, v4, v3}, Lkotlinx/coroutines/m0;->g(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/w3;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_3
    move-object p2, v2

    .line 22
    :goto_1
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/l;->e:Lkotlin/coroutines/Continuation;

    invoke-interface {v5, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p2, :cond_4

    .line 24
    invoke-virtual {p2}, Lkotlinx/coroutines/w3;->q1()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 25
    :cond_4
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/u0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p2, :cond_6

    .line 27
    invoke-virtual {p2}, Lkotlinx/coroutines/w3;->q1()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 28
    :cond_6
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/u0;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1

    .line 29
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/p1;->A0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 30
    :try_start_3
    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/f1;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 31
    :goto_3
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/p1;->p0(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    :goto_4
    return-void

    :catchall_2
    move-exception p1

    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 33
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/p1;->p0(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method

.method public final y(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/l;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/j2;->k2:Lkotlinx/coroutines/j2$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/j2;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lkotlinx/coroutines/j2;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0}, Lkotlinx/coroutines/j2;->A()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/internal/l;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 5
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
