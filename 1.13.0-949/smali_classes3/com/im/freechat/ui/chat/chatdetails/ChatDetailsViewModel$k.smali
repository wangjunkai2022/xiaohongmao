.class final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatDetailsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->p0()V
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
    value = "SMAP\nChatDetailsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsViewModel.kt\ncom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$followContact$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,843:1\n1#2:844\n*E\n"
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
    c = "com.im.freechat.ui.chat.chatdetails.ChatDetailsViewModel$followContact$1"
    f = "ChatDetailsViewModel.kt"
    i = {}
    l = {
        0x27f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->c:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

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

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->c:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-direct {v0, v1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;-><init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

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

    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/s0;

    .line 4
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->c:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->K0()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->c:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    .line 5
    invoke-static {v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->B(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)Lcom/im/freechat/domain/usecase/contact/b;

    move-result-object v4

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->b:Ljava/lang/Object;

    iput v2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->a:I

    invoke-virtual {v4, p1, p0}, Lcom/im/freechat/domain/usecase/base/a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    .line 6
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lkotlin/Unit;

    sget v1, Lb4/b$s;->v1:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/im/freechat/base/a;->h(I[Ljava/lang/Object;)V

    .line 7
    :cond_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    sget v1, Lb4/b$s;->v1:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/im/freechat/base/a;->h(I[Ljava/lang/Object;)V

    .line 8
    :cond_4
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto :goto_1

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$k;->c:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    .line 10
    sget v0, Lb4/b$s;->s1:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/im/freechat/base/a;->h(I[Ljava/lang/Object;)V

    .line 11
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
