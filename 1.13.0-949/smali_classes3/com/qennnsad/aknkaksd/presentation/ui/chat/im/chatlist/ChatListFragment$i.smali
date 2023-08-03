.class final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$i;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/im/freechat/ui/chatlist/ChatListViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/im/freechat/ui/chatlist/ChatListViewModel;",
        "a",
        "()Lcom/im/freechat/ui/chatlist/ChatListViewModel;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$i;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/im/freechat/ui/chatlist/ChatListViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$i;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->j0()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;->b()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$i;->a()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v0

    return-object v0
.end method
