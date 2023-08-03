.class final Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$c;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatSelectorFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->Z()V
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
.field final synthetic a:Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$c;->a:Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 5
    .param p1    # Lcom/im/freechat/shared/entities/chat/Chat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "chat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getChatId()I

    move-result p1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$c;->a:Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;

    .line 2
    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->q0()Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;->CHAT:Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Pair;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "chatId"

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 5
    invoke-static {v0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->m0(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;)[J

    move-result-object p1

    const-string v4, "forwardedMessageIds"

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 6
    invoke-static {v0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->l0(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "forwardedFromChatId"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v3, v0

    .line 7
    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-virtual {v1, v2, p1}, Lcom/im/freechat/base/a;->e(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/chat/Chat;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$c;->a(Lcom/im/freechat/shared/entities/chat/Chat;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
