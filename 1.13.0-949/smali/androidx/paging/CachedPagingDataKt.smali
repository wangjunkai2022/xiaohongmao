.class public final Landroidx/paging/CachedPagingDataKt;
.super Ljava/lang/Object;
.source "CachedPagingData.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCachedPagingData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CachedPagingData.kt\nandroidx/paging/CachedPagingDataKt\n+ 2 FlowExt.kt\nandroidx/paging/FlowExtKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,128:1\n103#2:129\n47#3:130\n49#3:134\n50#4:131\n55#4:133\n106#5:132\n*S KotlinDebug\n*F\n+ 1 CachedPagingData.kt\nandroidx/paging/CachedPagingDataKt\n*L\n93#1:129\n101#1:130\n101#1:134\n101#1:131\n101#1:133\n101#1:132\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a6\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u001aB\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "",
        "T",
        "Lkotlinx/coroutines/flow/i;",
        "Landroidx/paging/PagingData;",
        "Lkotlinx/coroutines/s0;",
        "scope",
        "cachedIn",
        "Landroidx/paging/ActiveFlowTracker;",
        "tracker",
        "paging-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final cachedIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;)Lkotlinx/coroutines/flow/i;
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "TT;>;>;",
            "Lkotlinx/coroutines/s0;",
            ")",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroidx/paging/CachedPagingDataKt;->cachedIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;Landroidx/paging/ActiveFlowTracker;)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    return-object p0
.end method

.method public static final cachedIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;Landroidx/paging/ActiveFlowTracker;)Lkotlinx/coroutines/flow/i;
    .locals 2
    .param p0    # Lkotlinx/coroutines/flow/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/ActiveFlowTracker;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "TT;>;>;",
            "Lkotlinx/coroutines/s0;",
            "Landroidx/paging/ActiveFlowTracker;",
            ")",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/s0;)V

    invoke-static {p0, v0}, Landroidx/paging/FlowExtKt;->simpleTransformLatest(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    .line 3
    new-instance v0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;

    invoke-direct {v0, v1}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Landroidx/paging/FlowExtKt;->simpleRunningReduce(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    .line 4
    new-instance v0, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1;

    invoke-direct {v0, p0}, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/i;)V

    .line 5
    new-instance p0, Landroidx/paging/CachedPagingDataKt$cachedIn$4;

    invoke-direct {p0, p2, v1}, Landroidx/paging/CachedPagingDataKt$cachedIn$4;-><init>(Landroidx/paging/ActiveFlowTracker;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/k;->l1(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    .line 6
    new-instance v0, Landroidx/paging/CachedPagingDataKt$cachedIn$5;

    invoke-direct {v0, p2, v1}, Landroidx/paging/CachedPagingDataKt$cachedIn$5;-><init>(Landroidx/paging/ActiveFlowTracker;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/k;->d1(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    .line 7
    sget-object p2, Lkotlinx/coroutines/flow/c0;->a:Lkotlinx/coroutines/flow/c0$a;

    invoke-virtual {p2}, Lkotlinx/coroutines/flow/c0$a;->d()Lkotlinx/coroutines/flow/c0;

    move-result-object p2

    const/4 v0, 0x1

    .line 8
    invoke-static {p0, p1, p2, v0}, Lkotlinx/coroutines/flow/k;->F1(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;Lkotlinx/coroutines/flow/c0;I)Lkotlinx/coroutines/flow/x;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic cachedIn$default(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;Landroidx/paging/ActiveFlowTracker;ILjava/lang/Object;)Lkotlinx/coroutines/flow/i;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/paging/CachedPagingDataKt;->cachedIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;Landroidx/paging/ActiveFlowTracker;)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    return-object p0
.end method
