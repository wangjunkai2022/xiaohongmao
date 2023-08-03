.class public final synthetic Lcom/im/freechat/ui/chatlist/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chatlist/ChatListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chatlist/ChatListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/g;->a:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/g;->a:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    check-cast p1, Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->q0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;)V

    return-void
.end method
