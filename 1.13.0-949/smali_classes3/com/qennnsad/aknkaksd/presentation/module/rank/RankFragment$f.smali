.class final Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$f;
.super Lkotlin/jvm/internal/Lambda;
.source "RankFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$initViews$5$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n254#2,2:122\n766#3:124\n857#3,2:125\n*S KotlinDebug\n*F\n+ 1 RankFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$initViews$5$1\n*L\n81#1:122,2\n84#1:124\n84#1:125,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;

.field final synthetic b:Le5/r1;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;Le5/r1;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$f;->b:Le5/r1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$f;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;->z0(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$f;->b:Le5/r1;

    iget-object v0, v0, Le5/r1;->h:Landroid/widget/TextView;

    const-string v1, "tvEmptyList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;->y0(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;)Lcom/qennnsad/aknkaksd/presentation/module/rank/b;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "rankDataAdapter"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Landroidx/paging/PagingDataAdapter;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;

    .line 6
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;->y0(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;)Lcom/qennnsad/aknkaksd/presentation/module/rank/b;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-virtual {v2}, Landroidx/paging/PagingDataAdapter;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    .line 9
    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getRankPosition()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x3

    if-gt v5, v6, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_7
    invoke-static {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;->A0(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;Ljava/util/List;)V

    return-void
.end method
