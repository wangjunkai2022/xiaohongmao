.class final Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MessageGalleryViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/util/List<",
        "+",
        "Lcom/im/freechat/shared/entities/message/Message;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageGalleryViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageGalleryViewModel.kt\ncom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$init$1$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,85:1\n766#2:86\n857#2,2:87\n1360#2:89\n1446#2,2:90\n1549#2:92\n1620#2,3:93\n1448#2,3:96\n*S KotlinDebug\n*F\n+ 1 MessageGalleryViewModel.kt\ncom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$init$1$1$1\n*L\n41#1:86\n41#1:87,2\n42#1:89\n42#1:90,2\n43#1:92\n43#1:93,3\n42#1:96,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"
    }
    d2 = {
        "",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "list",
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
    c = "com.im.freechat.ui.chat.message_gallery.MessageGalleryViewModel$init$1$1$1"
    f = "MessageGalleryViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;->c:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;->c:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;

    invoke-direct {v0, v1, p2}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;-><init>(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final h(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;->h(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;->a:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel$a$a$a;->c:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/im/freechat/shared/entities/message/Message;

    .line 5
    invoke-static {v3}, Lcom/im/freechat/extend/p;->v(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/im/freechat/shared/entities/message/Message;

    .line 9
    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object v3

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 12
    move-object v7, v5

    check-cast v7, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 13
    new-instance v5, Lcom/im/freechat/ui/chat/history/a;

    .line 14
    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v8

    .line 15
    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v9

    .line 16
    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v11

    .line 17
    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v12

    move-object v6, v5

    .line 18
    invoke-direct/range {v6 .. v12}, Lcom/im/freechat/ui/chat/history/a;-><init>(Lcom/im/freechat/shared/entities/message/Attachment;Lcom/im/freechat/shared/entities/contact/Sender;JILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_2
    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
