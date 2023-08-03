.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$d;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "AbstractAnchorFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->B0()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$d",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "",
        "position",
        "getSpanSize",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment<",
            "TEvent;>;"
        }
    .end annotation
.end field

.field final synthetic b:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment<",
            "TEvent;>;",
            "Landroidx/recyclerview/widget/GridLayoutManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$d;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->w0()Landroidx/paging/PagingDataAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$d;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
