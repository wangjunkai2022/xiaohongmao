.class final Lcom/im/freechat/ui/contacts/ContactListViewModel$g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ContactListViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/contacts/ContactListViewModel;->P(Lcom/im/freechat/shared/entities/contact/UserModel;)Lkotlinx/coroutines/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/contacts/ContactListViewModel$g$a;
    }
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
    c = "com.im.freechat.ui.contacts.ContactListViewModel$removeItem$1"
    f = "ContactListViewModel.kt"
    i = {}
    l = {
        0x4a,
        0x4b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/im/freechat/ui/contacts/ContactListViewModel;

.field final synthetic c:Lcom/im/freechat/shared/entities/contact/UserModel;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/contacts/ContactListViewModel;Lcom/im/freechat/shared/entities/contact/UserModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/ui/contacts/ContactListViewModel;",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/ui/contacts/ContactListViewModel$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->b:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    iput-object p2, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->c:Lcom/im/freechat/shared/entities/contact/UserModel;

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

    new-instance p1, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->b:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    iget-object v1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->c:Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;-><init>(Lcom/im/freechat/ui/contacts/ContactListViewModel;Lcom/im/freechat/shared/entities/contact/UserModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->b:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    invoke-virtual {p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->H()Lcom/im/freechat/shared/entities/contact/ContactType;

    move-result-object p1

    sget-object v1, Lcom/im/freechat/ui/contacts/ContactListViewModel$g$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->b:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->w(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/contact/j;

    move-result-object p1

    iget-object v1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->c:Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    iput v2, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/im/freechat/domain/usecase/base/a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->b:Lcom/im/freechat/ui/contacts/ContactListViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->u(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/contact/f;

    move-result-object p1

    iget-object v1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->c:Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    iput v3, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/im/freechat/domain/usecase/base/a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
