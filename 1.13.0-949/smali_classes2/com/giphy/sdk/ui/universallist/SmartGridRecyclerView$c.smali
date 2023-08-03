.class public final Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$c;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SmartGridRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->t()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016R\u0017\u0010\u0010\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\r\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "com/giphy/sdk/ui/universallist/SmartGridRecyclerView$c",
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
        "",
        "a",
        "I",
        "()I",
        "borderSizePx",
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
.field private final a:I

.field final synthetic b:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$c;->b:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getCellPadding()I

    move-result p1

    iput p1, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$c;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$c;->a:I

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4
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

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    .line 3
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p3

    sget-object p4, Lcom/giphy/sdk/ui/universallist/SmartItemType;->UserProfile:Lcom/giphy/sdk/ui/universallist/SmartItemType;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-ne p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p4, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams"

    invoke-static {p2, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    const/4 p4, 0x3

    if-nez p2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$c;->b:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getSpanCount()I

    move-result v2

    if-lt v2, p4, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$c;->a:I

    div-int/lit8 v2, v2, 0x2

    .line 7
    :goto_1
    iget-object v3, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$c;->b:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getSpanCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne p2, v3, :cond_4

    iget-object p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$c;->b:Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getSpanCount()I

    move-result p2

    if-lt p2, p4, :cond_5

    :cond_4
    if-eqz p3, :cond_6

    :cond_5
    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    iget p2, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$c;->a:I

    div-int/lit8 p2, p2, 0x2

    .line 8
    :goto_2
    iget p3, p0, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$c;->a:I

    .line 9
    invoke-virtual {p1, v2, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
