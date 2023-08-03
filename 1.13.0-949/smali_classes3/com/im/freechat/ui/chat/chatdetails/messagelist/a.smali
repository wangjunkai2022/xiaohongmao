.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/messagelist/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

.field public final synthetic b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/a;->a:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/a;->b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/a;->a:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/a;->b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->d(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Landroid/view/View;)V

    return-void
.end method
