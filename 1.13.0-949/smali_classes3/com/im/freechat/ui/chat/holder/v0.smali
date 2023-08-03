.class public final synthetic Lcom/im/freechat/ui/chat/holder/v0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/holder/w0;

.field public final synthetic b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/holder/w0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/v0;->a:Lcom/im/freechat/ui/chat/holder/w0;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/v0;->b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/v0;->a:Lcom/im/freechat/ui/chat/holder/w0;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/holder/v0;->b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chat/holder/w0;->z0(Lcom/im/freechat/ui/chat/holder/w0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)V

    return-void
.end method
