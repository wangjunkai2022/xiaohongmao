.class public final Lcom/im/freechat/ui/create/namegroup/a;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "MemberAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/create/namegroup/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "Lcom/im/freechat/ui/create/namegroup/a$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/im/freechat/ui/create/namegroup/a;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "Lcom/im/freechat/ui/create/namegroup/a$a;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "f",
        "holder",
        "position",
        "",
        "e",
        "Landroid/content/res/Resources;",
        "a",
        "Landroid/content/res/Resources;",
        "d",
        "()Landroid/content/res/Resources;",
        "resources",
        "<init>",
        "(Landroid/content/res/Resources;)V",
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
.field private final a:Landroid/content/res/Resources;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/im/freechat/ui/create/namegroup/b;->a()Lcom/im/freechat/ui/create/namegroup/b$a;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/create/namegroup/a;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final d()Landroid/content/res/Resources;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/create/namegroup/a;->a:Landroid/content/res/Resources;

    return-object v0
.end method

.method public e(Lcom/im/freechat/ui/create/namegroup/a$a;I)V
    .locals 2
    .param p1    # Lcom/im/freechat/ui/create/namegroup/a$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(position)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-virtual {p1, v0, p2}, Lcom/im/freechat/ui/create/namegroup/a$a;->b(Lcom/im/freechat/shared/entities/contact/UserModel;I)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/create/namegroup/a$a;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/im/freechat/ui/create/namegroup/a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lf4/h1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/h1;

    move-result-object p1

    const-string v0, "inflate(LayoutInflater.f\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/im/freechat/ui/create/namegroup/a$a;-><init>(Lf4/h1;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/create/namegroup/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/create/namegroup/a;->e(Lcom/im/freechat/ui/create/namegroup/a$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/create/namegroup/a;->f(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/create/namegroup/a$a;

    move-result-object p1

    return-object p1
.end method
