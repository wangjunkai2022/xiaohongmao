.class public final Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$d;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SmartGridRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getPostComparator()Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/giphy/sdk/ui/universallist/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0017\u00a8\u0006\u0008"
    }
    d2 = {
        "com/giphy/sdk/ui/universallist/SmartGridRecyclerView$d",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/giphy/sdk/ui/universallist/g;",
        "oldItem",
        "newItem",
        "",
        "b",
        "a",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/giphy/sdk/ui/universallist/g;Lcom/giphy/sdk/ui/universallist/g;)Z
    .locals 2
    .param p1    # Lcom/giphy/sdk/ui/universallist/g;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/ui/universallist/g;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiffUtilEquals"
        }
    .end annotation

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/universallist/g;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/giphy/sdk/ui/universallist/g;

    check-cast p2, Lcom/giphy/sdk/ui/universallist/g;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$d;->a(Lcom/giphy/sdk/ui/universallist/g;Lcom/giphy/sdk/ui/universallist/g;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/giphy/sdk/ui/universallist/g;

    check-cast p2, Lcom/giphy/sdk/ui/universallist/g;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView$d;->b(Lcom/giphy/sdk/ui/universallist/g;Lcom/giphy/sdk/ui/universallist/g;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/giphy/sdk/ui/universallist/g;Lcom/giphy/sdk/ui/universallist/g;)Z
    .locals 2
    .param p1    # Lcom/giphy/sdk/ui/universallist/g;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/ui/universallist/g;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/universallist/g;->d()Lcom/giphy/sdk/ui/universallist/SmartItemType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/g;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/universallist/g;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
