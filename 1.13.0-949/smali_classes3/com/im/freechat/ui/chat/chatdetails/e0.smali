.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/e0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/e0;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/e0;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->B0(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Landroid/os/Bundle;)V

    return-void
.end method
