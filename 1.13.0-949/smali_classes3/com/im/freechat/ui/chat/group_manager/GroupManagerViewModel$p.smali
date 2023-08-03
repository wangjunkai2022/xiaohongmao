.class final Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GroupManagerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->l0(Landroid/net/Uri;)V
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
    value = "SMAP\nGroupManagerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupManagerViewModel.kt\ncom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$updateAvatar$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"
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
    c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$updateAvatar$1"
    f = "GroupManagerViewModel.kt"
    i = {}
    l = {
        0xa8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

.field final synthetic c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->b:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->c:Landroid/net/Uri;

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

    new-instance p1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->b:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->c:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    .line 4
    iget-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->b:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->w(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/chat/m;

    move-result-object p1

    new-instance v1, Lcom/im/freechat/domain/usecase/chat/m$a;

    iget-object v3, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->b:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    invoke-virtual {v3}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->O()I

    move-result v3

    iget-object v4, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->c:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uri.toString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lcom/im/freechat/domain/usecase/chat/m$a;-><init>(ILjava/lang/String;)V

    iput v2, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/im/freechat/domain/usecase/base/a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;->b:Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "Error"

    :cond_3
    invoke-virtual {v0, p1}, Lcom/im/freechat/base/a;->g(Ljava/lang/String;)Lkotlin/Unit;

    .line 6
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
