.class final Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MallViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;->v(I)V
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
    value = "SMAP\nMallViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MallViewModel.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$createChatIfAble$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"
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
    c = "com.qennnsad.aknkaksd.presentation.ui.main.mall.MallViewModel$createChatIfAble$1"
    f = "MallViewModel.kt"
    i = {}
    l = {
        0x10
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->c:I

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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->c:I

    invoke-direct {p1, v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->a:I

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;->t(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;

    move-result-object p1

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->c:I

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->c:I

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/qennnsad/aknkaksd/data/bean/IsAbleToCreateChatBean;

    .line 6
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/IsAbleToCreateChatBean;->isAble()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;->s(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;I)Lkotlinx/coroutines/j2;

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/IsAbleToCreateChatBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->p(Ljava/lang/String;)V

    .line 9
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    const p1, 0x7f13014b

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->q(I)V

    .line 10
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
