.class public final Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1;->collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/j<",
        "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 DatabaseRepositoryImpl.kt\ncom/im/freechat/data/DatabaseRepositoryImpl\n*L\n1#1,134:1\n53#2:135\n55#3:136\n56#3:140\n278#4,3:137\n*E\n"
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
        "kotlinx/coroutines/flow/FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2"
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

    iput-object p1, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2;->a:Lkotlinx/coroutines/flow/j;

    iput-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;

    iget v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;-><init>(Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    .line 1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->f:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    iget-object v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/j;

    iget-object v4, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->c:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2;->a:Lkotlinx/coroutines/flow/j;

    .line 5
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 6
    iget-object p2, p0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getChatId()I

    move-result v5

    iput-object p0, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->c:Ljava/lang/Object;

    iput-object v2, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->e:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->f:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->b:I

    invoke-virtual {p2, v5, v0}, Lcom/im/freechat/data/DatabaseRepositoryImpl;->A(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    :goto_1
    move-object v5, p1

    check-cast p2, Lcom/im/freechat/shared/entities/chat/Chat;

    const/4 p1, 0x0

    if-nez p2, :cond_5

    :goto_2
    move-object v5, p1

    goto :goto_3

    .line 7
    :cond_5
    iget-object v6, v4, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {v6}, Lcom/im/freechat/data/DatabaseRepositoryImpl;->Y(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    move-result-object v6

    iget-object v4, v4, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2;->b:Lcom/im/freechat/data/DatabaseRepositoryImpl;

    invoke-static {v4}, Lcom/im/freechat/data/DatabaseRepositoryImpl;->V(Lcom/im/freechat/data/DatabaseRepositoryImpl;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    invoke-static/range {v4 .. v9}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map$default(Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_2

    .line 8
    :cond_6
    new-instance v5, Lcom/im/freechat/shared/entities/message/MessageWithChat;

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/chat/Chat;->getTitle()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    const-string v6, ""

    :cond_7
    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/chat/Chat;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object p2

    invoke-direct {v5, v4, v6, v7, p2}, Lcom/im/freechat/shared/entities/message/MessageWithChat;-><init>(Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)V

    :goto_3
    if-nez v5, :cond_8

    goto :goto_4

    .line 9
    :cond_8
    iput-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->c:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->e:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->f:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1;->b:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/flow/j;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
