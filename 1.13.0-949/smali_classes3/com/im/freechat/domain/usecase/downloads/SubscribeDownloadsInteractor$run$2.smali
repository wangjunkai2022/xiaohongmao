.class final Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubscribeDownloadsInteractor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;->e(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/s0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscribeDownloadsInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscribeDownloadsInteractor.kt\ncom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n1#1,38:1\n27#2:39\n29#2:43\n50#3:40\n55#3:42\n106#4:41\n193#5:44\n*S KotlinDebug\n*F\n+ 1 SubscribeDownloadsInteractor.kt\ncom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2\n*L\n19#1:39\n19#1:43\n19#1:40\n19#1:42\n19#1:41\n22#1:44\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/s0;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2"
    f = "SubscribeDownloadsInteractor.kt"
    i = {}
    l = {
        0x22
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;


# direct methods
.method constructor <init>(Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;->b:Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance p1, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;->b:Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;

    invoke-direct {p1, v0, p2}, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;-><init>(Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    .line 4
    iget-object p1, p0, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;->b:Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;

    invoke-virtual {p1}, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;->c()Lcom/im/freechat/domain/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/im/freechat/domain/c;->L()Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1;

    invoke-direct {v1, p1}, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1;-><init>(Lkotlinx/coroutines/flow/i;)V

    .line 6
    iget-object p1, p0, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;->b:Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;

    .line 7
    new-instance v3, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1}, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;)V

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/k;->b2(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    .line 8
    iput v2, p0, Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor$run$2;->a:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/k;->x(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
