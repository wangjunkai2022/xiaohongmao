.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "DepositOptionsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDepositOptionsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DepositOptionsAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/DepositOptionsAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u000eB\u001b\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001c\u0010\u0008\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u001c\u0010\u000c\u001a\u00020\u000b2\n\u0010\t\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006H\u0016R \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "g",
        "holder",
        "position",
        "",
        "f",
        "Lkotlin/Function1;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "onItemClick",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
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
.field private final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onItemClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/b;->a()Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/b$a;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;I)Lcom/qennnsad/aknkaksd/data/bean/DepositOption;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;

    return-object p0
.end method

.method public static final synthetic e(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;->a:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method public f(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;I)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qennnsad/aknkaksd/data/bean/DepositOption;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;->b(Lcom/qennnsad/aknkaksd/data/bean/DepositOption;)V

    :cond_0
    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;

    .line 2
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/s1;->i(Landroid/view/View;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Le5/m2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/m2;

    move-result-object p1

    const-string v0, "inflate(parent.layoutInflator, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p2, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;Le5/m2;)V

    .line 4
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p1, "itemView"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$b;

    invoke-direct {v4, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;->g(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;

    move-result-object p1

    return-object p1
.end method
