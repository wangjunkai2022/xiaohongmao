.class final Landroidx/paging/MulticastedPagingData;
.super Ljava/lang/Object;
.source "CachedPagingData.kt"


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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B)\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003J\u0013\u0010\u0006\u001a\u00020\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/paging/MulticastedPagingData;",
        "",
        "T",
        "Landroidx/paging/PagingData;",
        "asPagingData",
        "",
        "close",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/s0;",
        "scope",
        "Lkotlinx/coroutines/s0;",
        "getScope",
        "()Lkotlinx/coroutines/s0;",
        "parent",
        "Landroidx/paging/PagingData;",
        "getParent",
        "()Landroidx/paging/PagingData;",
        "Landroidx/paging/ActiveFlowTracker;",
        "tracker",
        "Landroidx/paging/ActiveFlowTracker;",
        "getTracker",
        "()Landroidx/paging/ActiveFlowTracker;",
        "Landroidx/paging/CachedPageEventFlow;",
        "accumulated",
        "Landroidx/paging/CachedPageEventFlow;",
        "<init>",
        "(Lkotlinx/coroutines/s0;Landroidx/paging/PagingData;Landroidx/paging/ActiveFlowTracker;)V",
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
.field private final accumulated:Landroidx/paging/CachedPageEventFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/CachedPageEventFlow<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final parent:Landroidx/paging/PagingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/s0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final tracker:Landroidx/paging/ActiveFlowTracker;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/s0;Landroidx/paging/PagingData;Landroidx/paging/ActiveFlowTracker;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/PagingData;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/paging/ActiveFlowTracker;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Landroidx/paging/ActiveFlowTracker;",
            ")V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/MulticastedPagingData;->scope:Lkotlinx/coroutines/s0;

    .line 3
    iput-object p2, p0, Landroidx/paging/MulticastedPagingData;->parent:Landroidx/paging/PagingData;

    .line 4
    iput-object p3, p0, Landroidx/paging/MulticastedPagingData;->tracker:Landroidx/paging/ActiveFlowTracker;

    .line 5
    new-instance p3, Landroidx/paging/CachedPageEventFlow;

    .line 6
    invoke-virtual {p2}, Landroidx/paging/PagingData;->getFlow$paging_common()Lkotlinx/coroutines/flow/i;

    move-result-object p2

    new-instance v0, Landroidx/paging/MulticastedPagingData$accumulated$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/paging/MulticastedPagingData$accumulated$1;-><init>(Landroidx/paging/MulticastedPagingData;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/k;->l1(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;

    move-result-object p2

    .line 7
    new-instance v0, Landroidx/paging/MulticastedPagingData$accumulated$2;

    invoke-direct {v0, p0, v1}, Landroidx/paging/MulticastedPagingData$accumulated$2;-><init>(Landroidx/paging/MulticastedPagingData;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/k;->d1(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;

    move-result-object p2

    .line 8
    invoke-direct {p3, p2, p1}, Landroidx/paging/CachedPageEventFlow;-><init>(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;)V

    iput-object p3, p0, Landroidx/paging/MulticastedPagingData;->accumulated:Landroidx/paging/CachedPageEventFlow;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/s0;Landroidx/paging/PagingData;Landroidx/paging/ActiveFlowTracker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/paging/MulticastedPagingData;-><init>(Lkotlinx/coroutines/s0;Landroidx/paging/PagingData;Landroidx/paging/ActiveFlowTracker;)V

    return-void
.end method


# virtual methods
.method public final asPagingData()Landroidx/paging/PagingData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Landroidx/paging/PagingData;

    .line 2
    iget-object v1, p0, Landroidx/paging/MulticastedPagingData;->accumulated:Landroidx/paging/CachedPageEventFlow;

    invoke-virtual {v1}, Landroidx/paging/CachedPageEventFlow;->getDownstreamFlow()Lkotlinx/coroutines/flow/i;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroidx/paging/MulticastedPagingData;->parent:Landroidx/paging/PagingData;

    invoke-virtual {v2}, Landroidx/paging/PagingData;->getReceiver$paging_common()Landroidx/paging/UiReceiver;

    move-result-object v2

    .line 4
    invoke-direct {v0, v1, v2}, Landroidx/paging/PagingData;-><init>(Lkotlinx/coroutines/flow/i;Landroidx/paging/UiReceiver;)V

    return-object v0
.end method

.method public final close(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object p1, p0, Landroidx/paging/MulticastedPagingData;->accumulated:Landroidx/paging/CachedPageEventFlow;

    invoke-virtual {p1}, Landroidx/paging/CachedPageEventFlow;->close()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getParent()Landroidx/paging/PagingData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingData<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/MulticastedPagingData;->parent:Landroidx/paging/PagingData;

    return-object v0
.end method

.method public final getScope()Lkotlinx/coroutines/s0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/MulticastedPagingData;->scope:Lkotlinx/coroutines/s0;

    return-object v0
.end method

.method public final getTracker()Landroidx/paging/ActiveFlowTracker;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/paging/MulticastedPagingData;->tracker:Landroidx/paging/ActiveFlowTracker;

    return-object v0
.end method
