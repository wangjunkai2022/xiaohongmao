.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/m1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

.field public final synthetic c:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/m1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/m1;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iput-object p3, p0, Lcom/im/freechat/ui/chat/chatdetails/m1;->c:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/m1;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/m1;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iget-object v2, p0, Lcom/im/freechat/ui/chat/chatdetails/m1;->c:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$p;->a(Ljava/util/List;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/content/DialogInterface;I)V

    return-void
.end method
