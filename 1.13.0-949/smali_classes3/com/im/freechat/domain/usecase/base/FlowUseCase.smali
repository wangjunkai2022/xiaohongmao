.class public abstract Lcom/im/freechat/domain/usecase/base/FlowUseCase;
.super Ljava/lang/Object;
.source "FlowUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<In:",
        "Ljava/lang/Object;",
        "Out:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowUseCase.kt\ncom/im/freechat/domain/usecase/base/FlowUseCase\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,38:1\n47#2:39\n49#2:43\n50#3:40\n55#3:42\n106#4:41\n*S KotlinDebug\n*F\n+ 1 FlowUseCase.kt\ncom/im/freechat/domain/usecase/base/FlowUseCase\n*L\n21#1:39\n21#1:43\n21#1:40\n21#1:42\n21#1:41\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u0004\u001a\u00028\u0000H\u00a4@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007JN\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00028\u000021\u0008\u0002\u0010\r\u001a+\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0008\u00a2\u0006\u0002\u0008\u000cH\u0086B\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00010\t*\u00028\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/base/FlowUseCase;",
        "In",
        "Out",
        "",
        "params",
        "Lkotlinx/coroutines/flow/i;",
        "b",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/Function2;",
        "Lcom/im/freechat/shared/entities/Result;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "onData",
        "c",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "a",
        "(Ljava/lang/Object;)Lcom/im/freechat/shared/entities/Result;",
        "<init>",
        "()V",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/im/freechat/domain/usecase/base/FlowUseCase;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invoke"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/im/freechat/shared/entities/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOut;)",
            "Lcom/im/freechat/shared/entities/Result<",
            "TOut;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/shared/entities/Result;->Companion:Lcom/im/freechat/shared/entities/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/im/freechat/shared/entities/Result$Companion;->success(Ljava/lang/Object;)Lcom/im/freechat/shared/entities/Result;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIn;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/i<",
            "+TOut;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public final c(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIn;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/shared/entities/Result<",
            "+TOut;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;

    iget v1, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;-><init>(Lcom/im/freechat/domain/usecase/base/FlowUseCase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->c:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/s0;

    iget-object p2, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->b:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object v2, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/domain/usecase/base/FlowUseCase;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/t0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s0;

    move-result-object p3

    .line 5
    iput-object p0, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->b:Ljava/lang/Object;

    iput-object p3, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->c:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->f:I

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/domain/usecase/base/FlowUseCase;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    move-object v6, p3

    move-object p3, p1

    move-object p1, v6

    .line 6
    :goto_1
    check-cast p3, Lkotlinx/coroutines/flow/i;

    .line 7
    new-instance v4, Lcom/im/freechat/domain/usecase/base/FlowUseCase$invoke$lambda-1$$inlined$map$1;

    invoke-direct {v4, p3, v2}, Lcom/im/freechat/domain/usecase/base/FlowUseCase$invoke$lambda-1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;Lcom/im/freechat/domain/usecase/base/FlowUseCase;)V

    .line 8
    new-instance p3, Lcom/im/freechat/domain/usecase/base/FlowUseCase$b;

    invoke-direct {p3, p2, v5}, Lcom/im/freechat/domain/usecase/base/FlowUseCase$b;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, p3}, Lkotlinx/coroutines/flow/k;->u(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;

    move-result-object p3

    .line 9
    invoke-static {}, Lkotlinx/coroutines/i1;->c()Lkotlinx/coroutines/n0;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlinx/coroutines/flow/k;->N0(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/i;

    move-result-object p3

    .line 10
    new-instance v2, Lcom/im/freechat/domain/usecase/base/FlowUseCase$c;

    invoke-direct {v2, p2, v5}, Lcom/im/freechat/domain/usecase/base/FlowUseCase$c;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, v2}, Lkotlinx/coroutines/flow/k;->e1(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;

    move-result-object p3

    .line 11
    invoke-static {}, Lkotlinx/coroutines/i1;->e()Lkotlinx/coroutines/u2;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlinx/coroutines/flow/k;->N0(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/i;

    move-result-object p3

    .line 12
    invoke-static {p3, p1}, Lkotlinx/coroutines/flow/k;->U0(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;)Lkotlinx/coroutines/j2;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_5

    .line 14
    sget-object p3, Lcom/im/freechat/shared/entities/Result;->Companion:Lcom/im/freechat/shared/entities/Result$Companion;

    invoke-virtual {p3, p1}, Lcom/im/freechat/shared/entities/Result$Companion;->failure(Ljava/lang/Throwable;)Lcom/im/freechat/shared/entities/Result;

    move-result-object p1

    iput-object v5, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->a:Ljava/lang/Object;

    iput-object v5, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->b:Ljava/lang/Object;

    iput-object v5, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->c:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/domain/usecase/base/FlowUseCase$a;->f:I

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 15
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
