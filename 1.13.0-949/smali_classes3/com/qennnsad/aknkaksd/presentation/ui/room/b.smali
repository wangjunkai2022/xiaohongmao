.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/b;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "AudienceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u000eB#\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0013\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001c\u0010\u0008\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u001c\u0010\u000c\u001a\u00020\u000b2\n\u0010\t\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R#\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/b;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "h",
        "holder",
        "position",
        "",
        "g",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "a",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "f",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lkotlin/Function1;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "e",
        "()Lkotlin/jvm/functions/Function1;",
        "onUserClick",
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
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;",
            "Lkotlin/Unit;",
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
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUserClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/room/c;->a()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;Lcom/qennnsad/aknkaksd/presentation/ui/room/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;->i(Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;Lcom/qennnsad/aknkaksd/presentation/ui/room/b;Landroid/view/View;)V

    return-void
.end method

.method private static final i(Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;Lcom/qennnsad/aknkaksd/presentation/ui/room/b;Landroid/view/View;)V
    .locals 1

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2
    iget-object p2, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;->b:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getItem(bindingAdapterPosition)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final e()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final f()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object v0
.end method

.method public g(Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;I)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getItem(position)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;->b(Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;)V

    return-void
.end method

.method public h(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;
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
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;

    .line 2
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/s1;->i(Landroid/view/View;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p1, v1}, Le5/v2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/v2;

    move-result-object p1

    const-string v0, "inflate(\n               \u2026      false\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/b;Le5/v2;)V

    .line 5
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/a;

    invoke-direct {v0, p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;Lcom/qennnsad/aknkaksd/presentation/ui/room/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;->g(Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;->h(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;

    move-result-object p1

    return-object p1
.end method
