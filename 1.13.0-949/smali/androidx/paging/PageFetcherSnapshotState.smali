.class public final Landroidx/paging/PageFetcherSnapshotState;
.super Ljava/lang/Object;
.source "PageFetcherSnapshotState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PageFetcherSnapshotState$Holder;,
        Landroidx/paging/PageFetcherSnapshotState$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageFetcherSnapshotState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageFetcherSnapshotState.kt\nandroidx/paging/PageFetcherSnapshotState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,397:1\n1#2:398\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0008\u0008\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0001PB\u0011\u0008\u0002\u0012\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008N\u0010OJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nJ\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nJ-\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000e*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J,\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rH\u0007J\u0014\u0010\u0019\u001a\u00020\u00182\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0016J\u001e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00162\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aJ%\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0000\u00a2\u0006\u0004\u0008 \u0010!R\u0014\u0010$\u001a\u00020#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R&\u0010\'\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r0&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R,\u0010*\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r0)8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008*\u0010(\u001a\u0004\u0008+\u0010,R$\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00068\u0000@BX\u0080\u000e\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010/R\u0016\u00103\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010/R\u0016\u00104\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u0010/R\u0016\u00105\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u0010/R\u001a\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u0006068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u001a\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u0006068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u00108R&\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001a0:8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R$\u0010@\u001a\u00020?2\u0006\u0010-\u001a\u00020?8\u0000@BX\u0080\u000e\u00a2\u0006\u000c\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010CR\u0014\u0010E\u001a\u00020\u00068@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u00101R$\u0010J\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u00068@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008G\u00101\"\u0004\u0008H\u0010IR$\u0010M\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u00068@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008K\u00101\"\u0004\u0008L\u0010I\u00a8\u0006Q"
    }
    d2 = {
        "Landroidx/paging/PageFetcherSnapshotState;",
        "",
        "Key",
        "Value",
        "Landroidx/paging/LoadType;",
        "loadType",
        "",
        "generationId$paging_common",
        "(Landroidx/paging/LoadType;)I",
        "generationId",
        "Lkotlinx/coroutines/flow/i;",
        "consumePrependGenerationIdAsFlow",
        "consumeAppendGenerationIdAsFlow",
        "Landroidx/paging/PagingSource$LoadResult$Page;",
        "Landroidx/paging/PageEvent;",
        "toPageEvent$paging_common",
        "(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/LoadType;)Landroidx/paging/PageEvent;",
        "toPageEvent",
        "loadId",
        "page",
        "",
        "insert",
        "Landroidx/paging/PageEvent$Drop;",
        "event",
        "",
        "drop",
        "Landroidx/paging/ViewportHint;",
        "hint",
        "dropEventOrNull",
        "Landroidx/paging/ViewportHint$Access;",
        "viewportHint",
        "Landroidx/paging/PagingState;",
        "currentPagingState$paging_common",
        "(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;",
        "currentPagingState",
        "Landroidx/paging/PagingConfig;",
        "config",
        "Landroidx/paging/PagingConfig;",
        "",
        "_pages",
        "Ljava/util/List;",
        "",
        "pages",
        "getPages$paging_common",
        "()Ljava/util/List;",
        "<set-?>",
        "initialPageIndex",
        "I",
        "getInitialPageIndex$paging_common",
        "()I",
        "_placeholdersBefore",
        "_placeholdersAfter",
        "prependGenerationId",
        "appendGenerationId",
        "Lkotlinx/coroutines/channels/m;",
        "prependGenerationIdCh",
        "Lkotlinx/coroutines/channels/m;",
        "appendGenerationIdCh",
        "",
        "failedHintsByLoadType",
        "Ljava/util/Map;",
        "getFailedHintsByLoadType$paging_common",
        "()Ljava/util/Map;",
        "Landroidx/paging/MutableLoadStateCollection;",
        "sourceLoadStates",
        "Landroidx/paging/MutableLoadStateCollection;",
        "getSourceLoadStates$paging_common",
        "()Landroidx/paging/MutableLoadStateCollection;",
        "getStorageCount$paging_common",
        "storageCount",
        "value",
        "getPlaceholdersBefore$paging_common",
        "setPlaceholdersBefore$paging_common",
        "(I)V",
        "placeholdersBefore",
        "getPlaceholdersAfter$paging_common",
        "setPlaceholdersAfter$paging_common",
        "placeholdersAfter",
        "<init>",
        "(Landroidx/paging/PagingConfig;)V",
        "Holder",
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
.field private final _pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "TKey;TValue;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private _placeholdersAfter:I

.field private _placeholdersBefore:I

.field private appendGenerationId:I

.field private final appendGenerationIdCh:Lkotlinx/coroutines/channels/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/m<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final config:Landroidx/paging/PagingConfig;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final failedHintsByLoadType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/ViewportHint;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private initialPageIndex:I

.field private final pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "TKey;TValue;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private prependGenerationId:I

.field private final prependGenerationIdCh:Lkotlinx/coroutines/channels/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/m<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private sourceLoadStates:Landroidx/paging/MutableLoadStateCollection;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/paging/PagingConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->_pages:Ljava/util/List;

    .line 4
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 5
    invoke-static {p1, v0, v0, v1, v0}, Lkotlinx/coroutines/channels/p;->d(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/m;

    move-result-object v2

    iput-object v2, p0, Landroidx/paging/PageFetcherSnapshotState;->prependGenerationIdCh:Lkotlinx/coroutines/channels/m;

    .line 6
    invoke-static {p1, v0, v0, v1, v0}, Lkotlinx/coroutines/channels/p;->d(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/m;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->appendGenerationIdCh:Lkotlinx/coroutines/channels/m;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->failedHintsByLoadType:Ljava/util/Map;

    .line 8
    new-instance p1, Landroidx/paging/MutableLoadStateCollection;

    invoke-direct {p1}, Landroidx/paging/MutableLoadStateCollection;-><init>()V

    .line 9
    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    sget-object v1, Landroidx/paging/LoadState$Loading;->INSTANCE:Landroidx/paging/LoadState$Loading;

    invoke-virtual {p1, v0, v1}, Landroidx/paging/MutableLoadStateCollection;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Landroidx/paging/MutableLoadStateCollection;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/paging/PagingConfig;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/paging/PageFetcherSnapshotState;-><init>(Landroidx/paging/PagingConfig;)V

    return-void
.end method

.method public static final synthetic access$getAppendGenerationId$p(Landroidx/paging/PageFetcherSnapshotState;)I
    .locals 0

    iget p0, p0, Landroidx/paging/PageFetcherSnapshotState;->appendGenerationId:I

    return p0
.end method

.method public static final synthetic access$getAppendGenerationIdCh$p(Landroidx/paging/PageFetcherSnapshotState;)Lkotlinx/coroutines/channels/m;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshotState;->appendGenerationIdCh:Lkotlinx/coroutines/channels/m;

    return-object p0
.end method

.method public static final synthetic access$getPrependGenerationId$p(Landroidx/paging/PageFetcherSnapshotState;)I
    .locals 0

    iget p0, p0, Landroidx/paging/PageFetcherSnapshotState;->prependGenerationId:I

    return p0
.end method

.method public static final synthetic access$getPrependGenerationIdCh$p(Landroidx/paging/PageFetcherSnapshotState;)Lkotlinx/coroutines/channels/m;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshotState;->prependGenerationIdCh:Lkotlinx/coroutines/channels/m;

    return-object p0
.end method


# virtual methods
.method public final consumeAppendGenerationIdAsFlow()Lkotlinx/coroutines/flow/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->appendGenerationIdCh:Lkotlinx/coroutines/channels/m;

    invoke-static {v0}, Lkotlinx/coroutines/flow/k;->X(Lkotlinx/coroutines/channels/f0;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/paging/PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/paging/PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1;-><init>(Landroidx/paging/PageFetcherSnapshotState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/k;->l1(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    return-object v0
.end method

.method public final consumePrependGenerationIdAsFlow()Lkotlinx/coroutines/flow/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->prependGenerationIdCh:Lkotlinx/coroutines/channels/m;

    invoke-static {v0}, Lkotlinx/coroutines/flow/k;->X(Lkotlinx/coroutines/channels/f0;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/paging/PageFetcherSnapshotState$consumePrependGenerationIdAsFlow$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/paging/PageFetcherSnapshotState$consumePrependGenerationIdAsFlow$1;-><init>(Landroidx/paging/PageFetcherSnapshotState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/k;->l1(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    return-object v0
.end method

.method public final currentPagingState$paging_common(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;
    .locals 9
    .param p1    # Landroidx/paging/ViewportHint$Access;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/ViewportHint$Access;",
            ")",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPlaceholdersBefore$paging_common()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getInitialPageIndex$paging_common()I

    move-result v2

    neg-int v2, v2

    .line 4
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPages$paging_common()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getInitialPageIndex$paging_common()I

    move-result v4

    sub-int/2addr v3, v4

    .line 5
    invoke-virtual {p1}, Landroidx/paging/ViewportHint$Access;->getPageOffset()I

    move-result v4

    if-ge v2, v4, :cond_3

    move v5, v2

    :goto_0
    add-int/lit8 v6, v5, 0x1

    if-le v5, v3, :cond_1

    .line 6
    iget-object v5, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    iget v5, v5, Landroidx/paging/PagingConfig;->pageSize:I

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPages$paging_common()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getInitialPageIndex$paging_common()I

    move-result v8

    add-int/2addr v5, v8

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v5}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    add-int/2addr v1, v5

    if-lt v6, v4, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    goto :goto_0

    .line 8
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroidx/paging/ViewportHint$Access;->getIndexInPage()I

    move-result v3

    add-int/2addr v1, v3

    .line 9
    invoke-virtual {p1}, Landroidx/paging/ViewportHint$Access;->getPageOffset()I

    move-result p1

    if-ge p1, v2, :cond_4

    .line 10
    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    iget p1, p1, Landroidx/paging/PagingConfig;->pageSize:I

    sub-int/2addr v1, p1

    .line 11
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 12
    :goto_3
    iget-object v1, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    .line 13
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPlaceholdersBefore$paging_common()I

    move-result v2

    .line 14
    new-instance v3, Landroidx/paging/PagingState;

    invoke-direct {v3, v0, p1, v1, v2}, Landroidx/paging/PagingState;-><init>(Ljava/util/List;Ljava/lang/Integer;Landroidx/paging/PagingConfig;I)V

    return-object v3
.end method

.method public final drop(Landroidx/paging/PageEvent$Drop;)V
    .locals 5
    .param p1    # Landroidx/paging/PageEvent$Drop;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageEvent$Drop<",
            "TValue;>;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPageCount()I

    move-result v0

    iget-object v1, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->failedHintsByLoadType:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Landroidx/paging/MutableLoadStateCollection;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v1

    sget-object v4, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v4}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroidx/paging/MutableLoadStateCollection;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 4
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v0

    sget-object v1, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPageCount()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Landroidx/paging/PageFetcherSnapshotState;->_pages:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPages$paging_common()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPlaceholdersRemaining()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/paging/PageFetcherSnapshotState;->setPlaceholdersAfter$paging_common(I)V

    .line 7
    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->appendGenerationId:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/paging/PageFetcherSnapshotState;->appendGenerationId:I

    .line 8
    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->appendGenerationIdCh:Lkotlinx/coroutines/channels/m;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getLoadType()Landroidx/paging/LoadType;

    move-result-object p1

    const-string v1, "cannot drop "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Landroidx/paging/PageFetcherSnapshotState;->_pages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11
    :cond_4
    iget v0, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPageCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 12
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPlaceholdersRemaining()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/paging/PageFetcherSnapshotState;->setPlaceholdersBefore$paging_common(I)V

    .line 13
    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->prependGenerationId:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/paging/PageFetcherSnapshotState;->prependGenerationId:I

    .line 14
    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->prependGenerationIdCh:Lkotlinx/coroutines/channels/m;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/j0;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid drop count. have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPages$paging_common()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but wanted to drop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->getPageCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dropEventOrNull(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;)Landroidx/paging/PageEvent$Drop;
    .locals 9
    .param p1    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/ViewportHint;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/ViewportHint;",
            ")",
            "Landroidx/paging/PageEvent$Drop<",
            "TValue;>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "loadType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    iget v0, v0, Landroidx/paging/PagingConfig;->maxSize:I

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getStorageCount$paging_common()I

    move-result v0

    iget-object v3, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    iget v3, v3, Landroidx/paging/PagingConfig;->maxSize:I

    if-gt v0, v3, :cond_2

    return-object v1

    .line 4
    :cond_2
    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_d

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_1
    iget-object v6, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_7

    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getStorageCount$paging_common()I

    move-result v6

    sub-int/2addr v6, v5

    iget-object v7, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    iget v7, v7, Landroidx/paging/PagingConfig;->maxSize:I

    if-le v6, v7, :cond_7

    .line 6
    sget-object v6, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v6, v7

    if-ne v7, v2, :cond_4

    .line 7
    iget-object v7, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v7}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_2

    .line 8
    :cond_4
    iget-object v7, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    sub-int/2addr v8, v0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v7}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 9
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    if-ne v6, v2, :cond_5

    .line 10
    invoke-virtual {p2}, Landroidx/paging/ViewportHint;->getPresentedItemsBefore()I

    move-result v6

    goto :goto_3

    .line 11
    :cond_5
    invoke-virtual {p2}, Landroidx/paging/ViewportHint;->getPresentedItemsAfter()I

    move-result v6

    :goto_3
    sub-int/2addr v6, v5

    sub-int/2addr v6, v7

    .line 12
    iget-object v8, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    iget v8, v8, Landroidx/paging/PagingConfig;->prefetchDistance:I

    if-ge v6, v8, :cond_6

    goto :goto_4

    :cond_6
    add-int/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    if-nez v0, :cond_8

    goto :goto_9

    .line 13
    :cond_8
    new-instance v1, Landroidx/paging/PageEvent$Drop;

    .line 14
    sget-object p2, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, p2, v6

    if-ne v6, v2, :cond_9

    .line 15
    iget v6, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    neg-int v6, v6

    goto :goto_5

    .line 16
    :cond_9
    iget-object v6, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    iget v7, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    sub-int/2addr v6, v7

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v6, v7

    .line 17
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget p2, p2, v7

    if-ne p2, v2, :cond_a

    sub-int/2addr v0, v3

    .line 18
    iget p2, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    sub-int/2addr v0, p2

    goto :goto_6

    .line 19
    :cond_a
    iget-object p2, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p2

    iget v0, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    sub-int v0, p2, v0

    .line 20
    :goto_6
    iget-object p2, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    iget-boolean p2, p2, Landroidx/paging/PagingConfig;->enablePlaceholders:Z

    if-nez p2, :cond_b

    goto :goto_8

    .line 21
    :cond_b
    sget-object p2, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-ne p1, p2, :cond_c

    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPlaceholdersBefore$paging_common()I

    move-result p2

    goto :goto_7

    .line 22
    :cond_c
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPlaceholdersAfter$paging_common()I

    move-result p2

    :goto_7
    add-int v4, p2, v5

    .line 23
    :goto_8
    invoke-direct {v1, p1, v6, v0, v4}, Landroidx/paging/PageEvent$Drop;-><init>(Landroidx/paging/LoadType;III)V

    :goto_9
    return-object v1

    :cond_d
    const-string p2, "Drop LoadType must be PREPEND or APPEND, but got "

    .line 24
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final generationId$paging_common(Landroidx/paging/LoadType;)I
    .locals 1
    .param p1    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loadType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->appendGenerationId:I

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->prependGenerationId:I

    :goto_0
    return p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get loadId for loadType: REFRESH"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFailedHintsByLoadType$paging_common()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/ViewportHint;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->failedHintsByLoadType:Ljava/util/Map;

    return-object v0
.end method

.method public final getInitialPageIndex$paging_common()I
    .locals 1

    iget v0, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    return v0
.end method

.method public final getPages$paging_common()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "TKey;TValue;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    return-object v0
.end method

.method public final getPlaceholdersAfter$paging_common()I
    .locals 1

    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    iget-boolean v0, v0, Landroidx/paging/PagingConfig;->enablePlaceholders:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersAfter:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getPlaceholdersBefore$paging_common()I
    .locals 1

    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    iget-boolean v0, v0, Landroidx/paging/PagingConfig;->enablePlaceholders:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersBefore:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSourceLoadStates$paging_common()Landroidx/paging/MutableLoadStateCollection;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Landroidx/paging/MutableLoadStateCollection;

    return-object v0
.end method

.method public final getStorageCount$paging_common()I
    .locals 3

    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v2}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final insert(ILandroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)Z
    .locals 4
    .param p2    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/paging/PagingSource$LoadResult$Page;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "TKey;TValue;>;)Z"
        }
    .end annotation

    const-string v0, "loadType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_8

    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    if-eq p2, v2, :cond_4

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object p2, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_3

    .line 3
    iget p2, p0, Landroidx/paging/PageFetcherSnapshotState;->appendGenerationId:I

    if-eq p1, p2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->_pages:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->getItemsAfter()I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPlaceholdersAfter$paging_common()I

    move-result p1

    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->getItemsAfter()I

    move-result p1

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/paging/PageFetcherSnapshotState;->setPlaceholdersAfter$paging_common(I)V

    .line 9
    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->failedHintsByLoadType:Ljava/util/Map;

    sget-object p2, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should\'ve received an init before append"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    iget-object p2, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_7

    .line 12
    iget p2, p0, Landroidx/paging/PageFetcherSnapshotState;->prependGenerationId:I

    if-eq p1, p2, :cond_5

    return v1

    .line 13
    :cond_5
    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->_pages:Ljava/util/List;

    invoke-interface {p1, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14
    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 15
    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->getItemsBefore()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 16
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPlaceholdersBefore$paging_common()I

    move-result p1

    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->getItemsBefore()I

    move-result p1

    .line 18
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/paging/PageFetcherSnapshotState;->setPlaceholdersBefore$paging_common(I)V

    .line 19
    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->failedHintsByLoadType:Ljava/util/Map;

    sget-object p2, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 20
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should\'ve received an init before prepend"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_8
    iget-object p2, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_a

    .line 22
    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->_pages:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iput v1, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 24
    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->getItemsAfter()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/paging/PageFetcherSnapshotState;->setPlaceholdersAfter$paging_common(I)V

    .line 25
    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->getItemsBefore()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/paging/PageFetcherSnapshotState;->setPlaceholdersBefore$paging_common(I)V

    :goto_3
    return v0

    .line 26
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "init loadId must be the initial value, 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot receive multiple init calls"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setPlaceholdersAfter$paging_common(I)V
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersAfter:I

    return-void
.end method

.method public final setPlaceholdersBefore$paging_common(I)V
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersBefore:I

    return-void
.end method

.method public final toPageEvent$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/LoadType;)Landroidx/paging/PageEvent;
    .locals 12
    .param p1    # Landroidx/paging/PagingSource$LoadResult$Page;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "TKey;TValue;>;",
            "Landroidx/paging/LoadType;",
            ")",
            "Landroidx/paging/PageEvent<",
            "TValue;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget v1, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    sub-int/2addr v2, v1

    .line 4
    :cond_2
    :goto_0
    new-instance v1, Landroidx/paging/TransformablePage;

    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroidx/paging/TransformablePage;-><init>(ILjava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v5, :cond_5

    const/4 p2, 0x0

    if-eq p1, v4, :cond_4

    if-ne p1, v3, :cond_3

    .line 6
    sget-object p1, Landroidx/paging/PageEvent$Insert;->Companion:Landroidx/paging/PageEvent$Insert$Companion;

    .line 7
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPlaceholdersAfter$paging_common()I

    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Landroidx/paging/MutableLoadStateCollection;

    invoke-virtual {v1}, Landroidx/paging/MutableLoadStateCollection;->snapshot()Landroidx/paging/LoadStates;

    move-result-object v1

    .line 9
    invoke-virtual {p1, v7, v0, v1, p2}, Landroidx/paging/PageEvent$Insert$Companion;->Append(Ljava/util/List;ILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 10
    :cond_4
    sget-object p1, Landroidx/paging/PageEvent$Insert;->Companion:Landroidx/paging/PageEvent$Insert$Companion;

    .line 11
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPlaceholdersBefore$paging_common()I

    move-result v0

    .line 12
    iget-object v1, p0, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Landroidx/paging/MutableLoadStateCollection;

    invoke-virtual {v1}, Landroidx/paging/MutableLoadStateCollection;->snapshot()Landroidx/paging/LoadStates;

    move-result-object v1

    .line 13
    invoke-virtual {p1, v7, v0, v1, p2}, Landroidx/paging/PageEvent$Insert$Companion;->Prepend(Ljava/util/List;ILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_5
    sget-object v6, Landroidx/paging/PageEvent$Insert;->Companion:Landroidx/paging/PageEvent$Insert$Companion;

    .line 15
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPlaceholdersBefore$paging_common()I

    move-result v8

    .line 16
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->getPlaceholdersAfter$paging_common()I

    move-result v9

    .line 17
    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Landroidx/paging/MutableLoadStateCollection;

    invoke-virtual {p1}, Landroidx/paging/MutableLoadStateCollection;->snapshot()Landroidx/paging/LoadStates;

    move-result-object v10

    const/4 v11, 0x0

    .line 18
    invoke-virtual/range {v6 .. v11}, Landroidx/paging/PageEvent$Insert$Companion;->Refresh(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p1

    :goto_1
    return-object p1
.end method
