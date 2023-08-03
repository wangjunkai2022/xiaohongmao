.class final Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncGiftsUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->h(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Ljava/util/List;)Lkotlin/Unit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/s0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncGiftsUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncGiftsUseCase.kt\ncom/qennnsad/aknkaksd/domain/usecase/gift/SyncGiftsUseCase$buildRxStream$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,56:1\n1549#2:57\n1620#2,3:58\n37#3:61\n36#3,3:62\n*S KotlinDebug\n*F\n+ 1 SyncGiftsUseCase.kt\ncom/qennnsad/aknkaksd/domain/usecase/gift/SyncGiftsUseCase$buildRxStream$2$1\n*L\n34#1:57\n34#1:58,3\n49#1:61\n49#1:62,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/s0;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.qennnsad.aknkaksd.domain.usecase.gift.SyncGiftsUseCase$buildRxStream$2$1"
    f = "SyncGiftsUseCase.kt"
    i = {}
    l = {
        0x21
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

.field final synthetic d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;",
            "Ljava/util/List<",
            "+",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->c:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->d:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->c:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->a:I

    const-string v3, "list"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/s0;

    .line 4
    iget-object v5, v0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->c:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->j()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v6, v0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->d:Ljava/util/List;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->c:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    .line 6
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 8
    check-cast v9, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    .line 9
    invoke-interface {v2}, Lkotlinx/coroutines/s0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/t0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s0;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;

    const/4 v10, 0x0

    invoke-direct {v14, v9, v5, v7, v10}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;-><init>(Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;[Ljava/lang/String;Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/j;->b(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/y0;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [Lkotlinx/coroutines/y0;

    .line 10
    invoke-interface {v8, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    check-cast v2, [Lkotlinx/coroutines/y0;

    .line 12
    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lkotlinx/coroutines/y0;

    .line 13
    iput v4, v0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->a:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/f;->b([Lkotlinx/coroutines/y0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 14
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->c:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->e(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;)Lg5/a;

    move-result-object v1

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lg5/a;->f0(Ljava/util/List;)V

    .line 15
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
