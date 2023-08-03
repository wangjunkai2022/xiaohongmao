.class final Lcom/im/freechat/data/l$o;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/l;->E(IILjava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncRepositoryImpl.kt\ncom/im/freechat/data/SyncRepositoryImpl$forwardMessages$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1027:1\n1603#2,9:1028\n1851#2:1037\n1852#2:1039\n1612#2:1040\n1045#2:1041\n1559#2:1042\n1590#2,4:1043\n1#3:1038\n37#4:1047\n36#4,3:1048\n*S KotlinDebug\n*F\n+ 1 SyncRepositoryImpl.kt\ncom/im/freechat/data/SyncRepositoryImpl$forwardMessages$2\n*L\n538#1:1028,9\n538#1:1037\n538#1:1039\n538#1:1040\n539#1:1041\n540#1:1042\n540#1:1043,4\n538#1:1038\n545#1:1047\n545#1:1048,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/s0;",
        "",
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
    c = "com.im.freechat.data.SyncRepositoryImpl$forwardMessages$2"
    f = "SyncRepositoryImpl.kt"
    i = {
        0x0
    }
    l = {
        0x219,
        0x218
    }
    m = "invokeSuspend"
    n = {
        "$this$coroutineScope"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/im/freechat/data/l;

.field final synthetic d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:I

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/im/freechat/data/l;Ljava/util/List;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/l;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/l$o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$o;->c:Lcom/im/freechat/data/l;

    iput-object p2, p0, Lcom/im/freechat/data/l$o;->d:Ljava/util/List;

    iput p3, p0, Lcom/im/freechat/data/l$o;->e:I

    iput p4, p0, Lcom/im/freechat/data/l$o;->f:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/im/freechat/data/l$o;

    iget-object v1, p0, Lcom/im/freechat/data/l$o;->c:Lcom/im/freechat/data/l;

    iget-object v2, p0, Lcom/im/freechat/data/l$o;->d:Ljava/util/List;

    iget v3, p0, Lcom/im/freechat/data/l$o;->e:I

    iget v4, p0, Lcom/im/freechat/data/l$o;->f:I

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/im/freechat/data/l$o;-><init>(Lcom/im/freechat/data/l;Ljava/util/List;IILkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/im/freechat/data/l$o;->b:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/l$o;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/l$o;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/data/l$o;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/l$o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
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
    iget v2, v0, Lcom/im/freechat/data/l$o;->a:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Lcom/im/freechat/data/l$o;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/s0;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/im/freechat/data/l$o;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/s0;

    .line 4
    iget-object v5, v0, Lcom/im/freechat/data/l$o;->c:Lcom/im/freechat/data/l;

    invoke-static {v5}, Lcom/im/freechat/data/l;->d0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    move-result-object v5

    iget-object v6, v0, Lcom/im/freechat/data/l$o;->d:Ljava/util/List;

    iput-object v2, v0, Lcom/im/freechat/data/l$o;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/l$o;->a:I

    invoke-virtual {v5, v6, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getMessagesToForward(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_0
    check-cast v4, Ljava/lang/Iterable;

    .line 6
    iget-object v5, v0, Lcom/im/freechat/data/l$o;->c:Lcom/im/freechat/data/l;

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 9
    move-object v9, v7

    check-cast v9, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 10
    invoke-static {v5}, Lcom/im/freechat/data/l;->e0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    move-result-object v8

    invoke-static {v5}, Lcom/im/freechat/data/l;->Z(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map$default(Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 11
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_5
    new-instance v4, Lcom/im/freechat/data/l$o$b;

    invoke-direct {v4}, Lcom/im/freechat/data/l$o$b;-><init>()V

    invoke-static {v6, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    .line 13
    iget-object v12, v0, Lcom/im/freechat/data/l$o;->c:Lcom/im/freechat/data/l;

    iget v13, v0, Lcom/im/freechat/data/l$o;->e:I

    iget v14, v0, Lcom/im/freechat/data/l$o;->f:I

    .line 14
    new-instance v15, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v11, 0x0

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v16, v6, 0x1

    if-gez v6, :cond_6

    .line 16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_6
    move-object v10, v5

    check-cast v10, Lcom/im/freechat/shared/entities/message/Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 17
    new-instance v19, Lcom/im/freechat/data/l$o$a;

    const/16 v20, 0x0

    move-object/from16 v5, v19

    move-object v7, v12

    move v8, v13

    move v9, v14

    const/4 v3, 0x0

    move-object/from16 v11, v20

    invoke-direct/range {v5 .. v11}, Lcom/im/freechat/data/l$o$a;-><init>(ILcom/im/freechat/data/l;IILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, v2

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/j;->b(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/y0;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v6, v16

    const/4 v3, 0x2

    const/4 v11, 0x0

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    new-array v2, v3, [Lkotlinx/coroutines/y0;

    .line 18
    invoke-interface {v15, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast v2, [Lkotlinx/coroutines/y0;

    .line 20
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lkotlinx/coroutines/y0;

    const/4 v3, 0x0

    .line 21
    iput-object v3, v0, Lcom/im/freechat/data/l$o;->b:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v0, Lcom/im/freechat/data/l$o;->a:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/f;->b([Lkotlinx/coroutines/y0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    return-object v2
.end method
