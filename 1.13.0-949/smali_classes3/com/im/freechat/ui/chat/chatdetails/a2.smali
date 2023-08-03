.class public final Lcom/im/freechat/ui/chat/chatdetails/a2;
.super Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;
.source "MediaGroupGridAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J&\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00042\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016R\"\u0010\u0015\u001a\u00020\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00168V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chatdetails/a2;",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;",
        "u",
        "holder",
        "position",
        "",
        "",
        "payloads",
        "",
        "L",
        "p",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;",
        "K",
        "()Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;",
        "M",
        "(Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V",
        "outerAdapter",
        "",
        "v",
        "r",
        "()Z",
        "I",
        "(Z)V",
        "isSelectionModeOn",
        "<init>",
        "()V",
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
.field public p:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;-><init>()V

    return-void
.end method


# virtual methods
.method public I(Z)V
    .locals 3

    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final K()Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/a2;->p:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "outerAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public L(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
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
            "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;",
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
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->q(II)V

    return-void
.end method

.method public final M(Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/a2;->p:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/ui/chat/chatdetails/a2;->L(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/a2;->u(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    move-result-object p1

    return-object p1
.end method

.method public r()Z
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/a2;->K()Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->r()Z

    move-result v0

    return v0
.end method

.method public u(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "inflate(LayoutInflater.f\u2026.context), parent, false)"

    const/4 v2, 0x0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->u(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    move-result-object p1

    goto :goto_1

    .line 2
    :pswitch_0
    new-instance p2, Lcom/im/freechat/ui/chat/holder/y;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lf4/n1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/n1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p1, v2}, Lcom/im/freechat/ui/chat/holder/y;-><init>(Lf4/n1;Z)V

    goto :goto_0

    .line 5
    :pswitch_1
    new-instance p2, Lcom/im/freechat/ui/chat/holder/t0;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lf4/p1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/p1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p2, p1, v2}, Lcom/im/freechat/ui/chat/holder/t0;-><init>(Lf4/p1;Z)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Lcom/im/freechat/ui/chat/holder/b0;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lf4/o1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/o1;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p2, p1, v2}, Lcom/im/freechat/ui/chat/holder/b0;-><init>(Lf4/o1;Z)V

    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
