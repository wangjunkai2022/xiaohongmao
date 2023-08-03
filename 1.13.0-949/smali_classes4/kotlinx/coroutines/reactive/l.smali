.class final Lkotlinx/coroutines/reactive/l;
.super Lkotlinx/coroutines/flow/internal/d;
.source "ReactiveFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/d<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactiveFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactiveFlow.kt\nkotlinx/coroutines/reactive/PublisherAsFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n1#2:274\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B3\u0012\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\"\u0010#J!\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J)\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ&\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0014J!\u0010\u0013\u001a\u00020\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0008J!\u0010\u0016\u001a\u00020\u00062\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001a\u0010!\u001a\u00020\u001c8BX\u0082\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001d\u0010\u001e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006$"
    }
    d2 = {
        "Lkotlinx/coroutines/reactive/l;",
        "",
        "T",
        "Lkotlinx/coroutines/flow/internal/d;",
        "Lkotlinx/coroutines/flow/j;",
        "collector",
        "",
        "q",
        "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext;",
        "injectContext",
        "p",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "context",
        "",
        "capacity",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "i",
        "collect",
        "Lkotlinx/coroutines/channels/d0;",
        "scope",
        "h",
        "(Lkotlinx/coroutines/channels/d0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lorg/reactivestreams/c;",
        "d",
        "Lorg/reactivestreams/c;",
        "publisher",
        "",
        "r",
        "()J",
        "getRequestSize$annotations",
        "()V",
        "requestSize",
        "<init>",
        "(Lorg/reactivestreams/c;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V",
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
.field private final d:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 0
    .param p1    # Lorg/reactivestreams/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/channels/BufferOverflow;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p2, p3, p4}, Lkotlinx/coroutines/flow/internal/d;-><init>(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/reactive/l;->d:Lorg/reactivestreams/c;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/reactivestreams/c;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x2

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/reactive/l;-><init>(Lorg/reactivestreams/c;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    return-void
.end method

.method public static final synthetic n(Lkotlinx/coroutines/reactive/l;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/reactive/l;->p(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lkotlinx/coroutines/reactive/l;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/reactive/l;->q(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final p(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/flow/j<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    instance-of v2, v0, Lkotlinx/coroutines/reactive/l$a;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/reactive/l$a;

    iget v3, v2, Lkotlinx/coroutines/reactive/l$a;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lkotlinx/coroutines/reactive/l$a;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/coroutines/reactive/l$a;

    invoke-direct {v2, v1, v0}, Lkotlinx/coroutines/reactive/l$a;-><init>(Lkotlinx/coroutines/reactive/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lkotlinx/coroutines/reactive/l$a;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lkotlinx/coroutines/reactive/l$a;->g:I

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-ne v4, v7, :cond_2

    iget-wide v9, v2, Lkotlinx/coroutines/reactive/l$a;->d:J

    iget-object v4, v2, Lkotlinx/coroutines/reactive/l$a;->c:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/reactive/o;

    iget-object v11, v2, Lkotlinx/coroutines/reactive/l$a;->b:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/flow/j;

    iget-object v12, v2, Lkotlinx/coroutines/reactive/l$a;->a:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/reactive/l;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v0, v11

    goto/16 :goto_3

    .line 2
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_3
    iget-wide v9, v2, Lkotlinx/coroutines/reactive/l$a;->d:J

    iget-object v4, v2, Lkotlinx/coroutines/reactive/l$a;->c:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/reactive/o;

    iget-object v11, v2, Lkotlinx/coroutines/reactive/l$a;->b:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/flow/j;

    iget-object v12, v2, Lkotlinx/coroutines/reactive/l$a;->a:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/reactive/l;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlinx/coroutines/reactive/o;

    iget v4, v1, Lkotlinx/coroutines/flow/internal/d;->b:I

    iget-object v9, v1, Lkotlinx/coroutines/flow/internal/d;->c:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/reactive/l;->r()J

    move-result-wide v10

    invoke-direct {v0, v4, v9, v10, v11}, Lkotlinx/coroutines/reactive/o;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;J)V

    .line 5
    iget-object v4, v1, Lkotlinx/coroutines/reactive/l;->d:Lorg/reactivestreams/c;

    move-object/from16 v9, p1

    invoke-static {v4, v9}, Lkotlinx/coroutines/reactive/n;->e(Lorg/reactivestreams/c;Lkotlin/coroutines/CoroutineContext;)Lorg/reactivestreams/c;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    move-object v4, v0

    move-object v9, v1

    move-wide v10, v5

    move-object/from16 v0, p2

    .line 6
    :goto_1
    :try_start_2
    iput-object v9, v2, Lkotlinx/coroutines/reactive/l$a;->a:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/reactive/l$a;->b:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/reactive/l$a;->c:Ljava/lang/Object;

    iput-wide v10, v2, Lkotlinx/coroutines/reactive/l$a;->d:J

    iput v8, v2, Lkotlinx/coroutines/reactive/l$a;->g:I

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/reactive/o;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v12, v3, :cond_5

    return-object v3

    :cond_5
    move-wide v15, v10

    move-object v11, v0

    move-object v0, v12

    move-object v12, v9

    move-wide v9, v15

    :goto_2
    if-nez v0, :cond_6

    .line 7
    invoke-virtual {v4}, Lkotlinx/coroutines/reactive/o;->a()V

    .line 8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 9
    :cond_6
    :try_start_3
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v13

    invoke-static {v13}, Lkotlinx/coroutines/m2;->z(Lkotlin/coroutines/CoroutineContext;)V

    .line 10
    iput-object v12, v2, Lkotlinx/coroutines/reactive/l$a;->a:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/reactive/l$a;->b:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/reactive/l$a;->c:Ljava/lang/Object;

    iput-wide v9, v2, Lkotlinx/coroutines/reactive/l$a;->d:J

    iput v7, v2, Lkotlinx/coroutines/reactive/l$a;->g:I

    invoke-interface {v11, v0, v2}, Lkotlinx/coroutines/flow/j;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1

    return-object v3

    :goto_3
    const-wide/16 v13, 0x1

    add-long v10, v9, v13

    .line 11
    invoke-direct {v12}, Lkotlinx/coroutines/reactive/l;->r()J

    move-result-wide v13

    cmp-long v9, v10, v13

    if-nez v9, :cond_7

    .line 12
    invoke-virtual {v4}, Lkotlinx/coroutines/reactive/o;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v10, v5

    :cond_7
    move-object v9, v12

    goto :goto_1

    .line 13
    :goto_4
    invoke-virtual {v4}, Lkotlinx/coroutines/reactive/o;->a()V

    throw v0
.end method

.method private final q(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/j<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/reactive/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lkotlinx/coroutines/reactive/l$b;-><init>(Lkotlinx/coroutines/flow/j;Lkotlinx/coroutines/reactive/l;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/t0;->g(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final r()J
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/d;->c:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    const-wide/16 v2, 0x1

    const-wide v4, 0x7fffffffffffffffL

    if-eq v0, v1, :cond_1

    :cond_0
    move-wide v2, v4

    goto :goto_1

    .line 2
    :cond_1
    iget v0, p0, Lkotlinx/coroutines/flow/internal/d;->b:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_5

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    int-to-long v0, v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    move-wide v2, v0

    goto :goto_1

    .line 3
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_4
    sget-object v0, Lkotlinx/coroutines/channels/m;->l2:Lkotlinx/coroutines/channels/m$b;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/m$b;->a()I

    move-result v0

    int-to-long v2, v0

    :cond_5
    :goto_1
    return-wide v2
.end method

.method private static synthetic s()V
    .locals 0

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/d;->a:Lkotlin/coroutines/CoroutineContext;

    sget-object v2, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/ContinuationInterceptor;

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/reactive/l;->q(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 5
    :cond_2
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/d;->a:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/reactive/l;->p(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_3

    return-object p1

    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected h(Lkotlinx/coroutines/channels/d0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlinx/coroutines/channels/d0;
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
            "Lkotlinx/coroutines/channels/d0<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-interface {p1}, Lkotlinx/coroutines/s0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/flow/internal/u;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/d0;->getChannel()Lkotlinx/coroutines/channels/j0;

    move-result-object p1

    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/internal/u;-><init>(Lkotlinx/coroutines/channels/j0;)V

    invoke-direct {p0, v0, v1, p2}, Lkotlinx/coroutines/reactive/l;->p(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected i(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/internal/d;
    .locals 2
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
            "Lkotlinx/coroutines/flow/internal/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/reactive/l;

    iget-object v1, p0, Lkotlinx/coroutines/reactive/l;->d:Lorg/reactivestreams/c;

    invoke-direct {v0, v1, p1, p2, p3}, Lkotlinx/coroutines/reactive/l;-><init>(Lorg/reactivestreams/c;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    return-object v0
.end method
