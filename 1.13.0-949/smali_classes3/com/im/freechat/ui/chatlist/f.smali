.class public final synthetic Lcom/im/freechat/ui/chatlist/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chatlist/ChatListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chatlist/ChatListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/f;->a:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/f;->a:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->n0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Landroid/view/View;)V

    return-void
.end method
