.class public final synthetic Lcom/im/freechat/ui/chatlist/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/im/freechat/ui/chatlist/ChatListFragment;


# direct methods
.method public synthetic constructor <init>(ZLcom/im/freechat/ui/chatlist/ChatListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/im/freechat/ui/chatlist/l;->a:Z

    iput-object p2, p0, Lcom/im/freechat/ui/chatlist/l;->b:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/im/freechat/ui/chatlist/l;->a:Z

    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/l;->b:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    invoke-static {v0, v1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->o0(ZLcom/im/freechat/ui/chatlist/ChatListFragment;)V

    return-void
.end method
