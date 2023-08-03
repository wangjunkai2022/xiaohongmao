.class final Lkotlinx/coroutines/flow/p$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Delay.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/p;->h(Lkotlinx/coroutines/flow/i;J)Lkotlinx/coroutines/flow/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/s0;",
        "Lkotlinx/coroutines/flow/j<",
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,348:1\n199#2,11:349\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n*L\n285#1:349,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000*\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/s0;",
        "Lkotlinx/coroutines/flow/j;",
        "downstream",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2"
    f = "Delay.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x160
    }
    m = "invokeSuspend"
    n = {
        "downstream",
        "values",
        "lastValue",
        "ticker"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field private synthetic d:Ljava/lang/Object;

.field synthetic e:Ljava/lang/Object;

.field final synthetic f:J

.field final synthetic g:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/flow/i<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/p$e;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lkotlinx/coroutines/flow/p$e;->f:J

    iput-object p3, p0, Lkotlinx/coroutines/flow/p$e;->g:Lkotlinx/coroutines/flow/i;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final h(Lkotlinx/coroutines/s0;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/flow/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
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

    new-instance v0, Lkotlinx/coroutines/flow/p$e;

    iget-wide v1, p0, Lkotlinx/coroutines/flow/p$e;->f:J

    iget-object v3, p0, Lkotlinx/coroutines/flow/p$e;->g:Lkotlinx/coroutines/flow/i;

    invoke-direct {v0, v1, v2, v3, p3}, Lkotlinx/coroutines/flow/p$e;-><init>(JLkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/p$e;->d:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/p$e;->e:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/p$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlinx/coroutines/flow/j;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/p$e;->h(Lkotlinx/coroutines/s0;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lkotlinx/coroutines/flow/p$e;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lkotlinx/coroutines/flow/p$e;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/f0;

    iget-object v4, p0, Lkotlinx/coroutines/flow/p$e;->a:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lkotlinx/coroutines/flow/p$e;->e:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/f0;

    iget-object v6, p0, Lkotlinx/coroutines/flow/p$e;->d:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/j;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/p$e;->d:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/s0;

    iget-object v1, p0, Lkotlinx/coroutines/flow/p$e;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/j;

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 4
    new-instance v7, Lkotlinx/coroutines/flow/p$e$c;

    iget-object v4, p0, Lkotlinx/coroutines/flow/p$e;->g:Lkotlinx/coroutines/flow/i;

    invoke-direct {v7, v4, v3}, Lkotlinx/coroutines/flow/p$e$c;-><init>(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/channels/b0;->f(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/f0;

    move-result-object v11

    .line 5
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 6
    iget-wide v5, p0, Lkotlinx/coroutines/flow/p$e;->f:J

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lkotlinx/coroutines/flow/k;->y0(Lkotlinx/coroutines/s0;JJILjava/lang/Object;)Lkotlinx/coroutines/channels/f0;

    move-result-object p1

    move-object v6, v1

    move-object v5, v11

    move-object v4, v12

    move-object v1, p1

    :goto_0
    move-object p1, p0

    .line 7
    :cond_2
    iget-object v7, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v8, Lkotlinx/coroutines/flow/internal/s;->c:Lkotlinx/coroutines/internal/p0;

    if-eq v7, v8, :cond_4

    .line 8
    iput-object v6, p1, Lkotlinx/coroutines/flow/p$e;->d:Ljava/lang/Object;

    iput-object v5, p1, Lkotlinx/coroutines/flow/p$e;->e:Ljava/lang/Object;

    iput-object v4, p1, Lkotlinx/coroutines/flow/p$e;->a:Ljava/lang/Object;

    iput-object v1, p1, Lkotlinx/coroutines/flow/p$e;->b:Ljava/lang/Object;

    iput v2, p1, Lkotlinx/coroutines/flow/p$e;->c:I

    .line 9
    new-instance v7, Lkotlinx/coroutines/selects/b;

    invoke-direct {v7, p1}, Lkotlinx/coroutines/selects/b;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 10
    :try_start_0
    invoke-interface {v5}, Lkotlinx/coroutines/channels/f0;->t()Lkotlinx/coroutines/selects/d;

    move-result-object v8

    new-instance v9, Lkotlinx/coroutines/flow/p$e$a;

    invoke-direct {v9, v4, v1, v3}, Lkotlinx/coroutines/flow/p$e$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/f0;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v7, v8, v9}, Lkotlinx/coroutines/selects/a;->y(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V

    .line 11
    invoke-interface {v1}, Lkotlinx/coroutines/channels/f0;->o()Lkotlinx/coroutines/selects/d;

    move-result-object v8

    new-instance v9, Lkotlinx/coroutines/flow/p$e$b;

    invoke-direct {v9, v4, v6, v3}, Lkotlinx/coroutines/flow/p$e$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v7, v8, v9}, Lkotlinx/coroutines/selects/a;->y(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    .line 12
    invoke-virtual {v7, v8}, Lkotlinx/coroutines/selects/b;->p0(Ljava/lang/Throwable;)V

    .line 13
    :goto_1
    invoke-virtual {v7}, Lkotlinx/coroutines/selects/b;->o0()Ljava/lang/Object;

    move-result-object v7

    .line 14
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne v7, v0, :cond_2

    return-object v0

    .line 15
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
