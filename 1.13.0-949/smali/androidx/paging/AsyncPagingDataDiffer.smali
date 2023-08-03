.class public final Landroidx/paging/AsyncPagingDataDiffer;
.super Ljava/lang/Object;
.source "AsyncPagingDataDiffer.kt"


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
        "\u0000\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c*\u00014\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B3\u0008\u0007\u0012\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001b\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020!\u0012\u0008\u0008\u0002\u0010$\u001a\u00020!\u00a2\u0006\u0004\u0008D\u0010EJ!\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001c\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0005J\u0019\u0010\u000e\u001a\u0004\u0018\u00018\u00002\u0008\u0008\u0001\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0010\u001a\u0004\u0018\u00018\u00002\u0008\u0008\u0001\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011J\u0014\u0010\u0015\u001a\u00020\u00052\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013J\u0014\u0010\u0016\u001a\u00020\u00052\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0013J\u001a\u0010\u0019\u001a\u00020\u00052\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00050\u0017J\u001a\u0010\u001a\u001a\u00020\u00052\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00050\u0017R\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010#R \u0010&\u001a\u00020%8\u0000X\u0080\u0004\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u0012\u0004\u0008*\u0010+\u001a\u0004\u0008(\u0010)R(\u0010-\u001a\u00020,8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0004\u0008-\u0010.\u0012\u0004\u00083\u0010+\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001a\u00105\u001a\u0008\u0012\u0004\u0012\u00028\u0000048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0014\u00108\u001a\u0002078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u001d\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00180:8\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R\u001d\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00050:8\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010<\u001a\u0004\u0008@\u0010>R\u0011\u0010C\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010B\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006F"
    }
    d2 = {
        "Landroidx/paging/AsyncPagingDataDiffer;",
        "",
        "T",
        "Landroidx/paging/PagingData;",
        "pagingData",
        "",
        "submitData",
        "(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "retry",
        "refresh",
        "",
        "index",
        "getItem",
        "(I)Ljava/lang/Object;",
        "peek",
        "Landroidx/paging/ItemSnapshotList;",
        "snapshot",
        "Lkotlin/Function0;",
        "listener",
        "addOnPagesUpdatedListener",
        "removeOnPagesUpdatedListener",
        "Lkotlin/Function1;",
        "Landroidx/paging/CombinedLoadStates;",
        "addLoadStateListener",
        "removeLoadStateListener",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "diffCallback",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "updateCallback",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "Lkotlinx/coroutines/n0;",
        "mainDispatcher",
        "Lkotlinx/coroutines/n0;",
        "workerDispatcher",
        "Landroidx/paging/DifferCallback;",
        "differCallback",
        "Landroidx/paging/DifferCallback;",
        "getDifferCallback$paging_runtime_release",
        "()Landroidx/paging/DifferCallback;",
        "getDifferCallback$paging_runtime_release$annotations",
        "()V",
        "",
        "inGetItem",
        "Z",
        "getInGetItem$paging_runtime_release",
        "()Z",
        "setInGetItem$paging_runtime_release",
        "(Z)V",
        "getInGetItem$paging_runtime_release$annotations",
        "androidx/paging/AsyncPagingDataDiffer$differBase$1",
        "differBase",
        "Landroidx/paging/AsyncPagingDataDiffer$differBase$1;",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "submitDataId",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lkotlinx/coroutines/flow/i;",
        "loadStateFlow",
        "Lkotlinx/coroutines/flow/i;",
        "getLoadStateFlow",
        "()Lkotlinx/coroutines/flow/i;",
        "onPagesUpdatedFlow",
        "getOnPagesUpdatedFlow",
        "getItemCount",
        "()I",
        "itemCount",
        "<init>",
        "(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;)V",
        "paging-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final differCallback:Landroidx/paging/DifferCallback;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private inGetItem:Z

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

.field private final onPagesUpdatedFlow:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final workerDispatcher:Lkotlinx/coroutines/n0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/n0;)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Lkotlinx/coroutines/n0;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Lkotlinx/coroutines/n0;",
            "Lkotlinx/coroutines/n0;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 3
    iput-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer;->updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 4
    iput-object p3, p0, Landroidx/paging/AsyncPagingDataDiffer;->mainDispatcher:Lkotlinx/coroutines/n0;

    .line 5
    iput-object p4, p0, Landroidx/paging/AsyncPagingDataDiffer;->workerDispatcher:Lkotlinx/coroutines/n0;

    .line 6
    new-instance p1, Landroidx/paging/AsyncPagingDataDiffer$differCallback$1;

    invoke-direct {p1, p0}, Landroidx/paging/AsyncPagingDataDiffer$differCallback$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer;)V

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->differCallback:Landroidx/paging/DifferCallback;

    .line 7
    new-instance p2, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-direct {p2, p0, p1, p3}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer;Landroidx/paging/DifferCallback;Lkotlinx/coroutines/n0;)V

    iput-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p2}, Landroidx/paging/PagingDataDiffer;->getLoadStateFlow()Lkotlinx/coroutines/flow/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->loadStateFlow:Lkotlinx/coroutines/flow/i;

    .line 10
    invoke-virtual {p2}, Landroidx/paging/PagingDataDiffer;->getOnPagesUpdatedFlow()Lkotlinx/coroutines/flow/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->onPagesUpdatedFlow:Lkotlinx/coroutines/flow/i;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 11
    invoke-static {}, Lkotlinx/coroutines/i1;->e()Lkotlinx/coroutines/u2;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 12
    invoke-static {}, Lkotlinx/coroutines/i1;->a()Lkotlinx/coroutines/n0;

    move-result-object p4

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;)V

    return-void
.end method

.method public static final synthetic access$getDiffCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-object p0
.end method

.method public static final synthetic access$getDifferBase$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    return-object p0
.end method

.method public static final synthetic access$getSubmitDataId$p(Landroidx/paging/AsyncPagingDataDiffer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    return-object p0
.end method

.method public static final synthetic access$getWorkerDispatcher$p(Landroidx/paging/AsyncPagingDataDiffer;)Lkotlinx/coroutines/n0;
    .locals 0

    iget-object p0, p0, Landroidx/paging/AsyncPagingDataDiffer;->workerDispatcher:Lkotlinx/coroutines/n0;

    return-object p0
.end method

.method public static synthetic getDifferCallback$paging_runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getInGetItem$paging_runtime_release$annotations()V
    .locals 0

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

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/PagingDataDiffer;->addLoadStateListener(Lkotlin/jvm/functions/Function1;)V

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

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/PagingDataDiffer;->addOnPagesUpdatedListener(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final getDifferCallback$paging_runtime_release()Landroidx/paging/DifferCallback;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differCallback:Landroidx/paging/DifferCallback;

    return-object v0
.end method

.method public final getInGetItem$paging_runtime_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Z

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
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

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Z

    .line 2
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/PagingDataDiffer;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-boolean v1, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Z

    return-object p1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Z

    throw p1
.end method

.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0}, Landroidx/paging/PagingDataDiffer;->getSize()I

    move-result v0

    return v0
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

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->loadStateFlow:Lkotlinx/coroutines/flow/i;

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

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->onPagesUpdatedFlow:Lkotlinx/coroutines/flow/i;

    return-object v0
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

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/PagingDataDiffer;->peek(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final refresh()V
    .locals 1

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0}, Landroidx/paging/PagingDataDiffer;->refresh()V

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

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/PagingDataDiffer;->removeLoadStateListener(Lkotlin/jvm/functions/Function1;)V

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

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/PagingDataDiffer;->removeOnPagesUpdatedListener(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final retry()V
    .locals 1

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0}, Landroidx/paging/PagingDataDiffer;->retry()V

    return-void
.end method

.method public final setInGetItem$paging_runtime_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Z

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

    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0}, Landroidx/paging/PagingDataDiffer;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object v0

    return-object v0
.end method

.method public final submitData(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    .line 1
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1, p2}, Landroidx/paging/PagingDataDiffer;->collectFrom(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final submitData(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/PagingData;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/paging/PagingData<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pagingData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 4
    invoke-static {p1}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/paging/AsyncPagingDataDiffer$submitData$2;

    const/4 p1, 0x0

    invoke-direct {v4, p0, v0, p2, p1}, Landroidx/paging/AsyncPagingDataDiffer$submitData$2;-><init>(Landroidx/paging/AsyncPagingDataDiffer;ILandroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method
