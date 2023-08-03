.class public final Landroidx/paging/LegacyPageFetcher;
.super Ljava/lang/Object;
.source "LegacyPageFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/LegacyPageFetcher$PageConsumer;,
        Landroidx/paging/LegacyPageFetcher$KeyProvider;,
        Landroidx/paging/LegacyPageFetcher$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0008\u0008\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0002ABBW\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001f\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\'\u001a\u00020$\u0012\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00010(\u0012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00028\u00000-\u00a2\u0006\u0004\u0008?\u0010@J\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0002J$\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\nH\u0002J\u0018\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0008H\u0002J\u0008\u0010\u0011\u001a\u00020\u0008H\u0002J\u0008\u0010\u0012\u001a\u00020\u0008H\u0002J\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0008J\u0006\u0010\u0015\u001a\u00020\u0008J\u0006\u0010\u0016\u001a\u00020\u0008R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001b\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR#\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u0014\u0010%\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010&R\u001d\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00010(8\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u001a\u0010.\u001a\u0008\u0012\u0004\u0012\u00028\u00000-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00101\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R(\u00104\u001a\u0002038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0004\u00084\u00105\u0012\u0004\u0008:\u0010;\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u0011\u0010=\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>\u00a8\u0006C"
    }
    d2 = {
        "Landroidx/paging/LegacyPageFetcher;",
        "",
        "K",
        "V",
        "Landroidx/paging/LoadType;",
        "type",
        "Landroidx/paging/PagingSource$LoadParams;",
        "params",
        "",
        "scheduleLoad",
        "Landroidx/paging/PagingSource$LoadResult$Page;",
        "value",
        "onLoadSuccess",
        "",
        "throwable",
        "onLoadError",
        "onLoadInvalid",
        "schedulePrepend",
        "scheduleAppend",
        "trySchedulePrepend",
        "tryScheduleAppend",
        "retry",
        "detach",
        "Lkotlinx/coroutines/s0;",
        "pagedListScope",
        "Lkotlinx/coroutines/s0;",
        "Landroidx/paging/PagedList$Config;",
        "config",
        "Landroidx/paging/PagedList$Config;",
        "getConfig",
        "()Landroidx/paging/PagedList$Config;",
        "Landroidx/paging/PagingSource;",
        "source",
        "Landroidx/paging/PagingSource;",
        "getSource",
        "()Landroidx/paging/PagingSource;",
        "Lkotlinx/coroutines/n0;",
        "notifyDispatcher",
        "Lkotlinx/coroutines/n0;",
        "fetchDispatcher",
        "Landroidx/paging/LegacyPageFetcher$PageConsumer;",
        "pageConsumer",
        "Landroidx/paging/LegacyPageFetcher$PageConsumer;",
        "getPageConsumer",
        "()Landroidx/paging/LegacyPageFetcher$PageConsumer;",
        "Landroidx/paging/LegacyPageFetcher$KeyProvider;",
        "keyProvider",
        "Landroidx/paging/LegacyPageFetcher$KeyProvider;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "detached",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Landroidx/paging/PagedList$LoadStateManager;",
        "loadStateManager",
        "Landroidx/paging/PagedList$LoadStateManager;",
        "getLoadStateManager",
        "()Landroidx/paging/PagedList$LoadStateManager;",
        "setLoadStateManager",
        "(Landroidx/paging/PagedList$LoadStateManager;)V",
        "getLoadStateManager$annotations",
        "()V",
        "",
        "isDetached",
        "()Z",
        "<init>",
        "(Lkotlinx/coroutines/s0;Landroidx/paging/PagedList$Config;Landroidx/paging/PagingSource;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;Landroidx/paging/LegacyPageFetcher$PageConsumer;Landroidx/paging/LegacyPageFetcher$KeyProvider;)V",
        "KeyProvider",
        "PageConsumer",
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
.field private final config:Landroidx/paging/PagedList$Config;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final detached:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final fetchDispatcher:Lkotlinx/coroutines/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final keyProvider:Landroidx/paging/LegacyPageFetcher$KeyProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/LegacyPageFetcher$KeyProvider<",
            "TK;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private loadStateManager:Landroidx/paging/PagedList$LoadStateManager;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final notifyDispatcher:Lkotlinx/coroutines/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final pageConsumer:Landroidx/paging/LegacyPageFetcher$PageConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/LegacyPageFetcher$PageConsumer<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final pagedListScope:Lkotlinx/coroutines/s0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final source:Landroidx/paging/PagingSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingSource<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/s0;Landroidx/paging/PagedList$Config;Landroidx/paging/PagingSource;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;Landroidx/paging/LegacyPageFetcher$PageConsumer;Landroidx/paging/LegacyPageFetcher$KeyProvider;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/PagedList$Config;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/paging/PagingSource;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Landroidx/paging/LegacyPageFetcher$PageConsumer;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Landroidx/paging/LegacyPageFetcher$KeyProvider;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Landroidx/paging/PagedList$Config;",
            "Landroidx/paging/PagingSource<",
            "TK;TV;>;",
            "Lkotlinx/coroutines/n0;",
            "Lkotlinx/coroutines/n0;",
            "Landroidx/paging/LegacyPageFetcher$PageConsumer<",
            "TV;>;",
            "Landroidx/paging/LegacyPageFetcher$KeyProvider<",
            "TK;>;)V"
        }
    .end annotation

    const-string v0, "pagedListScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchDispatcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageConsumer"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/LegacyPageFetcher;->pagedListScope:Lkotlinx/coroutines/s0;

    .line 3
    iput-object p2, p0, Landroidx/paging/LegacyPageFetcher;->config:Landroidx/paging/PagedList$Config;

    .line 4
    iput-object p3, p0, Landroidx/paging/LegacyPageFetcher;->source:Landroidx/paging/PagingSource;

    .line 5
    iput-object p4, p0, Landroidx/paging/LegacyPageFetcher;->notifyDispatcher:Lkotlinx/coroutines/n0;

    .line 6
    iput-object p5, p0, Landroidx/paging/LegacyPageFetcher;->fetchDispatcher:Lkotlinx/coroutines/n0;

    .line 7
    iput-object p6, p0, Landroidx/paging/LegacyPageFetcher;->pageConsumer:Landroidx/paging/LegacyPageFetcher$PageConsumer;

    .line 8
    iput-object p7, p0, Landroidx/paging/LegacyPageFetcher;->keyProvider:Landroidx/paging/LegacyPageFetcher$KeyProvider;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/paging/LegacyPageFetcher;->detached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Landroidx/paging/LegacyPageFetcher$loadStateManager$1;

    invoke-direct {p1, p0}, Landroidx/paging/LegacyPageFetcher$loadStateManager$1;-><init>(Landroidx/paging/LegacyPageFetcher;)V

    iput-object p1, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    return-void
.end method

.method public static final synthetic access$getNotifyDispatcher$p(Landroidx/paging/LegacyPageFetcher;)Lkotlinx/coroutines/n0;
    .locals 0

    iget-object p0, p0, Landroidx/paging/LegacyPageFetcher;->notifyDispatcher:Lkotlinx/coroutines/n0;

    return-object p0
.end method

.method public static final synthetic access$onLoadError(Landroidx/paging/LegacyPageFetcher;Landroidx/paging/LoadType;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/paging/LegacyPageFetcher;->onLoadError(Landroidx/paging/LoadType;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$onLoadInvalid(Landroidx/paging/LegacyPageFetcher;)V
    .locals 0

    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->onLoadInvalid()V

    return-void
.end method

.method public static final synthetic access$onLoadSuccess(Landroidx/paging/LegacyPageFetcher;Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/paging/LegacyPageFetcher;->onLoadSuccess(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)V

    return-void
.end method

.method public static synthetic getLoadStateManager$annotations()V
    .locals 0

    return-void
.end method

.method private final onLoadError(Landroidx/paging/LoadType;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/paging/LegacyPageFetcher;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/paging/LoadState$Error;

    invoke-direct {v0, p2}, Landroidx/paging/LoadState$Error;-><init>(Ljava/lang/Throwable;)V

    .line 3
    iget-object p2, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {p2, p1, v0}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    return-void
.end method

.method private final onLoadInvalid()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->source:Landroidx/paging/PagingSource;

    invoke-virtual {v0}, Landroidx/paging/PagingSource;->invalidate()V

    .line 2
    invoke-virtual {p0}, Landroidx/paging/LegacyPageFetcher;->detach()V

    return-void
.end method

.method private final onLoadSuccess(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/PagingSource$LoadResult$Page<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/paging/LegacyPageFetcher;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->pageConsumer:Landroidx/paging/LegacyPageFetcher$PageConsumer;

    invoke-interface {v0, p1, p2}, Landroidx/paging/LegacyPageFetcher$PageConsumer;->onPageResult(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    sget-object p2, Landroidx/paging/LegacyPageFetcher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 4
    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->scheduleAppend()V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can only fetch more during append/prepend"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->schedulePrepend()V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    .line 8
    invoke-virtual {p2}, Landroidx/paging/PagingSource$LoadResult$Page;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p2}, Landroidx/paging/LoadState$NotLoading$Companion;->getComplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object p2

    goto :goto_0

    :cond_4
    sget-object p2, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p2}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object p2

    .line 9
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    :goto_1
    return-void
.end method

.method private final scheduleAppend()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->keyProvider:Landroidx/paging/LegacyPageFetcher$KeyProvider;

    invoke-interface {v0}, Landroidx/paging/LegacyPageFetcher$KeyProvider;->getNextKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    sget-object v1, Landroidx/paging/PagingSource$LoadResult$Page;->Companion:Landroidx/paging/PagingSource$LoadResult$Page$Companion;

    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadResult$Page$Companion;->empty$paging_common()Landroidx/paging/PagingSource$LoadResult$Page;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/paging/LegacyPageFetcher;->onLoadSuccess(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    sget-object v2, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    sget-object v3, Landroidx/paging/LoadState$Loading;->INSTANCE:Landroidx/paging/LoadState$Loading;

    invoke-virtual {v1, v2, v3}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 4
    new-instance v1, Landroidx/paging/PagingSource$LoadParams$Append;

    .line 5
    iget-object v3, p0, Landroidx/paging/LegacyPageFetcher;->config:Landroidx/paging/PagedList$Config;

    iget v4, v3, Landroidx/paging/PagedList$Config;->pageSize:I

    .line 6
    iget-boolean v3, v3, Landroidx/paging/PagedList$Config;->enablePlaceholders:Z

    .line 7
    invoke-direct {v1, v0, v4, v3}, Landroidx/paging/PagingSource$LoadParams$Append;-><init>(Ljava/lang/Object;IZ)V

    .line 8
    invoke-direct {p0, v2, v1}, Landroidx/paging/LegacyPageFetcher;->scheduleLoad(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadParams;)V

    return-void
.end method

.method private final scheduleLoad(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadParams;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/PagingSource$LoadParams<",
            "TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->pagedListScope:Lkotlinx/coroutines/s0;

    iget-object v1, p0, Landroidx/paging/LegacyPageFetcher;->fetchDispatcher:Lkotlinx/coroutines/n0;

    new-instance v3, Landroidx/paging/LegacyPageFetcher$scheduleLoad$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p2, p1, v2}, Landroidx/paging/LegacyPageFetcher$scheduleLoad$1;-><init>(Landroidx/paging/LegacyPageFetcher;Landroidx/paging/PagingSource$LoadParams;Landroidx/paging/LoadType;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method private final schedulePrepend()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->keyProvider:Landroidx/paging/LegacyPageFetcher$KeyProvider;

    invoke-interface {v0}, Landroidx/paging/LegacyPageFetcher$KeyProvider;->getPrevKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    sget-object v1, Landroidx/paging/PagingSource$LoadResult$Page;->Companion:Landroidx/paging/PagingSource$LoadResult$Page$Companion;

    invoke-virtual {v1}, Landroidx/paging/PagingSource$LoadResult$Page$Companion;->empty$paging_common()Landroidx/paging/PagingSource$LoadResult$Page;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/paging/LegacyPageFetcher;->onLoadSuccess(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    sget-object v2, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    sget-object v3, Landroidx/paging/LoadState$Loading;->INSTANCE:Landroidx/paging/LoadState$Loading;

    invoke-virtual {v1, v2, v3}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 4
    new-instance v1, Landroidx/paging/PagingSource$LoadParams$Prepend;

    .line 5
    iget-object v3, p0, Landroidx/paging/LegacyPageFetcher;->config:Landroidx/paging/PagedList$Config;

    iget v4, v3, Landroidx/paging/PagedList$Config;->pageSize:I

    .line 6
    iget-boolean v3, v3, Landroidx/paging/PagedList$Config;->enablePlaceholders:Z

    .line 7
    invoke-direct {v1, v0, v4, v3}, Landroidx/paging/PagingSource$LoadParams$Prepend;-><init>(Ljava/lang/Object;IZ)V

    .line 8
    invoke-direct {p0, v2, v1}, Landroidx/paging/LegacyPageFetcher;->scheduleLoad(Landroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadParams;)V

    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 2

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->detached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final getConfig()Landroidx/paging/PagedList$Config;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->config:Landroidx/paging/PagedList$Config;

    return-object v0
.end method

.method public final getLoadStateManager()Landroidx/paging/PagedList$LoadStateManager;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    return-object v0
.end method

.method public final getPageConsumer()Landroidx/paging/LegacyPageFetcher$PageConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/LegacyPageFetcher$PageConsumer<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->pageConsumer:Landroidx/paging/LegacyPageFetcher$PageConsumer;

    return-object v0
.end method

.method public final getSource()Landroidx/paging/PagingSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingSource<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->source:Landroidx/paging/PagingSource;

    return-object v0
.end method

.method public final isDetached()Z
    .locals 1

    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->detached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final retry()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {v0}, Landroidx/paging/PagedList$LoadStateManager;->getStartState()Landroidx/paging/LoadState;

    move-result-object v0

    .line 2
    instance-of v0, v0, Landroidx/paging/LoadState$Error;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->schedulePrepend()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {v0}, Landroidx/paging/PagedList$LoadStateManager;->getEndState()Landroidx/paging/LoadState;

    move-result-object v0

    .line 4
    instance-of v0, v0, Landroidx/paging/LoadState$Error;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->scheduleAppend()V

    :cond_1
    return-void
.end method

.method public final setLoadStateManager(Landroidx/paging/PagedList$LoadStateManager;)V
    .locals 1
    .param p1    # Landroidx/paging/PagedList$LoadStateManager;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    return-void
.end method

.method public final tryScheduleAppend()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {v0}, Landroidx/paging/PagedList$LoadStateManager;->getEndState()Landroidx/paging/LoadState;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/paging/LoadState$NotLoading;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->scheduleAppend()V

    :cond_0
    return-void
.end method

.method public final trySchedulePrepend()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/paging/LegacyPageFetcher;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {v0}, Landroidx/paging/PagedList$LoadStateManager;->getStartState()Landroidx/paging/LoadState;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/paging/LoadState$NotLoading;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroidx/paging/LegacyPageFetcher;->schedulePrepend()V

    :cond_0
    return-void
.end method
