.class public Landroidx/paging/AsyncPagedListDiffer;
.super Ljava/lang/Object;
.source "AsyncPagedListDiffer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/AsyncPagedListDiffer$PagedListListener;,
        Landroidx/paging/AsyncPagedListDiffer$OnCurrentListChangedWrapper;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncPagedListDiffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncPagedListDiffer.kt\nandroidx/paging/AsyncPagedListDiffer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,594:1\n1849#2,2:595\n*S KotlinDebug\n*F\n+ 1 AsyncPagedListDiffer.kt\nandroidx/paging/AsyncPagedListDiffer\n*L\n505#1:595,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "AsyncPagedListDiffer is deprecated and has been replaced by AsyncPagingDataDiffer"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "AsyncPagingDataDiffer<T>"
        imports = {
            "androidx.paging.AsyncPagingDataDiffer"
        }
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0002_`B!\u0008\u0017\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007B\u001d\u0008\u0017\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\u00a2\u0006\u0002\u0010\u000cJ\"\u0010H\u001a\u00020(2\u0018\u0010I\u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020(0+H\u0016J0\u0010J\u001a\u00020(2(\u0010K\u001a$\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012\u0012\u0004\u0012\u00020(0+J\u0016\u0010J\u001a\u00020(2\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0017\u0010L\u001a\u0004\u0018\u00018\u00002\u0006\u0010M\u001a\u00020\u0017H\u0016\u00a2\u0006\u0002\u0010NJK\u0010O\u001a\u00020(2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020\u00172\u0008\u0010W\u001a\u0004\u0018\u00010XH\u0000\u00a2\u0006\u0002\u0008YJ2\u0010Z\u001a\u00020(2\u000e\u0010[\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00122\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00122\u0008\u0010W\u001a\u0004\u0018\u00010XH\u0002J\"\u0010\\\u001a\u00020(2\u0018\u0010I\u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020(0+H\u0016J0\u0010]\u001a\u00020(2(\u0010K\u001a$\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012\u0012\u0004\u0012\u00020(0+J\u0016\u0010]\u001a\u00020(2\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0018\u0010^\u001a\u00020(2\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012H\u0016J\"\u0010^\u001a\u00020(2\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00122\u0008\u0010W\u001a\u0004\u0018\u00010XH\u0016R \u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bX\u0080\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00128VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R(\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u001c0\u001b8\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u000e\u001a\u0004\u0008\u001e\u0010\u001fR>\u0010 \u001a2\u0012\u0013\u0012\u00110\"\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(%\u0012\u0013\u0012\u00110&\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(\'\u0012\u0004\u0012\u00020(0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010)\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020(0+0*X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0014\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00080\u0010\u000eR\u001a\u00101\u001a\u000202X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R \u00107\u001a\u00020\u0017X\u0080\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00088\u0010\u000e\u001a\u0004\u00089\u0010\u0019\"\u0004\u0008:\u0010;R\u001c\u0010<\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008=\u0010\u000eR\u0014\u0010>\u001a\u00020?X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008@\u0010\u000eR\u001c\u0010A\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008B\u0010\u000eR\u001a\u0010C\u001a\u00020\tX\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010G\u00a8\u0006a"
    }
    d2 = {
        "Landroidx/paging/AsyncPagedListDiffer;",
        "T",
        "",
        "adapter",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "diffCallback",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V",
        "listUpdateCallback",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "config",
        "Landroidx/recyclerview/widget/AsyncDifferConfig;",
        "(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V",
        "getConfig$paging_runtime_release$annotations",
        "()V",
        "getConfig$paging_runtime_release",
        "()Landroidx/recyclerview/widget/AsyncDifferConfig;",
        "currentList",
        "Landroidx/paging/PagedList;",
        "getCurrentList$annotations",
        "getCurrentList",
        "()Landroidx/paging/PagedList;",
        "itemCount",
        "",
        "getItemCount",
        "()I",
        "listeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Landroidx/paging/AsyncPagedListDiffer$PagedListListener;",
        "getListeners$paging_runtime_release$annotations",
        "getListeners$paging_runtime_release",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "loadStateListener",
        "Lkotlin/reflect/KFunction2;",
        "Landroidx/paging/LoadType;",
        "Lkotlin/ParameterName;",
        "name",
        "type",
        "Landroidx/paging/LoadState;",
        "state",
        "",
        "loadStateListeners",
        "",
        "Lkotlin/Function2;",
        "getLoadStateListeners$paging_runtime_release",
        "()Ljava/util/List;",
        "loadStateManager",
        "Landroidx/paging/PagedList$LoadStateManager;",
        "getLoadStateManager$annotations",
        "mainThreadExecutor",
        "Ljava/util/concurrent/Executor;",
        "getMainThreadExecutor$paging_runtime_release",
        "()Ljava/util/concurrent/Executor;",
        "setMainThreadExecutor$paging_runtime_release",
        "(Ljava/util/concurrent/Executor;)V",
        "maxScheduledGeneration",
        "getMaxScheduledGeneration$paging_runtime_release$annotations",
        "getMaxScheduledGeneration$paging_runtime_release",
        "setMaxScheduledGeneration$paging_runtime_release",
        "(I)V",
        "pagedList",
        "getPagedList$annotations",
        "pagedListCallback",
        "Landroidx/paging/PagedList$Callback;",
        "getPagedListCallback$annotations",
        "snapshot",
        "getSnapshot$annotations",
        "updateCallback",
        "getUpdateCallback$paging_runtime_release",
        "()Landroidx/recyclerview/widget/ListUpdateCallback;",
        "setUpdateCallback$paging_runtime_release",
        "(Landroidx/recyclerview/widget/ListUpdateCallback;)V",
        "addLoadStateListener",
        "listener",
        "addPagedListListener",
        "callback",
        "getItem",
        "index",
        "(I)Ljava/lang/Object;",
        "latchPagedList",
        "newList",
        "diffSnapshot",
        "diffResult",
        "Landroidx/paging/NullPaddedDiffResult;",
        "recordingCallback",
        "Landroidx/paging/RecordingCallback;",
        "lastAccessIndex",
        "commitCallback",
        "Ljava/lang/Runnable;",
        "latchPagedList$paging_runtime_release",
        "onCurrentListChanged",
        "previousList",
        "removeLoadStateListener",
        "removePagedListListener",
        "submitList",
        "OnCurrentListChangedWrapper",
        "PagedListListener",
        "paging-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final config:Landroidx/recyclerview/widget/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/paging/AsyncPagedListDiffer$PagedListListener<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final loadStateListener:Lkotlin/reflect/KFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KFunction<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final loadStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/LoadState;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final loadStateManager:Landroidx/paging/PagedList$LoadStateManager;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private mainThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private maxScheduledGeneration:I

.field private pagedList:Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final pagedListCallback:Landroidx/paging/PagedList$Callback;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private snapshot:Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field public updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/AsyncDifferConfig;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "PagedList is deprecated and has been replaced by PagingData"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AsyncPagingDataDiffer(\n                Dispatchers.Main,\n                Dispatchers.IO,\n                config.diffCallback,\n                listUpdateCallback\n            )"
            imports = {
                "androidx.paging.AsyncPagingDataDiffer",
                "kotlinx.coroutines.Dispatchers"
            }
        .end subannotation
    .end annotation

    const-string v0, "listUpdateCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "getMainThreadExecutor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    new-instance v0, Landroidx/paging/AsyncPagedListDiffer$loadStateManager$1;

    invoke-direct {v0, p0}, Landroidx/paging/AsyncPagedListDiffer$loadStateManager$1;-><init>(Landroidx/paging/AsyncPagedListDiffer;)V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    .line 14
    new-instance v1, Landroidx/paging/AsyncPagedListDiffer$loadStateListener$1;

    invoke-direct {v1, v0}, Landroidx/paging/AsyncPagedListDiffer$loadStateListener$1;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListeners:Ljava/util/List;

    .line 16
    new-instance v0, Landroidx/paging/AsyncPagedListDiffer$pagedListCallback$1;

    invoke-direct {v0, p0}, Landroidx/paging/AsyncPagedListDiffer$pagedListCallback$1;-><init>(Landroidx/paging/AsyncPagedListDiffer;)V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    .line 17
    invoke-virtual {p0, p1}, Landroidx/paging/AsyncPagedListDiffer;->setUpdateCallback$paging_runtime_release(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 18
    iput-object p2, p0, Landroidx/paging/AsyncPagedListDiffer;->config:Landroidx/recyclerview/widget/AsyncDifferConfig;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "PagedList is deprecated and has been replaced by PagingData"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AsyncPagingDataDiffer(\n                Dispatchers.Main,\n                Dispatchers.IO,\n                diffCallback,\n                listUpdateCallback\n            )"
            imports = {
                "androidx.paging.AsyncPagingDataDiffer",
                "kotlinx.coroutines.Dispatchers"
            }
        .end subannotation
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "getMainThreadExecutor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v0, Landroidx/paging/AsyncPagedListDiffer$loadStateManager$1;

    invoke-direct {v0, p0}, Landroidx/paging/AsyncPagedListDiffer$loadStateManager$1;-><init>(Landroidx/paging/AsyncPagedListDiffer;)V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    .line 5
    new-instance v1, Landroidx/paging/AsyncPagedListDiffer$loadStateListener$1;

    invoke-direct {v1, v0}, Landroidx/paging/AsyncPagedListDiffer$loadStateListener$1;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListeners:Ljava/util/List;

    .line 7
    new-instance v0, Landroidx/paging/AsyncPagedListDiffer$pagedListCallback$1;

    invoke-direct {v0, p0}, Landroidx/paging/AsyncPagedListDiffer$pagedListCallback$1;-><init>(Landroidx/paging/AsyncPagedListDiffer;)V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    .line 8
    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroidx/paging/AsyncPagedListDiffer;->setUpdateCallback$paging_runtime_release(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 9
    new-instance p1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p1

    const-string p2, "Builder(diffCallback).build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->config:Landroidx/recyclerview/widget/AsyncDifferConfig;

    return-void
.end method

.method public static synthetic getConfig$paging_runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCurrentList$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getListeners$paging_runtime_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private static synthetic getLoadStateManager$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMaxScheduledGeneration$paging_runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getPagedList$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getPagedListCallback$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getSnapshot$annotations()V
    .locals 0

    return-void
.end method

.method private final onCurrentListChanged(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/AsyncPagedListDiffer$PagedListListener;

    .line 3
    invoke-interface {v1, p1, p2}, Landroidx/paging/AsyncPagedListDiffer$PagedListListener;->onCurrentListChanged(Landroidx/paging/PagedList;Landroidx/paging/PagedList;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method


# virtual methods
.method public addLoadStateListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/paging/LoadType;",
            "-",
            "Landroidx/paging/LoadState;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/paging/PagedList;->addWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {v0, p1}, Landroidx/paging/PagedList$LoadStateManager;->dispatchCurrentLoadState(Lkotlin/jvm/functions/Function2;)V

    .line 4
    :goto_0
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPagedListListener(Landroidx/paging/AsyncPagedListDiffer$PagedListListener;)V
    .locals 1
    .param p1    # Landroidx/paging/AsyncPagedListDiffer$PagedListListener;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/AsyncPagedListDiffer$PagedListListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addPagedListListener(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/paging/PagedList<",
            "TT;>;-",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/paging/AsyncPagedListDiffer$OnCurrentListChangedWrapper;

    invoke-direct {v1, p1}, Landroidx/paging/AsyncPagedListDiffer$OnCurrentListChangedWrapper;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getConfig$paging_runtime_release()Landroidx/recyclerview/widget/AsyncDifferConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->config:Landroidx/recyclerview/widget/AsyncDifferConfig;

    return-object v0
.end method

.method public getCurrentList()Landroidx/paging/PagedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    :cond_0
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    .line 2
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroidx/paging/PagedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p1}, Landroidx/paging/PagedList;->loadAround(I)V

    .line 5
    invoke-virtual {v1, p1}, Landroidx/paging/PagedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Item count is zero, getItem() call is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemCount()I
    .locals 1

    invoke-virtual {p0}, Landroidx/paging/AsyncPagedListDiffer;->getCurrentList()Landroidx/paging/PagedList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/paging/PagedList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getListeners$paging_runtime_release()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/paging/AsyncPagedListDiffer$PagedListListener<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getLoadStateListeners$paging_runtime_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/LoadState;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListeners:Ljava/util/List;

    return-object v0
.end method

.method public final getMainThreadExecutor$paging_runtime_release()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getMaxScheduledGeneration$paging_runtime_release()I
    .locals 1

    iget v0, p0, Landroidx/paging/AsyncPagedListDiffer;->maxScheduledGeneration:I

    return v0
.end method

.method public final getUpdateCallback$paging_runtime_release()Landroidx/recyclerview/widget/ListUpdateCallback;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "updateCallback"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final latchPagedList$paging_runtime_release(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Landroidx/paging/NullPaddedDiffResult;Landroidx/paging/RecordingCallback;ILjava/lang/Runnable;)V
    .locals 4
    .param p1    # Landroidx/paging/PagedList;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/PagedList;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/paging/NullPaddedDiffResult;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Landroidx/paging/RecordingCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Runnable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedDiffResult;",
            "Landroidx/paging/RecordingCallback;",
            "I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "newList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffSnapshot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordingCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-nez v1, :cond_1

    .line 3
    iput-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    .line 4
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, v1}, Landroidx/paging/PagedList;->addWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    .line 6
    invoke-virtual {v0}, Landroidx/paging/PagedList;->getNullPaddedList()Landroidx/paging/NullPaddedList;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroidx/paging/AsyncPagedListDiffer;->getUpdateCallback$paging_runtime_release()Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v2

    .line 8
    invoke-virtual {p2}, Landroidx/paging/PagedList;->getNullPaddedList()Landroidx/paging/NullPaddedList;

    move-result-object v3

    .line 9
    invoke-static {v1, v2, v3, p3}, Landroidx/paging/NullPaddedListDiffHelperKt;->dispatchDiff(Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedDiffResult;)V

    .line 10
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {p4, v1}, Landroidx/paging/RecordingCallback;->dispatchRecordingTo(Landroidx/paging/PagedList$Callback;)V

    .line 11
    iget-object p4, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {p1, p4}, Landroidx/paging/PagedList;->addWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 12
    invoke-virtual {p1}, Ljava/util/AbstractList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 13
    invoke-virtual {v0}, Landroidx/paging/PagedList;->getNullPaddedList()Landroidx/paging/NullPaddedList;

    move-result-object p4

    .line 14
    invoke-virtual {p2}, Landroidx/paging/PagedList;->getNullPaddedList()Landroidx/paging/NullPaddedList;

    move-result-object p2

    .line 15
    invoke-static {p4, p3, p2, p5}, Landroidx/paging/NullPaddedListDiffHelperKt;->transformAnchorIndex(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedDiffResult;Landroidx/paging/NullPaddedList;I)I

    move-result p2

    const/4 p3, 0x0

    .line 16
    invoke-virtual {p1}, Landroidx/paging/PagedList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-static {p2, p3, p4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/paging/PagedList;->loadAround(I)V

    .line 17
    :cond_0
    iget-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    invoke-direct {p0, v0, p1, p6}, Landroidx/paging/AsyncPagedListDiffer;->onCurrentListChanged(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Ljava/lang/Runnable;)V

    return-void

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "must be in snapshot state to apply diff"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeLoadStateListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/paging/LoadType;",
            "-",
            "Landroidx/paging/LoadState;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/paging/PagedList;->removeWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method public removePagedListListener(Landroidx/paging/AsyncPagedListDiffer$PagedListListener;)V
    .locals 1
    .param p1    # Landroidx/paging/AsyncPagedListDiffer$PagedListListener;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/AsyncPagedListDiffer$PagedListListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removePagedListListener(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/paging/PagedList<",
            "TT;>;-",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/paging/AsyncPagedListDiffer$removePagedListListener$1;

    invoke-direct {v1, p1}, Landroidx/paging/AsyncPagedListDiffer$removePagedListListener$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method public final setMainThreadExecutor$paging_runtime_release(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final setMaxScheduledGeneration$paging_runtime_release(I)V
    .locals 0

    iput p1, p0, Landroidx/paging/AsyncPagedListDiffer;->maxScheduledGeneration:I

    return-void
.end method

.method public final setUpdateCallback$paging_runtime_release(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    return-void
.end method

.method public submitList(Landroidx/paging/PagedList;)V
    .locals 1
    .param p1    # Landroidx/paging/PagedList;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/paging/AsyncPagedListDiffer;->submitList(Landroidx/paging/PagedList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitList(Landroidx/paging/PagedList;Ljava/lang/Runnable;)V
    .locals 10
    .param p1    # Landroidx/paging/PagedList;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 2
    iget v0, p0, Landroidx/paging/AsyncPagedListDiffer;->maxScheduledGeneration:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Landroidx/paging/AsyncPagedListDiffer;->maxScheduledGeneration:I

    .line 3
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    instance-of v2, p1, Landroidx/paging/InitialPagedList;

    if-eqz v2, :cond_3

    .line 6
    iget-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {v0, p1}, Landroidx/paging/PagedList;->removeWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 7
    iget-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, p1}, Landroidx/paging/PagedList;->removeWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 8
    iget-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    sget-object v2, Landroidx/paging/LoadState$Loading;->INSTANCE:Landroidx/paging/LoadState$Loading;

    invoke-virtual {p1, v0, v2}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 9
    iget-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    new-instance v2, Landroidx/paging/LoadState$NotLoading;

    invoke-direct {v2, v1}, Landroidx/paging/LoadState$NotLoading;-><init>(Z)V

    invoke-virtual {p1, v0, v2}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 10
    iget-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    new-instance v2, Landroidx/paging/LoadState$NotLoading;

    invoke-direct {v2, v1}, Landroidx/paging/LoadState$NotLoading;-><init>(Z)V

    invoke-virtual {p1, v0, v2}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    if-nez p2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroidx/paging/AsyncPagedListDiffer;->getCurrentList()Landroidx/paging/PagedList;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p1, :cond_6

    .line 13
    invoke-virtual {p0}, Landroidx/paging/AsyncPagedListDiffer;->getItemCount()I

    move-result p1

    if-eqz v0, :cond_4

    .line 14
    iget-object v4, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {v0, v4}, Landroidx/paging/PagedList;->removeWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 15
    iget-object v4, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v4}, Landroidx/paging/PagedList;->removeWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 16
    iput-object v3, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    if-eqz v0, :cond_5

    .line 18
    iput-object v3, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    .line 19
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/paging/AsyncPagedListDiffer;->getUpdateCallback$paging_runtime_release()Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 20
    invoke-direct {p0, v2, v3, p2}, Landroidx/paging/AsyncPagedListDiffer;->onCurrentListChanged(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Ljava/lang/Runnable;)V

    return-void

    .line 21
    :cond_6
    invoke-virtual {p0}, Landroidx/paging/AsyncPagedListDiffer;->getCurrentList()Landroidx/paging/PagedList;

    move-result-object v0

    if-nez v0, :cond_7

    .line 22
    iput-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    .line 23
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, v0}, Landroidx/paging/PagedList;->addWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 24
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {p1, v0}, Landroidx/paging/PagedList;->addWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 25
    invoke-virtual {p0}, Landroidx/paging/AsyncPagedListDiffer;->getUpdateCallback$paging_runtime_release()Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/paging/PagedList;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 26
    invoke-direct {p0, v3, p1, p2}, Landroidx/paging/AsyncPagedListDiffer;->onCurrentListChanged(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Ljava/lang/Runnable;)V

    return-void

    .line 27
    :cond_7
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-nez v0, :cond_8

    goto :goto_3

    .line 28
    :cond_8
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {v0, v1}, Landroidx/paging/PagedList;->removeWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 29
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Landroidx/paging/PagedList;->removeWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 30
    invoke-virtual {v0}, Landroidx/paging/PagedList;->snapshot()Ljava/util/List;

    move-result-object v0

    check-cast v0, Landroidx/paging/PagedList;

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    .line 31
    iput-object v3, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    .line 32
    :goto_3
    iget-object v2, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    if-eqz v2, :cond_9

    .line 33
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-nez v0, :cond_9

    .line 34
    invoke-virtual {p1}, Landroidx/paging/PagedList;->snapshot()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/paging/PagedList;

    .line 35
    new-instance v7, Landroidx/paging/RecordingCallback;

    invoke-direct {v7}, Landroidx/paging/RecordingCallback;-><init>()V

    .line 36
    invoke-virtual {p1, v7}, Landroidx/paging/PagedList;->addWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 37
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->config:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v9, Landroidx/paging/AsyncPagedListDiffer$submitList$2;

    move-object v1, v9

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Landroidx/paging/AsyncPagedListDiffer$submitList$2;-><init>(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Landroidx/paging/AsyncPagedListDiffer;ILandroidx/paging/PagedList;Landroidx/paging/RecordingCallback;Ljava/lang/Runnable;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 38
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "must be in snapshot state to diff"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
