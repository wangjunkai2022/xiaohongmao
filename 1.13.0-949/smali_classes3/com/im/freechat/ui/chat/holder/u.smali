.class public final synthetic Lcom/im/freechat/ui/chat/holder/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/holder/v;

.field public final synthetic b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/holder/v;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/u;->a:Lcom/im/freechat/ui/chat/holder/v;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/u;->b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/u;->a:Lcom/im/freechat/ui/chat/holder/v;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/holder/u;->b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chat/holder/v;->y0(Lcom/im/freechat/ui/chat/holder/v;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V

    return-void
.end method
