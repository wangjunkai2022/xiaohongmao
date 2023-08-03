.class final Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$b;
.super Lkotlin/jvm/internal/Lambda;
.source "RankTodayDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->s0()V
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
    value = "SMAP\nRankTodayDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankTodayDialog.kt\ncom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$initViews$1$10\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,161:1\n254#2,2:162\n288#3,2:164\n*S KotlinDebug\n*F\n+ 1 RankTodayDialog.kt\ncom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$initViews$1$10\n*L\n115#1:162,2\n117#1:164,2\n*E\n"
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
.field final synthetic a:Le5/h0;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;


# direct methods
.method constructor <init>(Le5/h0;Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$b;->a:Le5/h0;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$b;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$b;->a:Le5/h0;

    iget-object v0, v0, Le5/h0;->n:Landroid/widget/TextView;

    const-string v1, "tvEmptyList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->l0(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;)Lcom/qennnsad/aknkaksd/presentation/module/rank/b;

    move-result-object v1

    const-string v2, "adapter"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

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
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$b;->b:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    .line 5
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->l0(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;)Lcom/qennnsad/aknkaksd/presentation/module/rank/b;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1}, Landroidx/paging/PagingDataAdapter;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 7
    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getRankPosition()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    move-object v3, v2

    .line 8
    :cond_6
    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    .line 9
    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->n0(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V

    return-void
.end method
