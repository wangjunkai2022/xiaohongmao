.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/e1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/e1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iput p2, p0, Lcom/im/freechat/ui/chat/chatdetails/e1;->b:I

    iput-object p3, p0, Lcom/im/freechat/ui/chat/chatdetails/e1;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/e1;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iget v1, p0, Lcom/im/freechat/ui/chat/chatdetails/e1;->b:I

    iget-object v2, p0, Lcom/im/freechat/ui/chat/chatdetails/e1;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->m1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;ILjava/util/List;)V

    return-void
.end method
