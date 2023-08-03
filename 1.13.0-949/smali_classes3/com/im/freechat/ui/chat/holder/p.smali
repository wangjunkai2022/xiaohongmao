.class public final synthetic Lcom/im/freechat/ui/chat/holder/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

.field public final synthetic b:Lcom/im/freechat/shared/entities/message/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/p;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/p;->b:Lcom/im/freechat/shared/entities/message/Message;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/p;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/holder/p;->b:Lcom/im/freechat/shared/entities/message/Message;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->e(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;Landroid/view/View;)V

    return-void
.end method
