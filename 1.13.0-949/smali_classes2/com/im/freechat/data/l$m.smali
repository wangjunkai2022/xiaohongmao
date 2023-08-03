.class final Lcom/im/freechat/data/l$m;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/l;->o0(IILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/im/freechat/data/openapigen/models/ForwardMessage200Response;",
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
        "Lcom/im/freechat/data/openapigen/models/ForwardMessage200Response;",
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
    c = "com.im.freechat.data.SyncRepositoryImpl$forwardMessage$id$1"
    f = "SyncRepositoryImpl.kt"
    i = {}
    l = {
        0x23e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:I

.field final synthetic d:Lcom/im/freechat/shared/entities/message/Message;


# direct methods
.method constructor <init>(ILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/im/freechat/shared/entities/message/Message;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/l$m;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/im/freechat/data/l$m;->c:I

    iput-object p2, p0, Lcom/im/freechat/data/l$m;->d:Lcom/im/freechat/shared/entities/message/Message;

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

    new-instance v0, Lcom/im/freechat/data/l$m;

    iget v1, p0, Lcom/im/freechat/data/l$m;->c:I

    iget-object v2, p0, Lcom/im/freechat/data/l$m;->d:Lcom/im/freechat/shared/entities/message/Message;

    invoke-direct {v0, v1, v2, p2}, Lcom/im/freechat/data/l$m;-><init>(ILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/im/freechat/data/l$m;->b:Ljava/lang/Object;

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
            "Lcom/im/freechat/data/openapigen/models/ForwardMessage200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/l$m;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/data/l$m;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/l$m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/data/openapigen/api/MessageApi;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/l$m;->h(Lcom/im/freechat/data/openapigen/api/MessageApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/im/freechat/data/l$m;->a:I

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

    iget-object p1, p0, Lcom/im/freechat/data/l$m;->b:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/openapigen/api/MessageApi;

    .line 4
    new-instance v1, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;

    .line 5
    iget v3, p0, Lcom/im/freechat/data/l$m;->c:I

    .line 6
    iget-object v4, p0, Lcom/im/freechat/data/l$m;->d:Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v4}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v4

    .line 7
    iget-object v5, p0, Lcom/im/freechat/data/l$m;->d:Lcom/im/freechat/shared/entities/message/Message;

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v5

    .line 8
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;-><init>(IIJ)V

    .line 9
    iput v2, p0, Lcom/im/freechat/data/l$m;->a:I

    invoke-interface {p1, v1, p0}, Lcom/im/freechat/data/openapigen/api/MessageApi;->forwardMessage(Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
