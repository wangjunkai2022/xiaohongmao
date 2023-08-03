.class final Lcom/im/freechat/data/l$k0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/l;->j(IILjava/lang/String;IILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.im.freechat.data.SyncRepositoryImpl$sendGiphy$id$1"
    f = "SyncRepositoryImpl.kt"
    i = {}
    l = {
        0x2e3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:I

.field final synthetic d:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/Long;


# direct methods
.method constructor <init>(ILcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;IILjava/lang/String;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/l$k0;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/im/freechat/data/l$k0;->c:I

    iput-object p2, p0, Lcom/im/freechat/data/l$k0;->d:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    iput p3, p0, Lcom/im/freechat/data/l$k0;->e:I

    iput p4, p0, Lcom/im/freechat/data/l$k0;->f:I

    iput-object p5, p0, Lcom/im/freechat/data/l$k0;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/im/freechat/data/l$k0;->h:Ljava/lang/Long;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Lcom/im/freechat/data/l$k0;

    iget v1, p0, Lcom/im/freechat/data/l$k0;->c:I

    iget-object v2, p0, Lcom/im/freechat/data/l$k0;->d:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    iget v3, p0, Lcom/im/freechat/data/l$k0;->e:I

    iget v4, p0, Lcom/im/freechat/data/l$k0;->f:I

    iget-object v5, p0, Lcom/im/freechat/data/l$k0;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/im/freechat/data/l$k0;->h:Ljava/lang/Long;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/im/freechat/data/l$k0;-><init>(ILcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;IILjava/lang/String;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/im/freechat/data/l$k0;->b:Ljava/lang/Object;

    return-object v8
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

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/l$k0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/data/l$k0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/l$k0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/data/openapigen/api/MessageApi;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/l$k0;->h(Lcom/im/freechat/data/openapigen/api/MessageApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    iget v2, v0, Lcom/im/freechat/data/l$k0;->a:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/im/freechat/data/l$k0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/openapigen/api/MessageApi;

    .line 4
    new-instance v11, Lcom/im/freechat/data/openapigen/models/SendAnimationRequest;

    .line 5
    iget v5, v0, Lcom/im/freechat/data/l$k0;->c:I

    .line 6
    new-instance v6, Lcom/im/freechat/data/openapigen/models/Animation;

    .line 7
    iget-object v4, v0, Lcom/im/freechat/data/l$k0;->d:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    invoke-virtual {v4}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    iget v14, v0, Lcom/im/freechat/data/l$k0;->e:I

    .line 9
    iget v15, v0, Lcom/im/freechat/data/l$k0;->f:I

    .line 10
    iget-object v4, v0, Lcom/im/freechat/data/l$k0;->g:Ljava/lang/String;

    .line 11
    iget-object v7, v0, Lcom/im/freechat/data/l$k0;->d:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    invoke-virtual {v7}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x20

    const/16 v20, 0x0

    move-object v12, v6

    move-object/from16 v16, v4

    .line 12
    invoke-direct/range {v12 .. v20}, Lcom/im/freechat/data/openapigen/models/Animation;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x0

    .line 13
    iget-object v8, v0, Lcom/im/freechat/data/l$k0;->h:Ljava/lang/Long;

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v11

    .line 14
    invoke-direct/range {v4 .. v10}, Lcom/im/freechat/data/openapigen/models/SendAnimationRequest;-><init>(ILcom/im/freechat/data/openapigen/models/Animation;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput v3, v0, Lcom/im/freechat/data/l$k0;->a:I

    invoke-interface {v2, v11, v0}, Lcom/im/freechat/data/openapigen/api/MessageApi;->sendAnimation(Lcom/im/freechat/data/openapigen/models/SendAnimationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    return-object v2
.end method
