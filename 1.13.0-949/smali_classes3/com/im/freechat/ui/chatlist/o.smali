.class public final synthetic Lcom/im/freechat/ui/chatlist/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

.field public final synthetic b:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/o;->a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    iput-object p2, p0, Lcom/im/freechat/ui/chatlist/o;->b:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/o;->a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    iget-object v1, p0, Lcom/im/freechat/ui/chatlist/o;->b:Landroidx/lifecycle/MediatorLiveData;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->k(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)V

    return-void
.end method
