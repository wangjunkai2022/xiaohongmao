.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HistoryItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0012B\'\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0016\u0008\u0002\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0017\u00a2\u0006\u0004\u0008$\u0010%J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u001c\u0010\u0008\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J*\u0010\u000f\u001a\u00020\u000e2\n\u0010\t\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\n\u001a\u00020\u00032\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016J\u001c\u0010\u0010\u001a\u00020\u000e2\n\u0010\t\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\n\u001a\u00020\u0003H\u0016R\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR6\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000b8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;",
        "",
        "getItemCount",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "h",
        "holder",
        "position",
        "",
        "",
        "payloads",
        "",
        "g",
        "f",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "a",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "e",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lkotlin/Function1;",
        "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "onItemClick",
        "value",
        "c",
        "Ljava/util/List;",
        "d",
        "()Ljava/util/List;",
        "i",
        "(Ljava/util/List;)V",
        "itemsList",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V",
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
.field private final a:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 4
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->b:Lkotlin/jvm/functions/Function1;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->c:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public final e()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object v0
.end method

.method public f(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;I)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    .line 2
    invoke-virtual {p1, v0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->c(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;I)Landroid/view/View;

    return-void
.end method

.method public g(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;->f()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0179

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "from(parent.context)\n   \u2026d_history, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;

    invoke-direct {p2, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;Landroid/view/View;)V

    return-object p2
.end method

.method public final i(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->c:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->g(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;->h(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;

    move-result-object p1

    return-object p1
.end method
