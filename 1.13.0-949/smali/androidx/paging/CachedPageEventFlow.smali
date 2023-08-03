.class public final Landroidx/paging/CachedPageEventFlow;
.super Ljava/lang/Object;
.source "CachedPageEventFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B#\u0012\u0012\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\n0\u0013\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0006\u0010\u0004\u001a\u00020\u0003R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R(\u0010\u000b\u001a\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\n\u0018\u00010\t0\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR(\u0010\u000e\u001a\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\n\u0018\u00010\t0\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R#\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\n0\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/paging/CachedPageEventFlow;",
        "",
        "T",
        "",
        "close",
        "Landroidx/paging/FlattenedPageController;",
        "pageController",
        "Landroidx/paging/FlattenedPageController;",
        "Lkotlinx/coroutines/flow/s;",
        "Lkotlin/collections/IndexedValue;",
        "Landroidx/paging/PageEvent;",
        "mutableSharedSrc",
        "Lkotlinx/coroutines/flow/s;",
        "Lkotlinx/coroutines/flow/x;",
        "sharedForDownstream",
        "Lkotlinx/coroutines/flow/x;",
        "Lkotlinx/coroutines/j2;",
        "job",
        "Lkotlinx/coroutines/j2;",
        "Lkotlinx/coroutines/flow/i;",
        "downstreamFlow",
        "Lkotlinx/coroutines/flow/i;",
        "getDownstreamFlow",
        "()Lkotlinx/coroutines/flow/i;",
        "src",
        "Lkotlinx/coroutines/s0;",
        "scope",
        "<init>",
        "(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;)V",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final downstreamFlow:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final job:Lkotlinx/coroutines/j2;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final mutableSharedSrc:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "Lkotlin/collections/IndexedValue<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final pageController:Landroidx/paging/FlattenedPageController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/FlattenedPageController<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final sharedForDownstream:Lkotlinx/coroutines/flow/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/x<",
            "Lkotlin/collections/IndexedValue<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;)V
    .locals 9
    .param p1    # Lkotlinx/coroutines/flow/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/i<",
            "+",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;",
            "Lkotlinx/coroutines/s0;",
            ")V"
        }
    .end annotation

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/paging/FlattenedPageController;

    invoke-direct {v0}, Landroidx/paging/FlattenedPageController;-><init>()V

    iput-object v0, p0, Landroidx/paging/CachedPageEventFlow;->pageController:Landroidx/paging/FlattenedPageController;

    .line 3
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v1, 0x1

    const v2, 0x7fffffff

    .line 4
    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/flow/z;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/CachedPageEventFlow;->mutableSharedSrc:Lkotlinx/coroutines/flow/s;

    .line 5
    new-instance v1, Landroidx/paging/CachedPageEventFlow$sharedForDownstream$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/paging/CachedPageEventFlow$sharedForDownstream$1;-><init>(Landroidx/paging/CachedPageEventFlow;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/k;->m1(Lkotlinx/coroutines/flow/x;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/x;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/CachedPageEventFlow;->sharedForDownstream:Lkotlinx/coroutines/flow/x;

    .line 6
    sget-object v5, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    new-instance v6, Landroidx/paging/CachedPageEventFlow$job$1;

    invoke-direct {v6, p1, p0, v2}, Landroidx/paging/CachedPageEventFlow$job$1;-><init>(Lkotlinx/coroutines/flow/i;Landroidx/paging/CachedPageEventFlow;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    move-result-object p1

    .line 7
    new-instance p2, Landroidx/paging/CachedPageEventFlow$job$2$1;

    invoke-direct {p2, p0}, Landroidx/paging/CachedPageEventFlow$job$2$1;-><init>(Landroidx/paging/CachedPageEventFlow;)V

    invoke-interface {p1, p2}, Lkotlinx/coroutines/j2;->H(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/l1;

    .line 8
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    iput-object p1, p0, Landroidx/paging/CachedPageEventFlow;->job:Lkotlinx/coroutines/j2;

    .line 10
    new-instance p1, Landroidx/paging/CachedPageEventFlow$downstreamFlow$1;

    invoke-direct {p1, p0, v2}, Landroidx/paging/CachedPageEventFlow$downstreamFlow$1;-><init>(Landroidx/paging/CachedPageEventFlow;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/k;->I0(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/CachedPageEventFlow;->downstreamFlow:Lkotlinx/coroutines/flow/i;

    return-void
.end method

.method public static final synthetic access$getJob$p(Landroidx/paging/CachedPageEventFlow;)Lkotlinx/coroutines/j2;
    .locals 0

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->job:Lkotlinx/coroutines/j2;

    return-object p0
.end method

.method public static final synthetic access$getMutableSharedSrc$p(Landroidx/paging/CachedPageEventFlow;)Lkotlinx/coroutines/flow/s;
    .locals 0

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->mutableSharedSrc:Lkotlinx/coroutines/flow/s;

    return-object p0
.end method

.method public static final synthetic access$getPageController$p(Landroidx/paging/CachedPageEventFlow;)Landroidx/paging/FlattenedPageController;
    .locals 0

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->pageController:Landroidx/paging/FlattenedPageController;

    return-object p0
.end method

.method public static final synthetic access$getSharedForDownstream$p(Landroidx/paging/CachedPageEventFlow;)Lkotlinx/coroutines/flow/x;
    .locals 0

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->sharedForDownstream:Lkotlinx/coroutines/flow/x;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Landroidx/paging/CachedPageEventFlow;->job:Lkotlinx/coroutines/j2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/j2$a;->b(Lkotlinx/coroutines/j2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final getDownstreamFlow()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/CachedPageEventFlow;->downstreamFlow:Lkotlinx/coroutines/flow/i;

    return-object v0
.end method
