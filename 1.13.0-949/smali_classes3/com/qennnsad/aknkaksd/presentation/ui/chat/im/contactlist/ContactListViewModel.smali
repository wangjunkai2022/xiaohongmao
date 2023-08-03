.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "ContactListViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/e;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR#\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/e;",
        "",
        "userId",
        "Lkotlinx/coroutines/j2;",
        "t",
        "Lcom/im/freechat/sdk/a;",
        "e",
        "Lcom/im/freechat/sdk/a;",
        "dataManager",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "u",
        "()Landroidx/lifecycle/MutableLiveData;",
        "contacts",
        "<init>",
        "(Lcom/im/freechat/sdk/a;)V",
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
.field private final e:Lcom/im/freechat/sdk/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/sdk/a;)V
    .locals 6
    .param p1    # Lcom/im/freechat/sdk/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "dataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;->e:Lcom/im/freechat/sdk/a;

    .line 3
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 4
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/s0;

    move-result-object v0

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public static final synthetic s(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;)Lcom/im/freechat/sdk/a;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;->e:Lcom/im/freechat/sdk/a;

    return-object p0
.end method


# virtual methods
.method public final t(I)Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel$b;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final u()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
