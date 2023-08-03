.class public abstract Landroidx/paging/LoadStateAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LoadStateAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eJ\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a2\u0006\u0002\u0010\u0015J\u001b\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u0016J\u001d\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a2\u0006\u0002\u0010\u001aJ\u001b\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u001cR$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/paging/LoadStateAdapter;",
        "VH",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "()V",
        "loadState",
        "Landroidx/paging/LoadState;",
        "getLoadState",
        "()Landroidx/paging/LoadState;",
        "setLoadState",
        "(Landroidx/paging/LoadState;)V",
        "displayLoadStateAsItem",
        "",
        "getItemCount",
        "",
        "getItemViewType",
        "position",
        "getStateViewType",
        "onBindViewHolder",
        "",
        "holder",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/paging/LoadState;)V",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;Landroidx/paging/LoadState;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewType",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "paging-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private loadState:Landroidx/paging/LoadState;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Landroidx/paging/LoadState$NotLoading;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/LoadState$NotLoading;-><init>(Z)V

    iput-object v0, p0, Landroidx/paging/LoadStateAdapter;->loadState:Landroidx/paging/LoadState;

    return-void
.end method


# virtual methods
.method public displayLoadStateAsItem(Landroidx/paging/LoadState;)Z
    .locals 1
    .param p1    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loadState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/paging/LoadState$Loading;

    if-nez v0, :cond_1

    instance-of p1, p1, Landroidx/paging/LoadState$Error;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/paging/LoadStateAdapter;->loadState:Landroidx/paging/LoadState;

    invoke-virtual {p0, v0}, Landroidx/paging/LoadStateAdapter;->displayLoadStateAsItem(Landroidx/paging/LoadState;)Z

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p1, p0, Landroidx/paging/LoadStateAdapter;->loadState:Landroidx/paging/LoadState;

    invoke-virtual {p0, p1}, Landroidx/paging/LoadStateAdapter;->getStateViewType(Landroidx/paging/LoadState;)I

    move-result p1

    return p1
.end method

.method public final getLoadState()Landroidx/paging/LoadState;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/LoadStateAdapter;->loadState:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public getStateViewType(Landroidx/paging/LoadState;)I
    .locals 1
    .param p1    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loadState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/paging/LoadStateAdapter;->loadState:Landroidx/paging/LoadState;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/LoadStateAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/paging/LoadState;)V

    return-void
.end method

.method public abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/paging/LoadState;)V
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroidx/paging/LoadState;",
            ")V"
        }
    .end annotation
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/paging/LoadStateAdapter;->loadState:Landroidx/paging/LoadState;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/LoadStateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;Landroidx/paging/LoadState;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;Landroidx/paging/LoadState;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/paging/LoadState;",
            ")TVH;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public final setLoadState(Landroidx/paging/LoadState;)V
    .locals 3
    .param p1    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loadState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/paging/LoadStateAdapter;->loadState:Landroidx/paging/LoadState;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Landroidx/paging/LoadStateAdapter;->loadState:Landroidx/paging/LoadState;

    invoke-virtual {p0, v0}, Landroidx/paging/LoadStateAdapter;->displayLoadStateAsItem(Landroidx/paging/LoadState;)Z

    move-result v0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/paging/LoadStateAdapter;->displayLoadStateAsItem(Landroidx/paging/LoadState;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 7
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/paging/LoadStateAdapter;->loadState:Landroidx/paging/LoadState;

    :cond_3
    return-void
.end method
