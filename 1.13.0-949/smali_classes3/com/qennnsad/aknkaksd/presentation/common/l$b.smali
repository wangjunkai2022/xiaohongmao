.class final Lcom/qennnsad/aknkaksd/presentation/common/l$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BaseViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/common/l;->h(Lcom/qennnsad/aknkaksd/domain/base/h;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j2;
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
    value = "SMAP\nBaseViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseViewModel.kt\ncom/qennnsad/aknkaksd/presentation/common/BaseViewModel$invoke$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,122:1\n1#2:123\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001\"\u0004\u0008\u0002\u0010\u0002*\u00020\u0003H\u008a@"
    }
    d2 = {
        "In",
        "Out",
        "Action",
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
    c = "com.qennnsad.aknkaksd.presentation.common.BaseViewModel$invoke$1"
    f = "BaseViewModel.kt"
    i = {}
    l = {
        0x33
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/common/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/presentation/common/l<",
            "TAction;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/qennnsad/aknkaksd/domain/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/domain/base/h<",
            "TIn;TOut;>;"
        }
    .end annotation
.end field

.field final synthetic e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIn;"
        }
    .end annotation
.end field

.field final synthetic f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TOut;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/MutableLiveData;Lcom/qennnsad/aknkaksd/presentation/common/l;Lcom/qennnsad/aknkaksd/domain/base/h;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/qennnsad/aknkaksd/presentation/common/l<",
            "TAction;>;",
            "Lcom/qennnsad/aknkaksd/domain/base/h<",
            "TIn;TOut;>;TIn;",
            "Lkotlin/jvm/functions/Function1<",
            "-TOut;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/common/l$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->b:Landroidx/lifecycle/MutableLiveData;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->c:Lcom/qennnsad/aknkaksd/presentation/common/l;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->d:Lcom/qennnsad/aknkaksd/domain/base/h;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->f:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/common/l$b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->b:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->c:Lcom/qennnsad/aknkaksd/presentation/common/l;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->d:Lcom/qennnsad/aknkaksd/domain/base/h;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->e:Ljava/lang/Object;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->f:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/common/l$b;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/qennnsad/aknkaksd/presentation/common/l;Lcom/qennnsad/aknkaksd/domain/base/h;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->a:I

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->b:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->c:Lcom/qennnsad/aknkaksd/presentation/common/l;

    invoke-static {v1, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->a(Lcom/qennnsad/aknkaksd/presentation/common/l;Landroidx/lifecycle/MutableLiveData;)V

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->d:Lcom/qennnsad/aknkaksd/domain/base/h;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->e:Ljava/lang/Object;

    iput v2, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->f:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->c:Lcom/qennnsad/aknkaksd/presentation/common/l;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->g(Ljava/lang/Throwable;)V

    .line 6
    :cond_5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->b:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/l$b;->c:Lcom/qennnsad/aknkaksd/presentation/common/l;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->b(Lcom/qennnsad/aknkaksd/presentation/common/l;Landroidx/lifecycle/MutableLiveData;)V

    .line 7
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
