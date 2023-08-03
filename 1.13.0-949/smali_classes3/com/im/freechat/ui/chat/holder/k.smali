.class public final synthetic Lcom/im/freechat/ui/chat/holder/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/im/freechat/ui/chat/holder/BaseChatHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/k;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/k;->b:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/k;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/holder/k;->b:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->j(Landroid/widget/TextView;Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Landroid/view/View;)V

    return-void
.end method
