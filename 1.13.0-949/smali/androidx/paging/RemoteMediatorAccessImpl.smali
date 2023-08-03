.class final Landroidx/paging/RemoteMediatorAccessImpl;
.super Ljava/lang/Object;
.source "RemoteMediatorAccessor.kt"

# interfaces
.implements Landroidx/paging/RemoteMediatorAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/RemoteMediatorAccessImpl$Companion;,
        Landroidx/paging/RemoteMediatorAccessImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/paging/RemoteMediatorAccessor<",
        "TKey;TValue;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteMediatorAccessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteMediatorAccessor.kt\nandroidx/paging/RemoteMediatorAccessImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,412:1\n1849#2,2:413\n*S KotlinDebug\n*F\n+ 1 RemoteMediatorAccessor.kt\nandroidx/paging/RemoteMediatorAccessImpl\n*L\n391#1:413,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u0000 $*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0008\u0008\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0001$B#\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0014\u00a2\u0006\u0004\u0008\"\u0010#J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J$\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\nH\u0016J\u001c\u0010\r\u001a\u00020\u00052\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\nH\u0016J\u0013\u0010\u000f\u001a\u00020\u000eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R \u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R \u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/paging/RemoteMediatorAccessImpl;",
        "",
        "Key",
        "Value",
        "Landroidx/paging/RemoteMediatorAccessor;",
        "",
        "launchRefresh",
        "launchBoundary",
        "Landroidx/paging/LoadType;",
        "loadType",
        "Landroidx/paging/PagingState;",
        "pagingState",
        "requestLoad",
        "retryFailed",
        "Landroidx/paging/RemoteMediator$InitializeAction;",
        "initialize",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/s0;",
        "scope",
        "Lkotlinx/coroutines/s0;",
        "Landroidx/paging/RemoteMediator;",
        "remoteMediator",
        "Landroidx/paging/RemoteMediator;",
        "Landroidx/paging/AccessorStateHolder;",
        "accessorState",
        "Landroidx/paging/AccessorStateHolder;",
        "Landroidx/paging/SingleRunner;",
        "isolationRunner",
        "Landroidx/paging/SingleRunner;",
        "Lkotlinx/coroutines/flow/h0;",
        "Landroidx/paging/LoadStates;",
        "getState",
        "()Lkotlinx/coroutines/flow/h0;",
        "state",
        "<init>",
        "(Lkotlinx/coroutines/s0;Landroidx/paging/RemoteMediator;)V",
        "Companion",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/paging/RemoteMediatorAccessImpl$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final PRIORITY_APPEND_PREPEND:I = 0x1

.field private static final PRIORITY_REFRESH:I = 0x2


# instance fields
.field private final accessorState:Landroidx/paging/AccessorStateHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/AccessorStateHolder<",
            "TKey;TValue;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final isolationRunner:Landroidx/paging/SingleRunner;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final remoteMediator:Landroidx/paging/RemoteMediator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/RemoteMediator<",
            "TKey;TValue;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/s0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/RemoteMediatorAccessImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/RemoteMediatorAccessImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/paging/RemoteMediatorAccessImpl;->Companion:Landroidx/paging/RemoteMediatorAccessImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/s0;Landroidx/paging/RemoteMediator;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/RemoteMediator;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Landroidx/paging/RemoteMediator<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteMediator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl;->scope:Lkotlinx/coroutines/s0;

    .line 3
    iput-object p2, p0, Landroidx/paging/RemoteMediatorAccessImpl;->remoteMediator:Landroidx/paging/RemoteMediator;

    .line 4
    new-instance p1, Landroidx/paging/AccessorStateHolder;

    invoke-direct {p1}, Landroidx/paging/AccessorStateHolder;-><init>()V

    iput-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    .line 5
    new-instance p1, Landroidx/paging/SingleRunner;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/paging/SingleRunner;-><init>(Z)V

    iput-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl;->isolationRunner:Landroidx/paging/SingleRunner;

    return-void
.end method

.method public static final synthetic access$getAccessorState$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/AccessorStateHolder;
    .locals 0

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    return-object p0
.end method

.method public static final synthetic access$getIsolationRunner$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/SingleRunner;
    .locals 0

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->isolationRunner:Landroidx/paging/SingleRunner;

    return-object p0
.end method

.method public static final synthetic access$getRemoteMediator$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/RemoteMediator;
    .locals 0

    iget-object p0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->remoteMediator:Landroidx/paging/RemoteMediator;

    return-object p0
.end method

.method public static final synthetic access$launchBoundary(Landroidx/paging/RemoteMediatorAccessImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/paging/RemoteMediatorAccessImpl;->launchBoundary()V

    return-void
.end method

.method private final launchBoundary()V
    .locals 6

    iget-object v0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->scope:Lkotlinx/coroutines/s0;

    new-instance v3, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1;-><init>(Landroidx/paging/RemoteMediatorAccessImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method private final launchRefresh()V
    .locals 6

    iget-object v0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->scope:Lkotlinx/coroutines/s0;

    new-instance v3, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Landroidx/paging/RemoteMediatorAccessImpl$launchRefresh$1;-><init>(Landroidx/paging/RemoteMediatorAccessImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method


# virtual methods
.method public getState()Lkotlinx/coroutines/flow/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/h0<",
            "Landroidx/paging/LoadStates;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    invoke-virtual {v0}, Landroidx/paging/AccessorStateHolder;->getLoadStates()Lkotlinx/coroutines/flow/h0;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/paging/RemoteMediator$InitializeAction;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p1, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;

    iget v1, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;

    invoke-direct {v0, p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;-><init>(Landroidx/paging/RemoteMediatorAccessImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl;->remoteMediator:Landroidx/paging/RemoteMediator;

    iput-object p0, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/RemoteMediatorAccessImpl$initialize$1;->label:I

    invoke-virtual {p1, v0}, Landroidx/paging/RemoteMediator;->initialize(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    move-object v1, p1

    check-cast v1, Landroidx/paging/RemoteMediator$InitializeAction;

    .line 6
    sget-object v2, Landroidx/paging/RemoteMediator$InitializeAction;->LAUNCH_INITIAL_REFRESH:Landroidx/paging/RemoteMediator$InitializeAction;

    if-ne v1, v2, :cond_4

    .line 7
    iget-object v0, v0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    sget-object v1, Landroidx/paging/RemoteMediatorAccessImpl$initialize$2$1;->INSTANCE:Landroidx/paging/RemoteMediatorAccessImpl$initialize$2$1;

    invoke-virtual {v0, v1}, Landroidx/paging/AccessorStateHolder;->use(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    :cond_4
    return-object p1
.end method

.method public requestLoad(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V
    .locals 2
    .param p1    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/PagingState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    const-string v0, "loadType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pagingState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    new-instance v1, Landroidx/paging/RemoteMediatorAccessImpl$requestLoad$newRequest$1;

    invoke-direct {v1, p1, p2}, Landroidx/paging/RemoteMediatorAccessImpl$requestLoad$newRequest$1;-><init>(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    invoke-virtual {v0, v1}, Landroidx/paging/AccessorStateHolder;->use(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    sget-object p2, Landroidx/paging/RemoteMediatorAccessImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 3
    invoke-direct {p0}, Landroidx/paging/RemoteMediatorAccessImpl;->launchRefresh()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Landroidx/paging/RemoteMediatorAccessImpl;->launchBoundary()V

    :cond_1
    :goto_0
    return-void
.end method

.method public retryFailed(Landroidx/paging/PagingState;)V
    .locals 3
    .param p1    # Landroidx/paging/PagingState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    const-string v0, "pagingState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/paging/RemoteMediatorAccessImpl;->accessorState:Landroidx/paging/AccessorStateHolder;

    new-instance v2, Landroidx/paging/RemoteMediatorAccessImpl$retryFailed$1;

    invoke-direct {v2, v0}, Landroidx/paging/RemoteMediatorAccessImpl$retryFailed$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/paging/AccessorStateHolder;->use(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/LoadType;

    .line 4
    invoke-virtual {p0, v1, p1}, Landroidx/paging/RemoteMediatorAccessImpl;->requestLoad(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    goto :goto_0

    :cond_0
    return-void
.end method
