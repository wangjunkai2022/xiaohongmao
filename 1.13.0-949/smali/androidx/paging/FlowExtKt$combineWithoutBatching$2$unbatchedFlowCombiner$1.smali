.class public final Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FlowExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/FlowExtKt$combineWithoutBatching$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4<",
        "TT1;TT2;",
        "Landroidx/paging/CombineSource;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowExt.kt\nandroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1\n*L\n1#1,221:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0008\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001\"\u0004\u0008\u0002\u0010\u00022\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u008a@"
    }
    d2 = {
        "T1",
        "T2",
        "R",
        "t1",
        "t2",
        "Landroidx/paging/CombineSource;",
        "updateFrom",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.paging.FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1"
    f = "FlowExt.kt"
    i = {}
    l = {
        0x8b,
        0x8b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $$this$simpleChannelFlow:Landroidx/paging/SimpleProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/SimpleProducerScope<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "TT1;TT2;",
            "Landroidx/paging/CombineSource;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/paging/SimpleProducerScope;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/SimpleProducerScope<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-TT1;-TT2;-",
            "Landroidx/paging/CombineSource;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->$$this$simpleChannelFlow:Landroidx/paging/SimpleProducerScope;

    iput-object p2, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->$transform:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Landroidx/paging/CombineSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p3    # Landroidx/paging/CombineSource;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;",
            "Landroidx/paging/CombineSource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance v0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;

    iget-object v1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->$$this$simpleChannelFlow:Landroidx/paging/SimpleProducerScope;

    iget-object v2, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->$transform:Lkotlin/jvm/functions/Function4;

    invoke-direct {v0, v1, v2, p4}, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;-><init>(Landroidx/paging/SimpleProducerScope;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$2:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p3, Landroidx/paging/CombineSource;

    check-cast p4, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Landroidx/paging/CombineSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/SimpleProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$0:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$1:Ljava/lang/Object;

    iget-object v5, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$2:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/CombineSource;

    .line 4
    iget-object v6, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->$$this$simpleChannelFlow:Landroidx/paging/SimpleProducerScope;

    iget-object v7, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->$transform:Lkotlin/jvm/functions/Function4;

    iput-object v6, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->label:I

    invoke-interface {v7, p1, v1, v5, p0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v1, v6

    :goto_0
    iput-object v2, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/channels/j0;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 5
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iget-object p1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$0:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$1:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/CombineSource;

    .line 1
    iget-object v2, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->$$this$simpleChannelFlow:Landroidx/paging/SimpleProducerScope;

    iget-object v3, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1;->$transform:Lkotlin/jvm/functions/Function4;

    invoke-interface {v3, p1, v0, v1, p0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v2, p1, p0}, Lkotlinx/coroutines/channels/j0;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
