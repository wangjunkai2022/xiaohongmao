.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "FriendRequestAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR0\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R0\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0013\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "g",
        "holder",
        "position",
        "",
        "f",
        "",
        "a",
        "Z",
        "received",
        "Lkotlin/Function1;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "d",
        "()Lkotlin/jvm/functions/Function1;",
        "h",
        "(Lkotlin/jvm/functions/Function1;)V",
        "acceptClickListener",
        "c",
        "e",
        "i",
        "declineClickListener",
        "<init>",
        "(Z)V",
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
.field private final a:Z

.field private b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/e;->a()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/e$a;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 2
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;->a:Z

    return-void
.end method


# virtual methods
.method public final d()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final e()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;->c:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public f(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;I)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getItem(position)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/im/freechat/shared/entities/chat/FriendStatus;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;->d(Lcom/im/freechat/shared/entities/chat/FriendStatus;)V

    .line 2
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$b;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;)V

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;->i(Lkotlin/jvm/functions/Function1;)V

    .line 3
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$c;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;)V

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;->j(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context).inf\u2026t_request, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;->a:Z

    .line 4
    invoke-direct {p2, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;-><init>(Landroid/view/View;Z)V

    return-object p2
.end method

.method public final h(Lkotlin/jvm/functions/Function1;)V
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
            "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final i(Lkotlin/jvm/functions/Function1;)V
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
            "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;->f(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d;->g(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/d$a;

    move-result-object p1

    return-object p1
.end method
