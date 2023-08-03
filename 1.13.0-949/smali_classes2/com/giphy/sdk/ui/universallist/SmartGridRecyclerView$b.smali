.class public final Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$b;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SmartGridRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->s(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/giphy/sdk/ui/universallist/SmartGridRecyclerView$b",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "Landroid/graphics/Rect;",
        "outRect",
        "Landroid/view/View;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "",
        "getItemOffsets",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$b;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    iput p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$b;->b:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "state"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager.LayoutParams"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    const/4 p3, 0x3

    const/4 p4, 0x0

    if-nez p2, :cond_0

    .line 3
    iget v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$b;->b:I

    if-ge v0, p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$b;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getCellPadding()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 4
    :goto_0
    iget v1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$b;->b:I

    add-int/lit8 v2, v1, -0x1

    if-ne p2, v2, :cond_1

    if-ge v1, p3, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$b;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getCellPadding()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 5
    :goto_1
    iget-object p3, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$b;->a:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p3}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getCellPadding()I

    move-result p3

    .line 6
    invoke-virtual {p1, v0, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
