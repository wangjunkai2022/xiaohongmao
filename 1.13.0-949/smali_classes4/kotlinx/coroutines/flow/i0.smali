.class final Lkotlinx/coroutines/flow/i0;
.super Lkotlinx/coroutines/flow/internal/a;
.source "StateFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/t;
.implements Lkotlinx/coroutines/flow/c;
.implements Lkotlinx/coroutines/flow/internal/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/a<",
        "Lkotlinx/coroutines/flow/k0;",
        ">;",
        "Lkotlinx/coroutines/flow/t<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/c<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/p<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,430:1\n18#2:431\n18#2:437\n20#3:432\n20#3:435\n13536#4,2:433\n329#5:436\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n317#1:431\n398#1:437\n326#1:432\n354#1:435\n350#1:433,2\n387#1:436\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\u0006\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0008\u0012\u0004\u0012\u00028\u00000\u0006B\u000f\u0012\u0006\u00107\u001a\u00020\u0007\u00a2\u0006\u0004\u00088\u00101J!\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000cJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001b\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001b\u001a\u00020\u001a2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001f\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030!2\u0006\u0010 \u001a\u00020\u001fH\u0014\u00a2\u0006\u0004\u0008\"\u0010#J-\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000)2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008*\u0010+R\u0016\u0010-\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010,R*\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u00008V@VX\u0096\u000e\u00a2\u0006\u0012\u0012\u0004\u00082\u0010\u0017\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001a\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u0000038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00069"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/i0;",
        "T",
        "Lkotlinx/coroutines/flow/internal/a;",
        "Lkotlinx/coroutines/flow/k0;",
        "Lkotlinx/coroutines/flow/t;",
        "Lkotlinx/coroutines/flow/c;",
        "Lkotlinx/coroutines/flow/internal/p;",
        "",
        "expectedState",
        "newState",
        "",
        "s",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "expect",
        "update",
        "compareAndSet",
        "value",
        "c",
        "(Ljava/lang/Object;)Z",
        "",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "e",
        "()V",
        "Lkotlinx/coroutines/flow/j;",
        "collector",
        "",
        "collect",
        "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "p",
        "()Lkotlinx/coroutines/flow/k0;",
        "",
        "size",
        "",
        "q",
        "(I)[Lkotlinx/coroutines/flow/k0;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "capacity",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "Lkotlinx/coroutines/flow/i;",
        "a",
        "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/i;",
        "I",
        "sequence",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue",
        "(Ljava/lang/Object;)V",
        "getValue$annotations",
        "",
        "b",
        "()Ljava/util/List;",
        "replayCache",
        "initialState",
        "<init>",
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
.field private volatile synthetic _state:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/a;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/i0;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic r()V
    .locals 0

    return-void
.end method

.method private final s(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->n()[Lkotlinx/coroutines/flow/internal/c;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/i0;->_state:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    monitor-exit p0

    return v1

    .line 5
    :cond_0
    :try_start_1
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v0

    .line 6
    :cond_1
    :try_start_2
    iput-object p2, p0, Lkotlinx/coroutines/flow/i0;->_state:Ljava/lang/Object;

    .line 7
    iget p1, p0, Lkotlinx/coroutines/flow/i0;->e:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_6

    add-int/2addr p1, v0

    .line 8
    iput p1, p0, Lkotlinx/coroutines/flow/i0;->e:I

    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->n()[Lkotlinx/coroutines/flow/internal/c;

    move-result-object p2

    .line 10
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 11
    :goto_0
    check-cast p2, [Lkotlinx/coroutines/flow/k0;

    if-nez p2, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/k0;->f()V

    goto :goto_1

    .line 14
    :cond_4
    :goto_2
    monitor-enter p0

    .line 15
    :try_start_3
    iget p2, p0, Lkotlinx/coroutines/flow/i0;->e:I

    if-ne p2, p1, :cond_5

    add-int/2addr p1, v0

    .line 16
    iput p1, p0, Lkotlinx/coroutines/flow/i0;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    monitor-exit p0

    return v0

    .line 18
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->n()[Lkotlinx/coroutines/flow/internal/c;

    move-result-object p1

    .line 19
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    move v5, p2

    move-object p2, p1

    move p1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6
    add-int/lit8 p1, p1, 0x2

    .line 20
    :try_start_5
    iput p1, p0, Lkotlinx/coroutines/flow/i0;->e:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 21
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    .line 22
    monitor-exit p0

    throw p1
.end method


# virtual methods
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

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/j0;->d(Lkotlinx/coroutines/flow/h0;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/i0;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/i0;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/i0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/i0$a;

    iget v1, v0, Lkotlinx/coroutines/flow/i0$a;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/i0$a;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/i0$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/i0$a;-><init>(Lkotlinx/coroutines/flow/i0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/i0$a;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/flow/i0$a;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lkotlinx/coroutines/flow/i0$a;->e:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/flow/i0$a;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/j2;

    iget-object v6, v0, Lkotlinx/coroutines/flow/i0$a;->c:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/k0;

    iget-object v7, v0, Lkotlinx/coroutines/flow/i0$a;->b:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/j;

    iget-object v8, v0, Lkotlinx/coroutines/flow/i0$a;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/flow/i0;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/flow/i0$a;->e:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/flow/i0$a;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/j2;

    iget-object v6, v0, Lkotlinx/coroutines/flow/i0$a;->c:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/k0;

    iget-object v7, v0, Lkotlinx/coroutines/flow/i0$a;->b:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/j;

    iget-object v8, v0, Lkotlinx/coroutines/flow/i0$a;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/flow/i0;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_3
    iget-object p1, v0, Lkotlinx/coroutines/flow/i0$a;->c:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lkotlinx/coroutines/flow/k0;

    iget-object p1, v0, Lkotlinx/coroutines/flow/i0$a;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/j;

    iget-object v2, v0, Lkotlinx/coroutines/flow/i0$a;->a:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/flow/i0;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->h()Lkotlinx/coroutines/flow/internal/c;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/k0;

    .line 5
    :try_start_3
    instance-of v2, p1, Lkotlinx/coroutines/flow/l0;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/flow/l0;

    iput-object p0, v0, Lkotlinx/coroutines/flow/i0$a;->a:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/i0$a;->b:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/i0$a;->c:Ljava/lang/Object;

    iput v6, v0, Lkotlinx/coroutines/flow/i0$a;->h:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/l0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, p0

    move-object v6, p2

    .line 6
    :goto_1
    :try_start_4
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 7
    sget-object v2, Lkotlinx/coroutines/j2;->k2:Lkotlinx/coroutines/j2$b;

    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/j2;

    move-object v7, p1

    move-object v2, p2

    move-object p1, v3

    .line 8
    :cond_6
    :goto_2
    iget-object p2, v8, Lkotlinx/coroutines/flow/i0;->_state:Ljava/lang/Object;

    if-nez v2, :cond_7

    goto :goto_3

    .line 9
    :cond_7
    invoke-static {v2}, Lkotlinx/coroutines/m2;->A(Lkotlinx/coroutines/j2;)V

    :goto_3
    if-eqz p1, :cond_8

    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 11
    :cond_8
    sget-object p1, Lkotlinx/coroutines/flow/internal/s;->a:Lkotlinx/coroutines/internal/p0;

    if-ne p2, p1, :cond_9

    move-object p1, v3

    goto :goto_4

    :cond_9
    move-object p1, p2

    :goto_4
    iput-object v8, v0, Lkotlinx/coroutines/flow/i0$a;->a:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/i0$a;->b:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/i0$a;->c:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/i0$a;->d:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/i0$a;->e:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/i0$a;->h:I

    invoke-interface {v7, p1, v0}, Lkotlinx/coroutines/flow/j;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    move-object p1, p2

    .line 12
    :cond_b
    :goto_5
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/k0;->g()Z

    move-result p2

    if-nez p2, :cond_6

    .line 13
    iput-object v8, v0, Lkotlinx/coroutines/flow/i0$a;->a:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/i0$a;->b:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/i0$a;->c:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/i0$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/i0$a;->e:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/i0$a;->h:I

    invoke-virtual {v6, v0}, Lkotlinx/coroutines/flow/k0;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v1, :cond_6

    return-object v1

    :catchall_1
    move-exception p1

    move-object v8, p0

    move-object v6, p2

    .line 14
    :goto_6
    invoke-virtual {v8, v6}, Lkotlinx/coroutines/flow/internal/a;->l(Lkotlinx/coroutines/flow/internal/c;)V

    throw p1
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/flow/internal/s;->a:Lkotlinx/coroutines/internal/p0;

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lkotlinx/coroutines/flow/internal/s;->a:Lkotlinx/coroutines/internal/p0;

    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/i0;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MutableStateFlow.resetReplayCache is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

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

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/i0;->setValue(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lkotlinx/coroutines/flow/internal/s;->a:Lkotlinx/coroutines/internal/p0;

    iget-object v1, p0, Lkotlinx/coroutines/flow/i0;->_state:Ljava/lang/Object;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic i()Lkotlinx/coroutines/flow/internal/c;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/i0;->p()Lkotlinx/coroutines/flow/k0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j(I)[Lkotlinx/coroutines/flow/internal/c;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/i0;->q(I)[Lkotlinx/coroutines/flow/k0;

    move-result-object p1

    return-object p1
.end method

.method protected p()Lkotlinx/coroutines/flow/k0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/k0;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/k0;-><init>()V

    return-object v0
.end method

.method protected q(I)[Lkotlinx/coroutines/flow/k0;
    .locals 0
    .annotation build Lm8/g;
    .end annotation

    new-array p1, p1, [Lkotlinx/coroutines/flow/k0;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/flow/internal/s;->a:Lkotlinx/coroutines/internal/p0;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/flow/i0;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
