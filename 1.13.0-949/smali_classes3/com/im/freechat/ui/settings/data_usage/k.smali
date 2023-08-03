.class public final Lcom/im/freechat/ui/settings/data_usage/k;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "NetworkUsageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/settings/data_usage/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/im/freechat/domain/m;",
        "Lcom/im/freechat/ui/settings/data_usage/k$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/im/freechat/ui/settings/data_usage/k;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/im/freechat/domain/m;",
        "Lcom/im/freechat/ui/settings/data_usage/k$a;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "e",
        "holder",
        "position",
        "",
        "d",
        "<init>",
        "()V",
        "a",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/im/freechat/ui/settings/data_usage/l;->a()Lcom/im/freechat/ui/settings/data_usage/l$a;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/im/freechat/ui/settings/data_usage/k$a;I)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/settings/data_usage/k$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getItem(position)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/im/freechat/domain/m;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/settings/data_usage/k$a;->b(Lcom/im/freechat/domain/m;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/settings/data_usage/k$a;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/im/freechat/ui/settings/data_usage/k$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lf4/q1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/q1;

    move-result-object p1

    const-string v0, "inflate(LayoutInflater.f\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/im/freechat/ui/settings/data_usage/k$a;-><init>(Lf4/q1;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/settings/data_usage/k$a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/settings/data_usage/k;->d(Lcom/im/freechat/ui/settings/data_usage/k$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/settings/data_usage/k;->e(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/settings/data_usage/k$a;

    move-result-object p1

    return-object p1
.end method
