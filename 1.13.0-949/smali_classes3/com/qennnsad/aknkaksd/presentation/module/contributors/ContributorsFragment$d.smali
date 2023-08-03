.class final Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment$d;
.super Lkotlin/jvm/internal/Lambda;
.source "ContributorsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;->E0()V
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
    value = "SMAP\nContributorsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContributorsFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment$initViews$2$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n254#2,2:102\n766#3:104\n857#3,2:105\n*S KotlinDebug\n*F\n+ 1 ContributorsFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment$initViews$2$3\n*L\n66#1:102,2\n69#1:104\n69#1:105,2\n*E\n"
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
.field final synthetic a:Le5/e1;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;


# direct methods
.method constructor <init>(Le5/e1;Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment$d;->a:Le5/e1;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment$d;->b:Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment$d;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment$d;->a:Le5/e1;

    iget-object v0, v0, Le5/e1;->d:Le5/r1;

    iget-object v0, v0, Le5/r1;->h:Landroid/widget/TextView;

    const-string v1, "ranking.tvEmptyList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment$d;->b:Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;->z0(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;)Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "contributorsAdapter"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroidx/paging/PagingDataAdapter;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment$d;->b:Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;

    .line 5
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;->z0(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;)Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-virtual {v2}, Landroidx/paging/PagingDataAdapter;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    .line 8
    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getRankPosition()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x3

    if-gt v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9
    :cond_6
    invoke-static {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;->A0(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;Ljava/util/List;)V

    return-void
.end method
