.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SettingsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R<\u0010\u0017\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "f",
        "holder",
        "position",
        "",
        "e",
        "Lkotlin/Function1;",
        "Lkotlin/Pair;",
        "",
        "",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "d",
        "()Lkotlin/jvm/functions/Function1;",
        "g",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemCheckListener",
        "<init>",
        "()V",
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
.field private a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/u;->a()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/u$a;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method


# virtual methods
.method public final d()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t;->a:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public e(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;I)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t;)V

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;->e(Lkotlin/jvm/functions/Function1;)V

    .line 2
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getItem(position)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;->c(Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;
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
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p1, v1}, Le5/d3;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/d3;

    move-result-object p1

    const-string v0, "inflate(\n               \u2026      false\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;-><init>(Le5/d3;)V

    return-object p2
.end method

.method public final g(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t;->e(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t;->f(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;

    move-result-object p1

    return-object p1
.end method
