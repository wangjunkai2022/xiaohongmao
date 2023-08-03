.class public final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$i;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ChatDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->Y1(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$i",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "newState",
        "",
        "onScrollStateChanged",
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
.field final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$i;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iput p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$i;->b:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$i;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->y1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Lf4/i;

    move-result-object p1

    iget-object p1, p1, Lf4/i;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$i;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->y1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)Lf4/i;

    move-result-object p1

    iget-object p1, p1, Lf4/i;->k:Landroidx/recyclerview/widget/RecyclerView;

    iget p2, p0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$i;->b:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p2, p1, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->a0(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method
