.class public final Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;
.super Lcom/im/freechat/base/a;
.source "ChooseChatTypeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/a<",
        "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u0010\u0008\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR1\u0010\u0015\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000f \u0010*\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e0\u000e0\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0018\u0010\u0014\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;",
        "Lcom/im/freechat/base/a;",
        "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;",
        "Lkotlinx/coroutines/j2;",
        "m",
        "Lcom/im/freechat/domain/usecase/chat/g;",
        "c",
        "Lcom/im/freechat/domain/usecase/chat/g;",
        "listenAllChatsInteractor",
        "Lcom/im/freechat/domain/usecase/currentuser/a;",
        "d",
        "Lcom/im/freechat/domain/usecase/currentuser/a;",
        "getCurrentUserInteractor",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "kotlin.jvm.PlatformType",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "k",
        "()Landroidx/lifecycle/MutableLiveData;",
        "chatList",
        "Lcom/im/freechat/shared/entities/auth/UserInfo;",
        "f",
        "l",
        "currentUser",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/chat/g;Lcom/im/freechat/domain/usecase/currentuser/a;)V",
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
.field private final c:Lcom/im/freechat/domain/usecase/chat/g;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/usecase/currentuser/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/MutableLiveData;
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

.field private final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/auth/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/chat/g;Lcom/im/freechat/domain/usecase/currentuser/a;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/usecase/chat/g;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/usecase/currentuser/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "listenAllChatsInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCurrentUserInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->c:Lcom/im/freechat/domain/usecase/chat/g;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->d:Lcom/im/freechat/domain/usecase/currentuser/a;

    .line 4
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic i(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;)Lcom/im/freechat/domain/usecase/currentuser/a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->d:Lcom/im/freechat/domain/usecase/currentuser/a;

    return-object p0
.end method

.method public static final synthetic j(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;)Lcom/im/freechat/domain/usecase/chat/g;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->c:Lcom/im/freechat/domain/usecase/chat/g;

    return-object p0
.end method


# virtual methods
.method public final k()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final l()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/auth/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final m()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$a;-><init>(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method
