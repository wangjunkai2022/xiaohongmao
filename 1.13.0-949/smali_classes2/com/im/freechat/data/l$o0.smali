.class final Lcom/im/freechat/data/l$o0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/l;->r0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/im/freechat/data/openapigen/api/MessageApi;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lretrofit2/Response<",
        "Lcom/im/freechat/data/openapigen/models/SendText200Response;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/api/MessageApi;",
        "Lretrofit2/Response;",
        "Lcom/im/freechat/data/openapigen/models/SendText200Response;",
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
    c = "com.im.freechat.data.SyncRepositoryImpl$sendMediaGroupMessage$2"
    f = "SyncRepositoryImpl.kt"
    i = {}
    l = {
        0x1f6
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

.field final synthetic d:Lcom/im/freechat/data/l;

.field final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/l;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Lcom/im/freechat/data/l;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/l$o0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$o0;->c:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iput-object p2, p0, Lcom/im/freechat/data/l$o0;->d:Lcom/im/freechat/data/l;

    iput-object p3, p0, Lcom/im/freechat/data/l$o0;->e:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/im/freechat/data/l$o0;

    iget-object v1, p0, Lcom/im/freechat/data/l$o0;->c:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v2, p0, Lcom/im/freechat/data/l$o0;->d:Lcom/im/freechat/data/l;

    iget-object v3, p0, Lcom/im/freechat/data/l$o0;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/im/freechat/data/l$o0;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/l;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/im/freechat/data/l$o0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final h(Lcom/im/freechat/data/openapigen/api/MessageApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/im/freechat/data/openapigen/api/MessageApi;
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
            "Lcom/im/freechat/data/openapigen/api/MessageApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/SendText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/l$o0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/data/l$o0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/l$o0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/data/openapigen/api/MessageApi;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/l$o0;->h(Lcom/im/freechat/data/openapigen/api/MessageApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/im/freechat/data/l$o0;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/im/freechat/data/l$o0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/openapigen/api/MessageApi;

    .line 4
    new-instance v1, Lcom/im/freechat/data/openapigen/models/SendMediaGroupRequest;

    .line 5
    iget-object v3, p0, Lcom/im/freechat/data/l$o0;->c:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-virtual {v3}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getChatId()I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/im/freechat/data/l$o0;->d:Lcom/im/freechat/data/l;

    invoke-static {v4}, Lcom/im/freechat/data/l;->e0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    move-result-object v4

    iget-object v5, p0, Lcom/im/freechat/data/l$o0;->e:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->attachmentsToMediaGroup(Ljava/util/List;)Lcom/im/freechat/data/openapigen/models/MediaGroup;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/im/freechat/data/l$o0;->c:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-virtual {v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v6, p0, Lcom/im/freechat/data/l$o0;->c:Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getReplyToMessageId()Ljava/lang/Long;

    move-result-object v6

    .line 9
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/im/freechat/data/openapigen/models/SendMediaGroupRequest;-><init>(ILcom/im/freechat/data/openapigen/models/MediaGroup;Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    iput v2, p0, Lcom/im/freechat/data/l$o0;->a:I

    invoke-interface {p1, v1, p0}, Lcom/im/freechat/data/openapigen/api/MessageApi;->sendMediaGroup(Lcom/im/freechat/data/openapigen/models/SendMediaGroupRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
