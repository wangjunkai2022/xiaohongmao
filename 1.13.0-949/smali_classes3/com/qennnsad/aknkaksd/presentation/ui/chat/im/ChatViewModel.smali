.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "ChatViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/d;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR#\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/d;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "s",
        "()Landroidx/lifecycle/MutableLiveData;",
        "requests",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation build Ll6/a;
.end annotation


# instance fields
.field private final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Lu7/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    return-void
.end method


# virtual methods
.method public final s()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/FriendStatus;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
