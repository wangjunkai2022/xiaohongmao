.class final Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchUserViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;",
        "it",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
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
    c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserViewModel$displayList$1$2$1"
    f = "SearchUserViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;->c:Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

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

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;->c:Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    invoke-direct {v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;-><init>(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final h(Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;
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
            "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;->h(Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel$b$a;->c:Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getFollow_users()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, p1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;-><init>(Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;Z)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
