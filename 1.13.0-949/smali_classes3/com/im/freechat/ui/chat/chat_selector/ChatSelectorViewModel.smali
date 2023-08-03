.class public final Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;
.super Lcom/im/freechat/base/a;
.source "ChatSelectorViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/a<",
        "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u000f\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u0010\u0008\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R#\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;",
        "Lcom/im/freechat/base/a;",
        "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;",
        "Lkotlinx/coroutines/j2;",
        "k",
        "Lcom/im/freechat/domain/usecase/chat/h;",
        "c",
        "Lcom/im/freechat/domain/usecase/chat/h;",
        "listenChatsInteractor",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "j",
        "()Landroidx/lifecycle/MutableLiveData;",
        "chatList",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/chat/h;)V",
        "Directions",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final c:Lcom/im/freechat/domain/usecase/chat/h;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/chat/h;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/usecase/chat/h;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "listenChatsInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;->c:Lcom/im/freechat/domain/usecase/chat/h;

    .line 3
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic i(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;)Lcom/im/freechat/domain/usecase/chat/h;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;->c:Lcom/im/freechat/domain/usecase/chat/h;

    return-object p0
.end method


# virtual methods
.method public final j()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final k()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$a;-><init>(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method
