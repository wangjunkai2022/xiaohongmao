.class final Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/im/freechat/shared/entities/TypingEvent;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatListViewModel.kt\ncom/im/freechat/ui/chatlist/ChatListViewModel$startListeners$1$3$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n1#2:163\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/TypingEvent;",
        "it",
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
    c = "com.im.freechat.ui.chatlist.ChatListViewModel$startListeners$1$3$1"
    f = "ChatListViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/im/freechat/ui/chatlist/ChatListViewModel;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/ui/chatlist/ChatListViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;->c:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

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

    new-instance v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;

    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;->c:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    invoke-direct {v0, v1, p2}, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;-><init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final h(Lcom/im/freechat/shared/entities/TypingEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/im/freechat/shared/entities/TypingEvent;
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
            "Lcom/im/freechat/shared/entities/TypingEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/TypingEvent;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;->h(Lcom/im/freechat/shared/entities/TypingEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;->a:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/shared/entities/TypingEvent;

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;->c:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    invoke-static {v0}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->u(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/TypingEvent;->getChatId()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/TypingEvent;->getStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/TypingEvent;->getUserId()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/TypingEvent;->getUserId()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;->c:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    invoke-static {v1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->u(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/TypingEvent;->getChatId()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d$c$a;->c:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->u(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->v(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Ljava/util/Map;)V

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
