.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->z1()Lkotlinx/coroutines/j2;
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
    value = "SMAP\nChatDetailsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsViewModel.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$sendMessage$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,843:1\n1#2:844\n1851#3:845\n1549#3:846\n1620#3,3:847\n1549#3:850\n1620#3,3:851\n1852#3:854\n*S KotlinDebug\n*F\n+ 1 ChatDetailsViewModel.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$sendMessage$1\n*L\n485#1:845\n489#1:846\n489#1:847,3\n491#1:850\n491#1:851,3\n485#1:854\n*E\n"
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
    c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$sendMessage$1"
    f = "ChatDetailsViewModel.kt"
    i = {}
    l = {
        0x1f0,
        0x1fb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->d:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->d:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {p1, v0, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
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
    iget v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->c:I

    const-string v3, ""

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    check-cast v7, Lkotlin/Result;

    invoke-virtual {v7}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-object v7, v0

    goto/16 :goto_8

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->d:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-virtual {v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v3

    :cond_3
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x3e8

    .line 5
    invoke-static {v2, v6}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 7
    :cond_4
    iget-object v6, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->d:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v7, v0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    .line 9
    invoke-virtual {v6}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->y0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/im/freechat/ui/chat/chatdetails/z1;

    .line 10
    invoke-virtual {v6}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->C0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    .line 11
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v12, 0x1

    :goto_2
    const/16 v13, 0xa

    const/4 v14, 0x0

    if-eqz v12, :cond_9

    if-eqz v8, :cond_8

    .line 12
    invoke-virtual {v8}, Lcom/im/freechat/ui/chat/chatdetails/z1;->h()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/im/freechat/shared/entities/message/Message;

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 13
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 15
    check-cast v13, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 16
    invoke-static {v13}, Lcom/im/freechat/extend/p;->j(Lcom/im/freechat/shared/entities/message/Attachment;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object v12, v14

    goto :goto_5

    :cond_9
    const-string v12, "uris"

    .line 17
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 20
    check-cast v13, Landroid/net/Uri;

    .line 21
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 22
    :cond_a
    :goto_5
    invoke-virtual {v6}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->N0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v6, v14}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->A1(Lcom/im/freechat/ui/chat/chatdetails/z1;)V

    .line 24
    invoke-virtual {v6}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->C0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 25
    invoke-static {v6}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->P(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/messages/j;

    move-result-object v15

    .line 26
    new-instance v13, Lcom/im/freechat/domain/usecase/messages/j$a;

    .line 27
    invoke-static {v6}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->u(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)I

    move-result v16

    if-eqz v8, :cond_b

    .line 28
    invoke-virtual {v8}, Lcom/im/freechat/ui/chat/chatdetails/z1;->h()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_c

    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    :cond_c
    move-object/from16 v17, v9

    if-eqz v8, :cond_d

    .line 29
    invoke-virtual {v8}, Lcom/im/freechat/ui/chat/chatdetails/z1;->j()Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;

    move-result-object v8

    goto :goto_6

    :cond_d
    move-object v8, v14

    :goto_6
    if-nez v12, :cond_e

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object/from16 v18, v9

    goto :goto_7

    :cond_e
    move-object/from16 v18, v12

    :goto_7
    const-string v9, "@all"

    .line 31
    invoke-static {v11, v9, v10, v4, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v19

    .line 32
    invoke-static {v6, v11}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->q(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x80

    const/16 v23, 0x0

    move-object v9, v13

    move/from16 v10, v16

    move-object/from16 v12, v17

    move-object v14, v13

    move-object v13, v8

    move-object v8, v14

    move-object/from16 v14, v18

    move-object v4, v15

    move/from16 v15, v19

    move-object/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    move-object/from16 v19, v23

    .line 33
    invoke-direct/range {v9 .. v19}, Lcom/im/freechat/domain/usecase/messages/j$a;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;Ljava/util/List;ZLjava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    iput-object v6, v7, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->a:Ljava/lang/Object;

    iput-object v2, v7, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->b:Ljava/lang/Object;

    iput v5, v7, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->c:I

    invoke-virtual {v4, v8, v7}, Lcom/im/freechat/domain/usecase/base/a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_f

    return-object v1

    :cond_f
    :goto_8
    const-wide/16 v8, 0x32

    .line 35
    iput-object v6, v7, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->a:Ljava/lang/Object;

    iput-object v2, v7, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->b:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v7, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->c:I

    invoke-static {v8, v9, v7}, Lkotlinx/coroutines/b1;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_5

    return-object v1

    .line 36
    :cond_10
    iget-object v1, v7, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$z;->d:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-virtual {v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->Z0()Lkotlinx/coroutines/j2;

    .line 37
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
