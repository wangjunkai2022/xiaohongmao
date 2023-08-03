.class public final Lk4/a;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "ChatHistoryPageAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0004\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lk4/a;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "",
        "getItemCount",
        "position",
        "Landroidx/fragment/app/Fragment;",
        "createFragment",
        "Lcom/im/freechat/ui/chat/history/HistoryTab;",
        "Lcom/im/freechat/ui/chat/history/HistoryTabFragment;",
        "d",
        "",
        "getPageTitle",
        "fragment",
        "",
        "excludedTabs",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Ljava/util/List;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/history/HistoryTab;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/im/freechat/ui/chat/history/HistoryTabFragment;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/ui/chat/history/HistoryTab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "excludedTabs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lk4/a;->a:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-static {}, Lcom/im/freechat/ui/chat/history/HistoryTab;->values()[Lcom/im/freechat/ui/chat/history/HistoryTab;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lk4/a;->b:Ljava/util/List;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lk4/a;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lk4/a;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->g:Lcom/im/freechat/ui/chat/history/HistoryTabFragment$a;

    iget-object v1, p0, Lk4/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$a;->a(Lcom/im/freechat/ui/chat/history/HistoryTab;)Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk4/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final d(Lcom/im/freechat/ui/chat/history/HistoryTab;)Lcom/im/freechat/ui/chat/history/HistoryTabFragment;
    .locals 2
    .param p1    # Lcom/im/freechat/ui/chat/history/HistoryTab;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lk4/a;->c:Landroid/util/SparseArray;

    iget-object v1, p0, Lk4/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lk4/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lk4/a;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lk4/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/HistoryTab;->getResId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fragment.resources.getSt\u2026tualTabs[position].resId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
