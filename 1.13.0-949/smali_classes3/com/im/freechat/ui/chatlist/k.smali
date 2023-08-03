.class public final synthetic Lcom/im/freechat/ui/chatlist/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/bigkoo/convenientbanner/listener/OnItemClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/im/freechat/ui/chatlist/ChatListFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/im/freechat/ui/chatlist/ChatListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/k;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/im/freechat/ui/chatlist/k;->b:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/k;->b:Lcom/im/freechat/ui/chatlist/ChatListFragment;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->k0(Ljava/util/List;Lcom/im/freechat/ui/chatlist/ChatListFragment;I)V

    return-void
.end method
