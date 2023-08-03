.class public final Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 DatabaseRepositoryImpl.kt\ncom/im/freechat/data/DatabaseRepositoryImpl\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n53#2:135\n48#3:136\n289#4:137\n1603#5,9:138\n1851#5:147\n1852#5:149\n1612#5:150\n1#6:148\n*S KotlinDebug\n*F\n+ 1 DatabaseRepositoryImpl.kt\ncom/im/freechat/data/DatabaseRepositoryImpl\n*L\n289#1:138,9\n289#1:147\n289#1:149\n289#1:150\n289#1:148\n*E\n"
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


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/j;Lcom/im/freechat/data/DatabaseRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2;->a:Lkotlinx/coroutines/flow/j;

    iput-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    .line 1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2;->a:Lkotlinx/coroutines/flow/j;

    .line 4
    check-cast p1, Ljava/util/List;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;

    .line 8
    iget-object v5, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {v5}, Lcom/im/freechat/data/DatabaseRepositoryImpl;->U(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;

    move-result-object v5

    iget-object v6, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {v6}, Lcom/im/freechat/data/DatabaseRepositoryImpl;->V(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;->map(Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;)Lcom/im/freechat/shared/entities/chat/FriendStatus;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 9
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_4
    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1;->b:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/flow/j;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
