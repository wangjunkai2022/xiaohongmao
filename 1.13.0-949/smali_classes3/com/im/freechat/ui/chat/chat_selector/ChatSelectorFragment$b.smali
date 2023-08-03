.class final Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$b;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatSelectorFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[J>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0016\n\u0002\u0008\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()[J"
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

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$b;->a:Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()[J
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$b;->a:Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "forwardedMessageIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$b;->a()[J

    move-result-object v0

    return-object v0
.end method
