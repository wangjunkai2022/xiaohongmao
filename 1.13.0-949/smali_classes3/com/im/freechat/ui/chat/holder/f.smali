.class public final synthetic Lcom/im/freechat/ui/chat/holder/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

.field public final synthetic b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/f;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/f;->b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/f;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/holder/f;->b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->g(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
