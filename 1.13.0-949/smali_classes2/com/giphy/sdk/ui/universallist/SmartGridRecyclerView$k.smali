.class final Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$k;
.super Ljava/lang/Object;
.source "SmartGridRecyclerView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$k;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$k;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->m(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;Z)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$k;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getContentItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$k;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getContentItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$k;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getFooterItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/giphy/sdk/ui/universallist/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/giphy/sdk/ui/universallist/SmartItemType;->NetworkState:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    if-ne v1, v2, :cond_1

    const/4 v0, -0x1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$k;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getOnResultsUpdateListener()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$k;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifTrackingManager$giphy_ui_2_1_9_release()Lcom/giphy/sdk/tracking/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/tracking/d;->y()V

    return-void
.end method
