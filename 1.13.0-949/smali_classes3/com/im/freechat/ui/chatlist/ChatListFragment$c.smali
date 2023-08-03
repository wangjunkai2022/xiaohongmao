.class final Lcom/im/freechat/ui/chatlist/ChatListFragment$c;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chatlist/ChatListFragment;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "chat",
        "",
        "a",
        "(Lcom/im/freechat/shared/entities/chat/Chat;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chatlist/ChatListFragment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chatlist/ChatListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/ChatListFragment$c;->a:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 7
    .param p1    # Lcom/im/freechat/shared/entities/chat/Chat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "chat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getChatId()I

    move-result v0

    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/ChatListFragment$c;->a:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    .line 2
    invoke-virtual {v1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->z0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->z()Z

    move-result v2

    .line 3
    invoke-static {v1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->s0(Lcom/im/freechat/ui/chatlist/ChatListFragment;)Lf4/l;

    move-result-object v3

    iget-object v3, v3, Lf4/l;->i:Landroidx/appcompat/widget/SearchView;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 4
    invoke-static {v1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->s0(Lcom/im/freechat/ui/chatlist/ChatListFragment;)Lf4/l;

    move-result-object v3

    iget-object v3, v3, Lf4/l;->i:Landroidx/appcompat/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 5
    sget-object v3, Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;->OPEN_CHAT:Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;

    new-array v4, v4, [Lkotlin/Pair;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "chatId"

    invoke-static {v6, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getLastChatMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    const-string p1, "KEY_SEARCHED_MESSAGE_ID"

    .line 8
    invoke-virtual {v0, p1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    invoke-virtual {v1, v3, v0}, Lcom/im/freechat/base/f;->c0(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/chat/Chat;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment$c;->a(Lcom/im/freechat/shared/entities/chat/Chat;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
