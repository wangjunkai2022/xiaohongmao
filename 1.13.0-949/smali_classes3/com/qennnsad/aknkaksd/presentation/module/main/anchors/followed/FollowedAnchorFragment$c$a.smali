.class final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FollowedAnchorFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/paging/CombinedLoadStates;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFollowedAnchorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FollowedAnchorFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$onViewCreated$1$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,49:1\n254#2,2:50\n*S KotlinDebug\n*F\n+ 1 FollowedAnchorFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$onViewCreated$1$1\n*L\n37#1:50,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"
    }
    d2 = {
        "Landroidx/paging/CombinedLoadStates;",
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
    c = "com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.FollowedAnchorFragment$onViewCreated$1$1"
    f = "FollowedAnchorFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;

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

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;

    invoke-direct {v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final h(Landroidx/paging/CombinedLoadStates;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/paging/CombinedLoadStates;
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
            "Landroidx/paging/CombinedLoadStates;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/paging/CombinedLoadStates;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;->h(Landroidx/paging/CombinedLoadStates;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;->a:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;->R0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;)Le5/x0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Le5/x0;->b:Landroid/widget/RelativeLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Landroidx/paging/CombinedLoadStates;->getSource()Landroidx/paging/LoadStates;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/paging/LoadStates;->getRefresh()Landroidx/paging/LoadState;

    move-result-object v1

    instance-of v1, v1, Landroidx/paging/LoadState$NotLoading;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroidx/paging/CombinedLoadStates;->getAppend()Landroidx/paging/LoadState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment$c$a;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->w0()Landroidx/paging/PagingDataAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->getItemCount()I

    move-result p1

    if-ge p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, 0x8

    .line 5
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
