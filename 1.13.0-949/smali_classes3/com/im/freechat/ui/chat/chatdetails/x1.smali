.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/x1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/x1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/x1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;->j(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel;Ljava/lang/Object;)V

    return-void
.end method
