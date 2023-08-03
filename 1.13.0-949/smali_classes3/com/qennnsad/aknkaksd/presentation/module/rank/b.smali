.class public final Lcom/qennnsad/aknkaksd/presentation/module/rank/b;
.super Landroidx/paging/PagingDataAdapter;
.source "RankDataAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingDataAdapter<",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u000eB?\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0006\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0014\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001c\u0010\u0008\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u001c\u0010\u000c\u001a\u00020\u000b2\n\u0010\t\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/b;",
        "Landroidx/paging/PagingDataAdapter;",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "j",
        "holder",
        "position",
        "",
        "i",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "a",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "b",
        "I",
        "topCount",
        "Lkotlin/Function1;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "onFollowClick",
        "d",
        "onItemClick",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/repository/m;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
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

.field private final b:I

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/m;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFollowClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClick"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/rank/c;->a()Lcom/qennnsad/aknkaksd/presentation/module/rank/c$a;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->b:I

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->c:Lkotlin/jvm/functions/Function1;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic d(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;I)Lcom/qennnsad/aknkaksd/data/bean/RankItem;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    return-object p0
.end method

.method public static final synthetic e(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->c:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic f(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->d:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic g(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;)Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object p0
.end method

.method public static final synthetic h(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->b:I

    return p0
.end method


# virtual methods
.method public i(Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;I)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/paging/PagingDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;->b(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V

    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;

    .line 2
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/s1;->i(Landroid/view/View;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Le5/x2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/x2;

    move-result-object p1

    const-string v0, "inflate(parent.layoutInflator, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p2, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;Le5/x2;)V

    .line 4
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;->c()Le5/x2;

    move-result-object p1

    iget-object v0, p1, Le5/x2;->b:Landroid/widget/TextView;

    const-string p1, "binding.btnFollow"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$b;

    invoke-direct {v3, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;->c()Le5/x2;

    move-result-object p1

    invoke-virtual {p1}, Le5/x2;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    const-string p1, "binding.root"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$c;

    invoke-direct {v3, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;)V

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->i(Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/b;->j(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;

    move-result-object p1

    return-object p1
.end method
