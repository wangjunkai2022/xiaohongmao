.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/f1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

.field public final synthetic b:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/f1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/f1;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/f1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/f1;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->M0(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
