.class public Lkotlinx/coroutines/flow/y;
.super Lkotlinx/coroutines/flow/internal/a;
.source "SharedFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/s;
.implements Lkotlinx/coroutines/flow/c;
.implements Lkotlinx/coroutines/flow/internal/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/y$a;,
        Lkotlinx/coroutines/flow/y$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/a<",
        "Lkotlinx/coroutines/flow/a0;",
        ">;",
        "Lkotlinx/coroutines/flow/s<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/c<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/p<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,733:1\n20#2:734\n20#2:736\n20#2:754\n20#2:757\n20#2:765\n20#2:775\n20#2:785\n329#3:735\n1#4:737\n97#5,2:738\n99#5,2:741\n101#5:744\n97#5,2:758\n99#5,2:761\n101#5:764\n97#5,2:778\n99#5,2:781\n101#5:784\n13536#6:740\n13537#6:743\n13536#6:760\n13537#6:763\n13536#6:780\n13537#6:783\n314#7,9:745\n323#7,2:755\n314#7,9:766\n323#7,2:776\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n352#1:734\n392#1:736\n486#1:754\n507#1:757\n627#1:765\n662#1:775\n690#1:785\n374#1:735\n454#1:738,2\n454#1:741,2\n454#1:744\n530#1:758,2\n530#1:761,2\n530#1:764\n677#1:778,2\n677#1:781,2\n677#1:784\n454#1:740\n454#1:743\n530#1:760\n530#1:763\n677#1:780\n677#1:783\n484#1:745,9\n484#1:755,2\n661#1:766,9\n661#1:776,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010 \n\u0002\u0008\u000b\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0008\u0012\u0004\u0012\u00028\u00000\u0006:\u0001HB\u001f\u0012\u0006\u0010I\u001a\u00020\u0016\u0012\u0006\u0010K\u001a\u00020\u0016\u0012\u0006\u0010F\u001a\u00020E\u00a2\u0006\u0004\u0008m\u0010nJ\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0012\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002J9\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00142\u0010\u0010\u0015\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001b\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J(\u0010$\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000eH\u0002J\u0008\u0010%\u001a\u00020\u000cH\u0002J\u0012\u0010\'\u001a\u0004\u0018\u00010\u00112\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0010\u0010(\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010\u00112\u0006\u0010)\u001a\u00020\u000eH\u0002J\u001b\u0010+\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u0003H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,J3\u0010/\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010-0\u00142\u0014\u0010.\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010-0\u0014H\u0002\u00a2\u0006\u0004\u0008/\u00100J!\u00104\u001a\u0002032\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00028\u000001H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105J\u0017\u00106\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u00086\u0010\nJ\u001b\u00107\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u0010\u001cJ\u000f\u00108\u001a\u00020\u000eH\u0000\u00a2\u0006\u0004\u00088\u00109J%\u0010;\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010-0\u00142\u0006\u0010:\u001a\u00020\u000eH\u0000\u00a2\u0006\u0004\u0008;\u0010<J\u0008\u0010=\u001a\u00020\u0003H\u0014J\u001f\u0010?\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00142\u0006\u0010>\u001a\u00020\u0016H\u0014\u00a2\u0006\u0004\u0008?\u0010@J\u0008\u0010A\u001a\u00020\u000cH\u0016J&\u0010H\u001a\u0008\u0012\u0004\u0012\u00028\u00000G2\u0006\u0010C\u001a\u00020B2\u0006\u0010D\u001a\u00020\u00162\u0006\u0010F\u001a\u00020EH\u0016R\u0014\u0010I\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010\rR\u0014\u0010K\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010\rR\u0014\u0010F\u001a\u00020E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR \u0010P\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0016\u0010S\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0016\u0010U\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010RR\u0016\u0010W\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010\rR\u0016\u0010Y\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010\rR\u0014\u0010[\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Z\u00109R\u0014\u0010]\u001a\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0001\u0010\\R\u0014\u0010_\u001a\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008^\u0010\\R\u0014\u0010a\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008`\u00109R\u0014\u0010c\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008b\u00109R\u001a\u0010g\u001a\u0008\u0012\u0004\u0012\u00028\u00000d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010fR\u001a\u0010l\u001a\u00028\u00008DX\u0084\u0004\u00a2\u0006\u000c\u0012\u0004\u0008j\u0010k\u001a\u0004\u0008h\u0010i\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006o"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/y;",
        "T",
        "Lkotlinx/coroutines/flow/internal/a;",
        "Lkotlinx/coroutines/flow/a0;",
        "Lkotlinx/coroutines/flow/s;",
        "Lkotlinx/coroutines/flow/c;",
        "Lkotlinx/coroutines/flow/internal/p;",
        "value",
        "",
        "W",
        "(Ljava/lang/Object;)Z",
        "X",
        "",
        "I",
        "",
        "newHead",
        "F",
        "",
        "item",
        "L",
        "",
        "curBuffer",
        "",
        "curSize",
        "newSize",
        "V",
        "([Ljava/lang/Object;II)[Ljava/lang/Object;",
        "K",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/y$a;",
        "emitter",
        "C",
        "newReplayIndex",
        "newMinCollectorIndex",
        "newBufferEndIndex",
        "newQueueEndIndex",
        "a0",
        "D",
        "slot",
        "Z",
        "Y",
        "index",
        "R",
        "B",
        "(Lkotlinx/coroutines/flow/a0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation;",
        "resumesIn",
        "M",
        "([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;",
        "Lkotlinx/coroutines/flow/j;",
        "collector",
        "",
        "collect",
        "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "c",
        "emit",
        "c0",
        "()J",
        "oldIndex",
        "b0",
        "(J)[Lkotlin/coroutines/Continuation;",
        "G",
        "size",
        "H",
        "(I)[Lkotlinx/coroutines/flow/a0;",
        "e",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "capacity",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "Lkotlinx/coroutines/flow/i;",
        "a",
        "replay",
        "f",
        "bufferCapacity",
        "g",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "h",
        "[Ljava/lang/Object;",
        "buffer",
        "i",
        "J",
        "replayIndex",
        "j",
        "minCollectorIndex",
        "k",
        "bufferSize",
        "l",
        "queueSize",
        "O",
        "head",
        "()I",
        "replaySize",
        "U",
        "totalSize",
        "N",
        "bufferEndIndex",
        "S",
        "queueEndIndex",
        "",
        "b",
        "()Ljava/util/List;",
        "replayCache",
        "P",
        "()Ljava/lang/Object;",
        "getLastReplayedLocked$annotations",
        "()V",
        "lastReplayedLocked",
        "<init>",
        "(IILkotlinx/coroutines/channels/BufferOverflow;)V",
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
.field private final e:I

.field private final f:I

.field private final g:Lkotlinx/coroutines/channels/BufferOverflow;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private h:[Ljava/lang/Object;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private i:J

.field private j:J

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(IILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 0
    .param p3    # Lkotlinx/coroutines/channels/BufferOverflow;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/a;-><init>()V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/flow/y;->e:I

    .line 3
    iput p2, p0, Lkotlinx/coroutines/flow/y;->f:I

    .line 4
    iput-object p3, p0, Lkotlinx/coroutines/flow/y;->g:Lkotlinx/coroutines/channels/BufferOverflow;

    return-void
.end method

.method public static final synthetic A(Lkotlinx/coroutines/flow/y;Lkotlinx/coroutines/flow/a0;)J
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/y;->Y(Lkotlinx/coroutines/flow/a0;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final B(Lkotlinx/coroutines/flow/a0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/a0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/r;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/r;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/r;->C()V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/y;->A(Lkotlinx/coroutines/flow/y;Lkotlinx/coroutines/flow/a0;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 5
    iput-object v0, p1, Lkotlinx/coroutines/flow/a0;->b:Lkotlin/coroutines/Continuation;

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 7
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 8
    invoke-virtual {v0}, Lkotlinx/coroutines/r;->A()Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 10
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne v0, p2, :cond_2

    return-object v0

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    throw p1
.end method

.method private final C(Lkotlinx/coroutines/flow/y$a;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p1, Lkotlinx/coroutines/flow/y$a;->b:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lkotlinx/coroutines/flow/y;->h:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iget-wide v1, p1, Lkotlinx/coroutines/flow/y$a;->b:J

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/z;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, p1, :cond_1

    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_2
    iget-wide v1, p1, Lkotlinx/coroutines/flow/y$a;->b:J

    sget-object p1, Lkotlinx/coroutines/flow/z;->a:Lkotlinx/coroutines/internal/p0;

    invoke-static {v0, v1, v2, p1}, Lkotlinx/coroutines/flow/z;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->D()V

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final D()V
    .locals 5

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/y;->f:I

    if-nez v0, :cond_0

    iget v0, p0, Lkotlinx/coroutines/flow/y;->l:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/y;->h:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    :goto_0
    iget v1, p0, Lkotlinx/coroutines/flow/y;->l:I

    if-lez v1, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->U()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/z;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/z;->a:Lkotlinx/coroutines/internal/p0;

    if-ne v1, v2, :cond_1

    .line 4
    iget v1, p0, Lkotlinx/coroutines/flow/y;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/coroutines/flow/y;->l:I

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->U()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/z;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic E(Lkotlinx/coroutines/flow/y;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lkotlinx/coroutines/flow/y$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/y$c;

    iget v1, v0, Lkotlinx/coroutines/flow/y$c;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/y$c;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/y$c;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/y$c;-><init>(Lkotlinx/coroutines/flow/y;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/y$c;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/y$c;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/y$c;->d:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/j2;

    iget-object p1, v0, Lkotlinx/coroutines/flow/y$c;->c:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/a0;

    iget-object v2, v0, Lkotlinx/coroutines/flow/y$c;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/j;

    iget-object v5, v0, Lkotlinx/coroutines/flow/y$c;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/y;

    :goto_1
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/flow/y$c;->d:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/j2;

    iget-object p1, v0, Lkotlinx/coroutines/flow/y$c;->c:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/a0;

    iget-object v2, v0, Lkotlinx/coroutines/flow/y$c;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/j;

    iget-object v5, v0, Lkotlinx/coroutines/flow/y$c;->a:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/y;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/flow/y$c;->c:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/flow/a0;

    iget-object p0, v0, Lkotlinx/coroutines/flow/y$c;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/j;

    iget-object v2, v0, Lkotlinx/coroutines/flow/y$c;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/y;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p2, p0

    move-object p0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v5, v2

    goto/16 :goto_5

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->h()Lkotlinx/coroutines/flow/internal/c;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/a0;

    .line 5
    :try_start_2
    instance-of v2, p1, Lkotlinx/coroutines/flow/l0;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/flow/l0;

    iput-object p0, v0, Lkotlinx/coroutines/flow/y$c;->a:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/y$c;->b:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/y$c;->c:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/y$c;->g:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/l0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 6
    :goto_2
    :try_start_3
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 7
    sget-object v5, Lkotlinx/coroutines/j2;->k2:Lkotlinx/coroutines/j2$b;

    invoke-interface {v2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/j2;

    .line 8
    :cond_6
    :goto_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/y;->Z(Lkotlinx/coroutines/flow/a0;)Ljava/lang/Object;

    move-result-object v5

    .line 9
    sget-object v6, Lkotlinx/coroutines/flow/z;->a:Lkotlinx/coroutines/internal/p0;

    if-eq v5, v6, :cond_8

    if-nez v2, :cond_7

    goto :goto_4

    .line 10
    :cond_7
    invoke-static {v2}, Lkotlinx/coroutines/m2;->A(Lkotlinx/coroutines/j2;)V

    .line 11
    :goto_4
    iput-object p0, v0, Lkotlinx/coroutines/flow/y$c;->a:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/y$c;->b:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/y$c;->c:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/y$c;->d:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/y$c;->g:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/flow/j;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    return-object v1

    .line 12
    :cond_8
    iput-object p0, v0, Lkotlinx/coroutines/flow/y$c;->a:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/y$c;->b:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/y$c;->c:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/y$c;->d:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/y$c;->g:I

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/flow/y;->B(Lkotlinx/coroutines/flow/a0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v5, v1, :cond_6

    return-object v1

    :catchall_2
    move-exception p2

    move-object v5, p0

    move-object p0, p2

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    move-object p1, p2

    .line 13
    :goto_5
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/flow/internal/a;->l(Lkotlinx/coroutines/flow/internal/c;)V

    throw p0
.end method

.method private final F(J)V
    .locals 9

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/a;->f(Lkotlinx/coroutines/flow/internal/a;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/a;->g(Lkotlinx/coroutines/flow/internal/a;)[Lkotlinx/coroutines/flow/internal/c;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3
    array-length v2, v0

    :cond_2
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    if-eqz v3, :cond_2

    .line 4
    check-cast v3, Lkotlinx/coroutines/flow/a0;

    .line 5
    iget-wide v4, v3, Lkotlinx/coroutines/flow/a0;->a:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    cmp-long v6, v4, p1

    if-gez v6, :cond_2

    .line 6
    iput-wide p1, v3, Lkotlinx/coroutines/flow/a0;->a:J

    goto :goto_0

    .line 7
    :cond_3
    :goto_1
    iput-wide p1, p0, Lkotlinx/coroutines/flow/y;->j:J

    return-void
.end method

.method private final I()V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/y;->h:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/z;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    iget v0, p0, Lkotlinx/coroutines/flow/y;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/flow/y;->k:I

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 4
    iget-wide v2, p0, Lkotlinx/coroutines/flow/y;->i:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/y;->i:J

    .line 5
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/flow/y;->j:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/y;->F(J)V

    :cond_1
    return-void
.end method

.method static synthetic J(Lkotlinx/coroutines/flow/y;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/y;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/y;->K(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final K(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
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

    .line 1
    new-instance v6, Lkotlinx/coroutines/r;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lkotlinx/coroutines/r;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 2
    invoke-virtual {v6}, Lkotlinx/coroutines/r;->C()V

    .line 3
    sget-object v8, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/y;->z(Lkotlinx/coroutines/flow/y;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v6, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 7
    invoke-static {p0, v8}, Lkotlinx/coroutines/flow/y;->t(Lkotlinx/coroutines/flow/y;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v9, Lkotlinx/coroutines/flow/y$a;

    invoke-static {p0}, Lkotlinx/coroutines/flow/y;->v(Lkotlinx/coroutines/flow/y;)J

    move-result-wide v0

    invoke-static {p0}, Lkotlinx/coroutines/flow/y;->x(Lkotlinx/coroutines/flow/y;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/y$a;-><init>(Lkotlinx/coroutines/flow/y;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 9
    invoke-static {p0, v9}, Lkotlinx/coroutines/flow/y;->s(Lkotlinx/coroutines/flow/y;Ljava/lang/Object;)V

    .line 10
    invoke-static {p0}, Lkotlinx/coroutines/flow/y;->w(Lkotlinx/coroutines/flow/y;)I

    move-result p1

    add-int/2addr p1, v7

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/y;->y(Lkotlinx/coroutines/flow/y;I)V

    .line 11
    invoke-static {p0}, Lkotlinx/coroutines/flow/y;->u(Lkotlinx/coroutines/flow/y;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, v8}, Lkotlinx/coroutines/flow/y;->t(Lkotlinx/coroutines/flow/y;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p1, v8

    move-object v0, v9

    .line 12
    :goto_0
    monitor-exit p0

    if-nez v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v6, v0}, Lkotlinx/coroutines/t;->a(Lkotlinx/coroutines/q;Lkotlinx/coroutines/l1;)V

    :goto_1
    const/4 v0, 0x0

    .line 14
    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v6}, Lkotlinx/coroutines/r;->A()Ljava/lang/Object;

    move-result-object p1

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_5

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 17
    :cond_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_6

    return-object p1

    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    throw p1
.end method

.method private final L(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->U()I

    move-result v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/flow/y;->h:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-direct {p0, v1, v3, v2}, Lkotlinx/coroutines/flow/y;->V([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Lkotlinx/coroutines/flow/y;->V([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/flow/z;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final M([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/a;->f(Lkotlinx/coroutines/flow/internal/a;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/a;->g(Lkotlinx/coroutines/flow/internal/a;)[Lkotlinx/coroutines/flow/internal/c;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 4
    array-length v3, v1

    :cond_2
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    if-eqz v4, :cond_2

    .line 5
    check-cast v4, Lkotlinx/coroutines/flow/a0;

    .line 6
    iget-object v5, v4, Lkotlinx/coroutines/flow/a0;->b:Lkotlin/coroutines/Continuation;

    if-nez v5, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, v4}, Lkotlinx/coroutines/flow/y;->Y(Lkotlinx/coroutines/flow/a0;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    array-length v6, p1

    if-lt v0, v6, :cond_5

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "copyOf(this, newSize)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :cond_5
    move-object v6, p1

    check-cast v6, [Lkotlin/coroutines/Continuation;

    add-int/lit8 v7, v0, 0x1

    aput-object v5, v6, v0

    const/4 v0, 0x0

    .line 10
    iput-object v0, v4, Lkotlinx/coroutines/flow/a0;->b:Lkotlin/coroutines/Continuation;

    move v0, v7

    goto :goto_0

    .line 11
    :cond_6
    :goto_1
    check-cast p1, [Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method private final N()J
    .locals 4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/y;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final O()J
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/flow/y;->j:J

    iget-wide v2, p0, Lkotlinx/coroutines/flow/y;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static synthetic Q()V
    .locals 0

    return-void
.end method

.method private final R(J)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/y;->h:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/flow/z;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of p2, p1, Lkotlinx/coroutines/flow/y$a;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlinx/coroutines/flow/y$a;

    iget-object p1, p1, Lkotlinx/coroutines/flow/y$a;->c:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method private final S()J
    .locals 4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/y;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lkotlinx/coroutines/flow/y;->l:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final T()I
    .locals 4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/y;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lkotlinx/coroutines/flow/y;->i:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private final U()I
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/flow/y;->k:I

    iget v1, p0, Lkotlinx/coroutines/flow/y;->l:I

    add-int/2addr v0, v1

    return v0
.end method

.method private final V([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    if-lez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 1
    new-array p3, p3, [Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/y;->h:[Ljava/lang/Object;

    if-nez p1, :cond_1

    return-object p3

    .line 2
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v1

    :goto_1
    if-ge v0, p2, :cond_2

    add-int/lit8 v3, v0, 0x1

    int-to-long v4, v0

    add-long/2addr v4, v1

    .line 3
    invoke-static {p1, v4, v5}, Lkotlinx/coroutines/flow/z;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v4, v5, v0}, Lkotlinx/coroutines/flow/z;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    move v0, v3

    goto :goto_1

    :cond_2
    return-object p3

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Buffer size overflow"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final W(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->m()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/y;->X(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/flow/y;->k:I

    iget v1, p0, Lkotlinx/coroutines/flow/y;->f:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    iget-wide v0, p0, Lkotlinx/coroutines/flow/y;->j:J

    iget-wide v3, p0, Lkotlinx/coroutines/flow/y;->i:J

    cmp-long v5, v0, v3

    if-gtz v5, :cond_3

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/flow/y;->g:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/flow/y$b;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/y;->L(Ljava/lang/Object;)V

    .line 5
    iget p1, p0, Lkotlinx/coroutines/flow/y;->k:I

    add-int/2addr p1, v2

    iput p1, p0, Lkotlinx/coroutines/flow/y;->k:I

    .line 6
    iget v0, p0, Lkotlinx/coroutines/flow/y;->f:I

    if-le p1, v0, :cond_4

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->I()V

    .line 7
    :cond_4
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->T()I

    move-result p1

    iget v0, p0, Lkotlinx/coroutines/flow/y;->e:I

    if-le p1, v0, :cond_5

    .line 8
    iget-wide v0, p0, Lkotlinx/coroutines/flow/y;->i:J

    const-wide/16 v3, 0x1

    add-long v6, v0, v3

    iget-wide v8, p0, Lkotlinx/coroutines/flow/y;->j:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->N()J

    move-result-wide v10

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->S()J

    move-result-wide v12

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lkotlinx/coroutines/flow/y;->a0(JJJJ)V

    :cond_5
    return v2
.end method

.method private final X(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/y;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/y;->L(Ljava/lang/Object;)V

    .line 3
    iget p1, p0, Lkotlinx/coroutines/flow/y;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/flow/y;->k:I

    .line 4
    iget v0, p0, Lkotlinx/coroutines/flow/y;->e:I

    if-le p1, v0, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->I()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v2

    iget p1, p0, Lkotlinx/coroutines/flow/y;->k:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkotlinx/coroutines/flow/y;->j:J

    return v1
.end method

.method private final Y(Lkotlinx/coroutines/flow/a0;)J
    .locals 6

    .line 1
    iget-wide v0, p1, Lkotlinx/coroutines/flow/a0;->a:J

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->N()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-wide v0

    .line 3
    :cond_0
    iget p1, p0, Lkotlinx/coroutines/flow/y;->f:I

    const-wide/16 v2, -0x1

    if-lez p1, :cond_1

    return-wide v2

    .line 4
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    return-wide v2

    .line 5
    :cond_2
    iget p1, p0, Lkotlinx/coroutines/flow/y;->l:I

    if-nez p1, :cond_3

    return-wide v2

    :cond_3
    return-wide v0
.end method

.method private final Z(Lkotlinx/coroutines/flow/a0;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/y;->Y(Lkotlinx/coroutines/flow/a0;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 4
    sget-object p1, Lkotlinx/coroutines/flow/z;->a:Lkotlinx/coroutines/internal/p0;

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v3, p1, Lkotlinx/coroutines/flow/a0;->a:J

    .line 6
    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/flow/y;->R(J)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 7
    iput-wide v1, p1, Lkotlinx/coroutines/flow/a0;->a:J

    .line 8
    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/flow/y;->b0(J)[Lkotlin/coroutines/Continuation;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 9
    :goto_0
    monitor-exit p0

    const/4 v1, 0x0

    .line 10
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    throw p1
.end method

.method private final a0(JJJJ)V
    .locals 13

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    .line 1
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v7

    :goto_0
    cmp-long v9, v7, v5

    if-gez v9, :cond_0

    const-wide/16 v9, 0x1

    add-long/2addr v9, v7

    iget-object v11, v0, Lkotlinx/coroutines/flow/y;->h:[Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v12, 0x0

    invoke-static {v11, v7, v8, v12}, Lkotlinx/coroutines/flow/z;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    move-wide v7, v9

    goto :goto_0

    .line 3
    :cond_0
    iput-wide v1, v0, Lkotlinx/coroutines/flow/y;->i:J

    .line 4
    iput-wide v3, v0, Lkotlinx/coroutines/flow/y;->j:J

    sub-long v1, p5, v5

    long-to-int v2, v1

    .line 5
    iput v2, v0, Lkotlinx/coroutines/flow/y;->k:I

    sub-long v1, p7, p5

    long-to-int v2, v1

    .line 6
    iput v2, v0, Lkotlinx/coroutines/flow/y;->l:I

    return-void
.end method

.method public static final synthetic p(Lkotlinx/coroutines/flow/y;Lkotlinx/coroutines/flow/a0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/y;->B(Lkotlinx/coroutines/flow/a0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lkotlinx/coroutines/flow/y;Lkotlinx/coroutines/flow/y$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/y;->C(Lkotlinx/coroutines/flow/y$a;)V

    return-void
.end method

.method public static final synthetic r(Lkotlinx/coroutines/flow/y;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/y;->K(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic s(Lkotlinx/coroutines/flow/y;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/y;->L(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic t(Lkotlinx/coroutines/flow/y;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/y;->M([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic u(Lkotlinx/coroutines/flow/y;)I
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/flow/y;->f:I

    return p0
.end method

.method public static final synthetic v(Lkotlinx/coroutines/flow/y;)J
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic w(Lkotlinx/coroutines/flow/y;)I
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/flow/y;->l:I

    return p0
.end method

.method public static final synthetic x(Lkotlinx/coroutines/flow/y;)I
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->U()I

    move-result p0

    return p0
.end method

.method public static final synthetic y(Lkotlinx/coroutines/flow/y;I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/flow/y;->l:I

    return-void
.end method

.method public static final synthetic z(Lkotlinx/coroutines/flow/y;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/y;->W(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected G()Lkotlinx/coroutines/flow/a0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/a0;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/a0;-><init>()V

    return-object v0
.end method

.method protected H(I)[Lkotlinx/coroutines/flow/a0;
    .locals 0
    .annotation build Lm8/g;
    .end annotation

    new-array p1, p1, [Lkotlinx/coroutines/flow/a0;

    return-object p1
.end method

.method protected final P()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/y;->h:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, p0, Lkotlinx/coroutines/flow/y;->i:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->T()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/z;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/i;
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/channels/BufferOverflow;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")",
            "Lkotlinx/coroutines/flow/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/z;->e(Lkotlinx/coroutines/flow/x;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->T()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v2, p0, Lkotlinx/coroutines/flow/y;->h:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 6
    iget-wide v5, p0, Lkotlinx/coroutines/flow/y;->i:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lkotlinx/coroutines/flow/z;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b0(J)[Lkotlin/coroutines/Continuation;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    move-object/from16 v9, p0

    .line 1
    iget-wide v0, v9, Lkotlinx/coroutines/flow/y;->j:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    sget-object v0, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/y;->O()J

    move-result-wide v0

    .line 3
    iget v2, v9, Lkotlinx/coroutines/flow/y;->k:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 4
    iget v4, v9, Lkotlinx/coroutines/flow/y;->f:I

    const-wide/16 v5, 0x1

    if-nez v4, :cond_1

    iget v4, v9, Lkotlinx/coroutines/flow/y;->l:I

    if-lez v4, :cond_1

    add-long/2addr v2, v5

    .line 5
    :cond_1
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/a;->f(Lkotlinx/coroutines/flow/internal/a;)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/a;->g(Lkotlinx/coroutines/flow/internal/a;)[Lkotlinx/coroutines/flow/internal/c;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    array-length v7, v4

    const/4 v8, 0x0

    :cond_4
    :goto_0
    if-ge v8, v7, :cond_5

    aget-object v11, v4, v8

    add-int/lit8 v8, v8, 0x1

    if-eqz v11, :cond_4

    .line 8
    check-cast v11, Lkotlinx/coroutines/flow/a0;

    .line 9
    iget-wide v11, v11, Lkotlinx/coroutines/flow/a0;->a:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-ltz v15, :cond_4

    cmp-long v13, v11, v2

    if-gez v13, :cond_4

    move-wide v2, v11

    goto :goto_0

    .line 10
    :cond_5
    :goto_1
    iget-wide v7, v9, Lkotlinx/coroutines/flow/y;->j:J

    cmp-long v4, v2, v7

    if-gtz v4, :cond_6

    sget-object v0, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 11
    :cond_6
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/y;->N()J

    move-result-wide v7

    .line 12
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/a;->m()I

    move-result v4

    if-lez v4, :cond_7

    sub-long v11, v7, v2

    long-to-int v4, v11

    .line 13
    iget v11, v9, Lkotlinx/coroutines/flow/y;->l:I

    iget v12, v9, Lkotlinx/coroutines/flow/y;->f:I

    sub-int/2addr v12, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 14
    :cond_7
    iget v4, v9, Lkotlinx/coroutines/flow/y;->l:I

    .line 15
    :goto_2
    sget-object v11, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    .line 16
    iget v12, v9, Lkotlinx/coroutines/flow/y;->l:I

    int-to-long v12, v12

    add-long/2addr v12, v7

    if-lez v4, :cond_b

    .line 17
    new-array v11, v4, [Lkotlin/coroutines/Continuation;

    .line 18
    iget-object v14, v9, Lkotlinx/coroutines/flow/y;->h:[Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide/from16 v16, v7

    const/4 v15, 0x0

    :goto_3
    cmp-long v18, v7, v12

    if-gez v18, :cond_a

    add-long v18, v7, v5

    .line 19
    invoke-static {v14, v7, v8}, Lkotlinx/coroutines/flow/z;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 20
    sget-object v5, Lkotlinx/coroutines/flow/z;->a:Lkotlinx/coroutines/internal/p0;

    if-eq v10, v5, :cond_9

    const-string v6, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    .line 21
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/flow/y$a;

    add-int/lit8 v6, v15, 0x1

    move-wide/from16 v20, v2

    .line 22
    iget-object v2, v10, Lkotlinx/coroutines/flow/y$a;->d:Lkotlin/coroutines/Continuation;

    aput-object v2, v11, v15

    .line 23
    invoke-static {v14, v7, v8, v5}, Lkotlinx/coroutines/flow/z;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 24
    iget-object v2, v10, Lkotlinx/coroutines/flow/y$a;->c:Ljava/lang/Object;

    move-wide/from16 v7, v16

    invoke-static {v14, v7, v8, v2}, Lkotlinx/coroutines/flow/z;->d([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long v16, v7, v2

    if-lt v6, v4, :cond_8

    goto :goto_5

    :cond_8
    move v15, v6

    move-wide/from16 v7, v18

    move-wide/from16 v2, v20

    goto :goto_4

    :cond_9
    move-wide/from16 v7, v16

    move-wide/from16 v7, v18

    :goto_4
    const-wide/16 v5, 0x1

    goto :goto_3

    :cond_a
    move-wide/from16 v20, v2

    :goto_5
    move-wide/from16 v7, v16

    goto :goto_6

    :cond_b
    move-wide/from16 v20, v2

    :goto_6
    sub-long v0, v7, v0

    long-to-int v1, v0

    .line 25
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/a;->m()I

    move-result v0

    if-nez v0, :cond_c

    move-wide v3, v7

    goto :goto_7

    :cond_c
    move-wide/from16 v3, v20

    .line 26
    :goto_7
    iget-wide v5, v9, Lkotlinx/coroutines/flow/y;->i:J

    iget v0, v9, Lkotlinx/coroutines/flow/y;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v7, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 27
    iget v2, v9, Lkotlinx/coroutines/flow/y;->f:I

    if-nez v2, :cond_d

    cmp-long v2, v0, v12

    if-gez v2, :cond_d

    iget-object v2, v9, Lkotlinx/coroutines/flow/y;->h:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/flow/z;->c([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lkotlinx/coroutines/flow/z;->a:Lkotlinx/coroutines/internal/p0;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-wide/16 v5, 0x1

    add-long/2addr v7, v5

    add-long/2addr v0, v5

    :cond_d
    move-wide v1, v0

    move-wide v5, v7

    move-object/from16 v0, p0

    move-wide v7, v12

    .line 28
    invoke-direct/range {v0 .. v8}, Lkotlinx/coroutines/flow/y;->a0(JJJJ)V

    .line 29
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/y;->D()V

    .line 30
    array-length v0, v11

    const/4 v1, 0x1

    if-nez v0, :cond_e

    const/4 v10, 0x1

    goto :goto_8

    :cond_e
    const/4 v10, 0x0

    :goto_8
    xor-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_f

    invoke-direct {v9, v11}, Lkotlinx/coroutines/flow/y;->M([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v11

    :cond_f
    return-object v11
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/Continuation;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/y;->W(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/y;->M([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    monitor-exit p0

    .line 6
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    throw p1
.end method

.method public final c0()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/flow/y;->i:J

    .line 2
    iget-wide v2, p0, Lkotlinx/coroutines/flow/y;->j:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/y;->j:J

    :cond_0
    return-wide v0
.end method

.method public collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/j;
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
            "Lkotlinx/coroutines/flow/j<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/y;->E(Lkotlinx/coroutines/flow/y;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->N()J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lkotlinx/coroutines/flow/y;->j:J

    .line 4
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->N()J

    move-result-wide v5

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/flow/y;->S()J

    move-result-wide v7

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v8}, Lkotlinx/coroutines/flow/y;->a0(JJJJ)V

    .line 7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/y;->J(Lkotlinx/coroutines/flow/y;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i()Lkotlinx/coroutines/flow/internal/c;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/y;->G()Lkotlinx/coroutines/flow/a0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j(I)[Lkotlinx/coroutines/flow/internal/c;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/y;->H(I)[Lkotlinx/coroutines/flow/a0;

    move-result-object p1

    return-object p1
.end method
