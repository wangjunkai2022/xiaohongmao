.class final Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RemoteMediatorAccessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0000H\u008a@"
    }
    d2 = {
        "",
        "Key",
        "Value",
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
    c = "androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1"
    f = "RemoteMediatorAccessor.kt"
    i = {
        0x0
    }
    l = {
        0x159
    }
    m = "invokeSuspend"
    n = {
        "loadType"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/paging/RemoteMediatorAccessImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/RemoteMediatorAccessImpl<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/paging/RemoteMediatorAccessImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/RemoteMediatorAccessImpl<",
            "TKey;TValue;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;

    iget-object v1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-direct {v0, v1, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;-><init>(Landroidx/paging/RemoteMediatorAccessImpl;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
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

    invoke-virtual {p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/LoadType;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    .line 4
    :goto_0
    iget-object v1, p1, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-static {v1}, Landroidx/paging/RemoteMediatorAccessImpl;->access$getAccessorState$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/AccessorStateHolder;

    move-result-object v1

    sget-object v3, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$1;->INSTANCE:Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$1;

    invoke-virtual {v1, v3}, Landroidx/paging/AccessorStateHolder;->use(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-nez v1, :cond_2

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/paging/LoadType;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/PagingState;

    .line 7
    iget-object v4, p1, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-static {v4}, Landroidx/paging/RemoteMediatorAccessImpl;->access$getRemoteMediator$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/RemoteMediator;

    move-result-object v4

    iput-object v3, p1, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->L$0:Ljava/lang/Object;

    iput v2, p1, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->label:I

    invoke-virtual {v4, v3, v1, p1}, Landroidx/paging/RemoteMediator;->load(Landroidx/paging/LoadType;Landroidx/paging/PagingState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v6, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v6

    .line 8
    :goto_1
    check-cast p1, Landroidx/paging/RemoteMediator$MediatorResult;

    .line 9
    instance-of v4, p1, Landroidx/paging/RemoteMediator$MediatorResult$Success;

    if-eqz v4, :cond_4

    .line 10
    iget-object v4, v0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-static {v4}, Landroidx/paging/RemoteMediatorAccessImpl;->access$getAccessorState$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/AccessorStateHolder;

    move-result-object v4

    new-instance v5, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$2;

    invoke-direct {v5, v3, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$2;-><init>(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult;)V

    invoke-virtual {v4, v5}, Landroidx/paging/AccessorStateHolder;->use(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    goto :goto_2

    .line 11
    :cond_4
    instance-of v4, p1, Landroidx/paging/RemoteMediator$MediatorResult$Error;

    if-eqz v4, :cond_5

    .line 12
    iget-object v4, v0, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1;->this$0:Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-static {v4}, Landroidx/paging/RemoteMediatorAccessImpl;->access$getAccessorState$p(Landroidx/paging/RemoteMediatorAccessImpl;)Landroidx/paging/AccessorStateHolder;

    move-result-object v4

    new-instance v5, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$3;

    invoke-direct {v5, v3, p1}, Landroidx/paging/RemoteMediatorAccessImpl$launchBoundary$1$1$3;-><init>(Landroidx/paging/LoadType;Landroidx/paging/RemoteMediator$MediatorResult;)V

    invoke-virtual {v4, v5}, Landroidx/paging/AccessorStateHolder;->use(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    :cond_5
    :goto_2
    move-object p1, v0

    move-object v0, v1

    goto :goto_0
.end method
