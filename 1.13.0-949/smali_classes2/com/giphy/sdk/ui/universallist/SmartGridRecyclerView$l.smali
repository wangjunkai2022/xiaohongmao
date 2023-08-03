.class final Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$l;
.super Ljava/lang/Object;
.source "SmartGridRecyclerView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->requestLayout()V
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

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$l;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$l;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->o(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;Z)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$l;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$l;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$l;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$l;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 3
    iget-object v5, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$l;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$l;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$l;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v9

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$l;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v10

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->k(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;ZIIII)V

    return-void
.end method
