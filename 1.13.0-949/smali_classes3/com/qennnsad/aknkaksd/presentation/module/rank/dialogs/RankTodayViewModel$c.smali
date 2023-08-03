.class final Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RankTodayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/h;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lg5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/paging/PagingData<",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/paging/PagingData<",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"
    }
    d2 = {
        "Landroidx/paging/PagingData;",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        "pagingData",
        "",
        "",
        "list",
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
    c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel$ranks$2"
    f = "RankTodayViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final h(Landroidx/paging/PagingData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/paging/PagingData;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingData<",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/paging/PagingData<",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c;

    invoke-direct {v0, p3}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c;->b:Ljava/lang/Object;

    iput-object p2, v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c;->c:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/paging/PagingData;

    check-cast p2, Ljava/util/List;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c;->h(Landroidx/paging/PagingData;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/PagingData;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel$c$a;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1}, Landroidx/paging/PagingDataTransforms;->map(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
