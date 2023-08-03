.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/g1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

.field public final synthetic b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/g1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/g1;->b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/g1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/g1;->b:Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    invoke-static {v0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->t0(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    return-void
.end method
