.class public final synthetic Lcom/im/freechat/ui/chatlist/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/m;->a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/m;->a:Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->i(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
