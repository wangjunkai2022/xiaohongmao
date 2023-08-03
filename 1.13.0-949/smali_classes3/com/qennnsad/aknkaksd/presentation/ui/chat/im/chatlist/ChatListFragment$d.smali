.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$d;
.super Ljava/lang/Object;
.source "ChatListFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$d",
        "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;",
        "",
        "query",
        "",
        "onQueryTextSubmit",
        "newText",
        "onQueryTextChange",
        "a",
        "Ljava/lang/String;",
        "prevQuery",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$d;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->d0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->x()V

    :cond_4
    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->d0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->I(Ljava/lang/String;)Lkotlinx/coroutines/j2;

    :cond_2
    return v0
.end method
