.class public abstract Landroidx/paging/PagingDataDiffer;
.super Ljava/lang/Object;
.source "PagingDataDiffer.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

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
        "\u0000\u00a1\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0001@\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0019\u0012\u0006\u0010)\u001a\u00020(\u0012\u0008\u0008\u0002\u0010,\u001a\u00020+\u00a2\u0006\u0004\u0008P\u0010QJ!\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008JG\u0010\u0011\u001a\u0004\u0018\u00010\r2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000fH\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J!\u0010\u0017\u001a\u00020\u00062\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0015H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001c\u0010\u001a\u001a\u0004\u0018\u00018\u00002\u0008\u0008\u0001\u0010\u0019\u001a\u00020\rH\u0086\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0019\u0010\u001c\u001a\u0004\u0018\u00018\u00002\u0008\u0008\u0001\u0010\u0019\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dJ\u0006\u0010\u001f\u001a\u00020\u0006J\u0006\u0010 \u001a\u00020\u0006J\u0014\u0010\"\u001a\u00020\u00062\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000fJ\u0014\u0010#\u001a\u00020\u00062\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000fJ\u001a\u0010&\u001a\u00020\u00062\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00060$J\u001a\u0010\'\u001a\u00020\u00062\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00060$R\u0014\u0010)\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010,\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u001c\u0010/\u001a\u0008\u0012\u0004\u0012\u00028\u00000.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0018\u00102\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R \u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u000f078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010;\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010=\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010?R\u001a\u0010A\u001a\u0008\u0012\u0004\u0012\u00028\u00000@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u001d\u0010D\u001a\u0008\u0012\u0004\u0012\u00020%0C8\u0006\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010GR\u001a\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00060H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0011\u0010M\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010LR\u0017\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u00060C8F\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010G\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006R"
    }
    d2 = {
        "Landroidx/paging/PagingDataDiffer;",
        "",
        "T",
        "Landroidx/paging/LoadStates;",
        "source",
        "mediator",
        "",
        "dispatchLoadStates$paging_common",
        "(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V",
        "dispatchLoadStates",
        "Landroidx/paging/NullPaddedList;",
        "previousList",
        "newList",
        "",
        "lastAccessedIndex",
        "Lkotlin/Function0;",
        "onListPresentable",
        "presentNewList",
        "(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;ILkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "postEvents",
        "Landroidx/paging/PagingData;",
        "pagingData",
        "collectFrom",
        "(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "index",
        "get",
        "(I)Ljava/lang/Object;",
        "peek",
        "Landroidx/paging/ItemSnapshotList;",
        "snapshot",
        "retry",
        "refresh",
        "listener",
        "addOnPagesUpdatedListener",
        "removeOnPagesUpdatedListener",
        "Lkotlin/Function1;",
        "Landroidx/paging/CombinedLoadStates;",
        "addLoadStateListener",
        "removeLoadStateListener",
        "Landroidx/paging/DifferCallback;",
        "differCallback",
        "Landroidx/paging/DifferCallback;",
        "Lkotlinx/coroutines/n0;",
        "mainDispatcher",
        "Lkotlinx/coroutines/n0;",
        "Landroidx/paging/PagePresenter;",
        "presenter",
        "Landroidx/paging/PagePresenter;",
        "Landroidx/paging/UiReceiver;",
        "receiver",
        "Landroidx/paging/UiReceiver;",
        "Landroidx/paging/MutableCombinedLoadStateCollection;",
        "combinedLoadStatesCollection",
        "Landroidx/paging/MutableCombinedLoadStateCollection;",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "onPagesUpdatedListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Landroidx/paging/SingleRunner;",
        "collectFromRunner",
        "Landroidx/paging/SingleRunner;",
        "lastAccessedIndexUnfulfilled",
        "Z",
        "I",
        "androidx/paging/PagingDataDiffer$processPageEventCallback$1",
        "processPageEventCallback",
        "Landroidx/paging/PagingDataDiffer$processPageEventCallback$1;",
        "Lkotlinx/coroutines/flow/i;",
        "loadStateFlow",
        "Lkotlinx/coroutines/flow/i;",
        "getLoadStateFlow",
        "()Lkotlinx/coroutines/flow/i;",
        "Lkotlinx/coroutines/flow/s;",
        "_onPagesUpdatedFlow",
        "Lkotlinx/coroutines/flow/s;",
        "getSize",
        "()I",
        "size",
        "getOnPagesUpdatedFlow",
        "onPagesUpdatedFlow",
        "<init>",
        "(Landroidx/paging/DifferCallback;Lkotlinx/coroutines/n0;)V",
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
.field private final _onPagesUpdatedFlow:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final collectFromRunner:Landroidx/paging/SingleRunner;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final differCallback:Landroidx/paging/DifferCallback;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile lastAccessedIndex:I

.field private volatile lastAccessedIndexUnfulfilled:Z

.field private final loadStateFlow:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final mainDispatcher:Lkotlinx/coroutines/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final onPagesUpdatedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private presenter:Landroidx/paging/PagePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagePresenter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final processPageEventCallback:Landroidx/paging/PagingDataDiffer$processPageEventCallback$1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private receiver:Landroidx/paging/UiReceiver;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/DifferCallback;Lkotlinx/coroutines/n0;)V
    .locals 3
    .param p1    # Landroidx/paging/DifferCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "differCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/PagingDataDiffer;->differCallback:Landroidx/paging/DifferCallback;

    .line 3
    iput-object p2, p0, Landroidx/paging/PagingDataDiffer;->mainDispatcher:Lkotlinx/coroutines/n0;

    .line 4
    sget-object p1, Landroidx/paging/PagePresenter;->Companion:Landroidx/paging/PagePresenter$Companion;

    invoke-virtual {p1}, Landroidx/paging/PagePresenter$Companion;->initial$paging_common()Landroidx/paging/PagePresenter;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PagingDataDiffer;->presenter:Landroidx/paging/PagePresenter;

    .line 5
    new-instance p1, Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-direct {p1}, Landroidx/paging/MutableCombinedLoadStateCollection;-><init>()V

    iput-object p1, p0, Landroidx/paging/PagingDataDiffer;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    .line 6
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Landroidx/paging/PagingDataDiffer;->onPagesUpdatedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    new-instance p2, Landroidx/paging/SingleRunner;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/paging/SingleRunner;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Landroidx/paging/PagingDataDiffer;->collectFromRunner:Landroidx/paging/SingleRunner;

    .line 8
    new-instance p2, Landroidx/paging/PagingDataDiffer$processPageEventCallback$1;

    invoke-direct {p2, p0}, Landroidx/paging/PagingDataDiffer$processPageEventCallback$1;-><init>(Landroidx/paging/PagingDataDiffer;)V

    iput-object p2, p0, Landroidx/paging/PagingDataDiffer;->processPageEventCallback:Landroidx/paging/PagingDataDiffer$processPageEventCallback$1;

    .line 9
    invoke-virtual {p1}, Landroidx/paging/MutableCombinedLoadStateCollection;->getFlow()Lkotlinx/coroutines/flow/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PagingDataDiffer;->loadStateFlow:Lkotlinx/coroutines/flow/i;

    .line 10
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/16 p2, 0x40

    .line 11
    invoke-static {v0, p2, p1}, Lkotlinx/coroutines/flow/z;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PagingDataDiffer;->_onPagesUpdatedFlow:Lkotlinx/coroutines/flow/s;

    .line 12
    new-instance p1, Landroidx/paging/PagingDataDiffer$1;

    invoke-direct {p1, p0}, Landroidx/paging/PagingDataDiffer$1;-><init>(Landroidx/paging/PagingDataDiffer;)V

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataDiffer;->addOnPagesUpdatedListener(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/paging/DifferCallback;Lkotlinx/coroutines/n0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 13
    invoke-static {}, Lkotlinx/coroutines/i1;->e()Lkotlinx/coroutines/u2;

    move-result-object p2

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/paging/PagingDataDiffer;-><init>(Landroidx/paging/DifferCallback;Lkotlinx/coroutines/n0;)V

    return-void
.end method

.method public static final synthetic access$getCombinedLoadStatesCollection$p(Landroidx/paging/PagingDataDiffer;)Landroidx/paging/MutableCombinedLoadStateCollection;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataDiffer;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    return-object p0
.end method

.method public static final synthetic access$getDifferCallback$p(Landroidx/paging/PagingDataDiffer;)Landroidx/paging/DifferCallback;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataDiffer;->differCallback:Landroidx/paging/DifferCallback;

    return-object p0
.end method

.method public static final synthetic access$getLastAccessedIndex$p(Landroidx/paging/PagingDataDiffer;)I
    .locals 0

    iget p0, p0, Landroidx/paging/PagingDataDiffer;->lastAccessedIndex:I

    return p0
.end method

.method public static final synthetic access$getLastAccessedIndexUnfulfilled$p(Landroidx/paging/PagingDataDiffer;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/paging/PagingDataDiffer;->lastAccessedIndexUnfulfilled:Z

    return p0
.end method

.method public static final synthetic access$getMainDispatcher$p(Landroidx/paging/PagingDataDiffer;)Lkotlinx/coroutines/n0;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataDiffer;->mainDispatcher:Lkotlinx/coroutines/n0;

    return-object p0
.end method

.method public static final synthetic access$getOnPagesUpdatedListeners$p(Landroidx/paging/PagingDataDiffer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataDiffer;->onPagesUpdatedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic access$getPresenter$p(Landroidx/paging/PagingDataDiffer;)Landroidx/paging/PagePresenter;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataDiffer;->presenter:Landroidx/paging/PagePresenter;

    return-object p0
.end method

.method public static final synthetic access$getProcessPageEventCallback$p(Landroidx/paging/PagingDataDiffer;)Landroidx/paging/PagingDataDiffer$processPageEventCallback$1;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataDiffer;->processPageEventCallback:Landroidx/paging/PagingDataDiffer$processPageEventCallback$1;

    return-object p0
.end method

.method public static final synthetic access$getReceiver$p(Landroidx/paging/PagingDataDiffer;)Landroidx/paging/UiReceiver;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataDiffer;->receiver:Landroidx/paging/UiReceiver;

    return-object p0
.end method

.method public static final synthetic access$get_onPagesUpdatedFlow$p(Landroidx/paging/PagingDataDiffer;)Lkotlinx/coroutines/flow/s;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PagingDataDiffer;->_onPagesUpdatedFlow:Lkotlinx/coroutines/flow/s;

    return-object p0
.end method

.method public static final synthetic access$setLastAccessedIndex$p(Landroidx/paging/PagingDataDiffer;I)V
    .locals 0

    iput p1, p0, Landroidx/paging/PagingDataDiffer;->lastAccessedIndex:I

    return-void
.end method

.method public static final synthetic access$setLastAccessedIndexUnfulfilled$p(Landroidx/paging/PagingDataDiffer;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/paging/PagingDataDiffer;->lastAccessedIndexUnfulfilled:Z

    return-void
.end method

.method public static final synthetic access$setPresenter$p(Landroidx/paging/PagingDataDiffer;Landroidx/paging/PagePresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/PagingDataDiffer;->presenter:Landroidx/paging/PagePresenter;

    return-void
.end method

.method public static final synthetic access$setReceiver$p(Landroidx/paging/PagingDataDiffer;Landroidx/paging/UiReceiver;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/PagingDataDiffer;->receiver:Landroidx/paging/UiReceiver;

    return-void
.end method


# virtual methods
.method public final addLoadStateListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-virtual {v0, p1}, Landroidx/paging/MutableCombinedLoadStateCollection;->addListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final addOnPagesUpdatedListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->onPagesUpdatedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final collectFrom(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1    # Landroidx/paging/PagingData;
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
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->collectFromRunner:Landroidx/paging/SingleRunner;

    new-instance v2, Landroidx/paging/PagingDataDiffer$collectFrom$2;

    const/4 v1, 0x0

    invoke-direct {v2, p0, p1, v1}, Landroidx/paging/PagingDataDiffer$collectFrom$2;-><init>(Landroidx/paging/PagingDataDiffer;Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/paging/SingleRunner;->runInIsolation$default(Landroidx/paging/SingleRunner;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final dispatchLoadStates$paging_common(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V
    .locals 1
    .param p1    # Landroidx/paging/LoadStates;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/LoadStates;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-virtual {v0}, Landroidx/paging/MutableCombinedLoadStateCollection;->getSource()Landroidx/paging/LoadStates;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-virtual {v0}, Landroidx/paging/MutableCombinedLoadStateCollection;->getMediator()Landroidx/paging/LoadStates;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-virtual {v0, p1, p2}, Landroidx/paging/MutableCombinedLoadStateCollection;->set(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/paging/PagingDataDiffer;->lastAccessedIndexUnfulfilled:Z

    .line 2
    iput p1, p0, Landroidx/paging/PagingDataDiffer;->lastAccessedIndex:I

    .line 3
    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->receiver:Landroidx/paging/UiReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/paging/PagingDataDiffer;->presenter:Landroidx/paging/PagePresenter;

    invoke-virtual {v1, p1}, Landroidx/paging/PagePresenter;->accessHintForPresenterIndex(I)Landroidx/paging/ViewportHint$Access;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/paging/UiReceiver;->accessHint(Landroidx/paging/ViewportHint;)V

    .line 4
    :goto_0
    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->presenter:Landroidx/paging/PagePresenter;

    invoke-virtual {v0, p1}, Landroidx/paging/PagePresenter;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getLoadStateFlow()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->loadStateFlow:Lkotlinx/coroutines/flow/i;

    return-object v0
.end method

.method public final getOnPagesUpdatedFlow()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->_onPagesUpdatedFlow:Lkotlinx/coroutines/flow/s;

    invoke-static {v0}, Lkotlinx/coroutines/flow/k;->l(Lkotlinx/coroutines/flow/s;)Lkotlinx/coroutines/flow/x;

    move-result-object v0

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->presenter:Landroidx/paging/PagePresenter;

    invoke-virtual {v0}, Landroidx/paging/PagePresenter;->getSize()I

    move-result v0

    return v0
.end method

.method public final peek(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->presenter:Landroidx/paging/PagePresenter;

    invoke-virtual {v0, p1}, Landroidx/paging/PagePresenter;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public postEvents()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract presentNewList(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;ILkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Landroidx/paging/NullPaddedList;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/NullPaddedList;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public final refresh()V
    .locals 1

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->receiver:Landroidx/paging/UiReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/paging/UiReceiver;->refresh()V

    :goto_0
    return-void
.end method

.method public final removeLoadStateListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->combinedLoadStatesCollection:Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-virtual {v0, p1}, Landroidx/paging/MutableCombinedLoadStateCollection;->removeListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final removeOnPagesUpdatedListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->onPagesUpdatedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final retry()V
    .locals 1

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->receiver:Landroidx/paging/UiReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/paging/UiReceiver;->retry()V

    :goto_0
    return-void
.end method

.method public final snapshot()Landroidx/paging/ItemSnapshotList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/ItemSnapshotList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagingDataDiffer;->presenter:Landroidx/paging/PagePresenter;

    invoke-virtual {v0}, Landroidx/paging/PagePresenter;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object v0

    return-object v0
.end method
