.class final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider$a;
.super Lkotlin/jvm/internal/Lambda;
.source "ChatListViewModelProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;-><init>(Lcom/im/freechat/sdk/d;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatListViewModelProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatListViewModelProvider.kt\ncom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider$viewModel$2\n+ 2 UiManager.kt\ncom/im/freechat/sdk/UiManager\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 Scope.kt\norg/koin/core/scope/Scope\n+ 5 Koin.kt\norg/koin/core/Koin\n*L\n1#1,15:1\n42#2:16\n41#3,6:17\n47#3:24\n131#4:23\n103#5:25\n*S KotlinDebug\n*F\n+ 1 ChatListViewModelProvider.kt\ncom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider$viewModel$2\n*L\n14#1:16\n14#1:17,6\n14#1:24\n14#1:23\n14#1:25\n*E\n"
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/im/freechat/ui/chatlist/ChatListViewModel;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    .line 1
    const-class v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;->a(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;)Lcom/im/freechat/sdk/d;

    move-result-object v1

    .line 2
    instance-of v2, v1, Lorg/koin/core/component/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lorg/koin/core/component/b;

    invoke-interface {v1}, Lorg/koin/core/component/b;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Lorg/koin/core/component/a;->getKoin()Lorg/koin/core/Koin;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 6
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/ViewModel;

    .line 8
    check-cast v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider$a;->a()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v0

    return-object v0
.end method
