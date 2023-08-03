.class final Lcom/im/freechat/ui/contacts/ContactListViewModel$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ContactListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/contacts/ContactListViewModel;->D(I)V
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
    value = "SMAP\nContactListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactListViewModel.kt\ncom/im/freechat/ui/contacts/ContactListViewModel$createChat$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,130:1\n1#2:131\n*E\n"
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
    c = "com.im.freechat.ui.contacts.ContactListViewModel$createChat$1"
    f = "ContactListViewModel.kt"
    i = {}
    l = {
        0x52,
        0x56
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Lcom/im/freechat/ui/contacts/ContactListViewModel;


# direct methods
.method constructor <init>(ILcom/im/freechat/ui/contacts/ContactListViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/im/freechat/ui/contacts/ContactListViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/ui/contacts/ContactListViewModel$b;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->b:I

    iput-object p2, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->c:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;

    iget v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->b:I

    iget-object v1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->c:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;-><init>(ILcom/im/freechat/ui/contacts/ContactListViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->a:I

    const-string v2, "chatId"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->b:I

    if-ne p1, v5, :cond_5

    .line 5
    iget-object p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->c:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->p(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/contact/c;

    move-result-object p1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput v5, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/im/freechat/domain/usecase/base/a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->c:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    sget-object v3, Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;->CHAT_DETAILS:Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;

    new-array v6, v5, [Lkotlin/Pair;

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v6}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/im/freechat/base/a;->e(Ljava/lang/Enum;Landroid/os/Bundle;)V

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->c:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    sget v1, Lb4/b$s;->l1:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/im/freechat/base/a;->h(I[Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_5
    iget-object p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->c:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->n(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/chat/c;

    move-result-object p1

    iget v1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->b:I

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    iput v3, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/im/freechat/domain/usecase/base/a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 9
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->c:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v3, Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;->CHAT_DETAILS:Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;

    new-array v6, v5, [Lkotlin/Pair;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v6}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/im/freechat/base/a;->e(Ljava/lang/Enum;Landroid/os/Bundle;)V

    .line 10
    :cond_7
    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;->c:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 11
    sget v1, Lb4/b$s;->l1:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/im/freechat/base/a;->h(I[Ljava/lang/Object;)V

    .line 12
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p1}, Ltimber/log/Timber$b;->e(Ljava/lang/Throwable;)V

    .line 13
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
