.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/l1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/l1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/l1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$l;->a(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V

    return-void
.end method
