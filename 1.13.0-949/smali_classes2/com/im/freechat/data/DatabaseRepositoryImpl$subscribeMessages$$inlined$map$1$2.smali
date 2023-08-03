.class public final Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/j<",
        "Ljava/util/List<",
        "+",
        "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 DatabaseRepositoryImpl.kt\ncom/im/freechat/data/DatabaseRepositoryImpl\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n53#2:135\n48#3:136\n236#4:137\n237#4:151\n238#4:155\n239#4,5:157\n244#4,2:163\n1603#5,9:138\n1851#5:147\n1852#5:149\n1612#5:150\n766#5:152\n857#5,2:153\n1851#5:156\n1852#5:162\n1#6:148\n*S KotlinDebug\n*F\n+ 1 DatabaseRepositoryImpl.kt\ncom/im/freechat/data/DatabaseRepositoryImpl\n*L\n236#1:138,9\n236#1:147\n236#1:149\n236#1:150\n237#1:152\n237#1:153,2\n238#1:156\n238#1:162\n236#1:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0007"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3",
        "Lkotlinx/coroutines/flow/j;",
        "value",
        "",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core",
        "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/j;

.field final synthetic b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

.field final synthetic c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/j;Lcom/im/freechat/data/DatabaseRepositoryImpl;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->a:Lkotlinx/coroutines/flow/j;

    iput-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    iput-object p3, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    .line 1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/j;

    iget-object v4, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->c:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 3
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->a:Lkotlinx/coroutines/flow/j;

    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 8
    check-cast v6, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 9
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getReplyToMessageId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 10
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 13
    iget-object v10, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->c:Ljava/util/Map;

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_6

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_8
    iget-object v5, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {v5}, Lcom/im/freechat/data/DatabaseRepositoryImpl;->X(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    move-result-object v5

    iput-object p0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->c:Ljava/lang/Object;

    iput-object v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->e:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->f:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->b:I

    invoke-virtual {v5, p2, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getMessagesByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    move-object v4, p0

    :goto_4
    check-cast p2, Ljava/lang/Iterable;

    .line 15
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 16
    iget-object v5, v4, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->c:Ljava/util/Map;

    .line 17
    invoke-virtual {v7}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v12

    .line 18
    iget-object v6, v4, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {v6}, Lcom/im/freechat/data/DatabaseRepositoryImpl;->Y(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    move-result-object v6

    iget-object v8, v4, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {v8}, Lcom/im/freechat/data/DatabaseRepositoryImpl;->V(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map$default(Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v6

    .line 19
    invoke-interface {v5, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 20
    :cond_a
    iget-object p2, v4, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl;->Y(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    move-result-object p2

    iget-object v5, v4, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {v5}, Lcom/im/freechat/data/DatabaseRepositoryImpl;->V(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    move-result-object v5

    iget-object v4, v4, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2;->c:Ljava/util/Map;

    invoke-virtual {p2, p1, v5, v4}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map(Ljava/util/List;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->c:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->e:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->f:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1;->b:I

    invoke-interface {v2, p1, v0}, Lkotlinx/coroutines/flow/j;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
