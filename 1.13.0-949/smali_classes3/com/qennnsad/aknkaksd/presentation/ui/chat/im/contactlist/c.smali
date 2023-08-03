.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "ContactListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactListAdapter.kt\ncom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R0\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R0\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u000f\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "k",
        "holder",
        "position",
        "",
        "h",
        "Lkotlin/Function1;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "f",
        "()Lkotlin/jvm/functions/Function1;",
        "l",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemClickListener",
        "b",
        "g",
        "m",
        "itemLongClickListener",
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
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
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

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/d;->a()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/d$a;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;->i(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;ILandroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;->j(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final i(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;ILandroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;->a:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getItem(position)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final j(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;ILandroid/view/View;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;->b:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getItem(position)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final f()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;->a:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final g()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public h(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;I)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(position)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;->b(Lcom/im/freechat/shared/entities/contact/UserModel;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/a;

    invoke-direct {v1, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/b;

    invoke-direct {v0, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;
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
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00d7

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context)\n   \u2026t_contact, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final l(Lkotlin/jvm/functions/Function1;)V
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
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final m(Lkotlin/jvm/functions/Function1;)V
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
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;->h(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;->k(Landroid/view/ViewGroup;I)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c$a;

    move-result-object p1

    return-object p1
.end method
