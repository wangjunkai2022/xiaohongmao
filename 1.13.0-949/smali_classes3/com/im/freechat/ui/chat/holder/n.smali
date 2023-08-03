.class public final synthetic Lcom/im/freechat/ui/chat/holder/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/n;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    iput p2, p0, Lcom/im/freechat/ui/chat/holder/n;->b:I

    iput-object p3, p0, Lcom/im/freechat/ui/chat/holder/n;->c:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/n;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    iget v1, p0, Lcom/im/freechat/ui/chat/holder/n;->b:I

    iget-object v2, p0, Lcom/im/freechat/ui/chat/holder/n;->c:Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->h(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/lang/Long;Landroid/view/View;)V

    return-void
.end method
