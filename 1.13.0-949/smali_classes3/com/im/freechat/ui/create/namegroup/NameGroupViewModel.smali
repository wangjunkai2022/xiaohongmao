.class public final Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;
.super Lcom/im/freechat/base/a;
.source "NameGroupViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/a<",
        "Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008)\u0010*J\u0014\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R(\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R%\u0010\"\u001a\u0010\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010\u001c0\u001c0\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001d\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001f\u001a\u0004\u0008$\u0010!R#\u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001f\u001a\u0004\u0008\'\u0010!\u00a8\u0006,"
    }
    d2 = {
        "Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;",
        "Lcom/im/freechat/base/a;",
        "Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;",
        "",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "members",
        "Lkotlinx/coroutines/j2;",
        "p",
        "",
        "name",
        "",
        "k",
        "Lcom/im/freechat/domain/usecase/chat/b;",
        "c",
        "Lcom/im/freechat/domain/usecase/chat/b;",
        "createGroupChatInteractor",
        "Lcom/im/freechat/domain/usecase/currentuser/a;",
        "d",
        "Lcom/im/freechat/domain/usecase/currentuser/a;",
        "getCurrentUserInteractor",
        "e",
        "Ljava/util/List;",
        "o",
        "()Ljava/util/List;",
        "q",
        "(Ljava/util/List;)V",
        "originalMembers",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "m",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loading",
        "g",
        "l",
        "avatar",
        "h",
        "n",
        "memberList",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/chat/b;Lcom/im/freechat/domain/usecase/currentuser/a;)V",
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
.field private final c:Lcom/im/freechat/domain/usecase/chat/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/usecase/currentuser/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/MutableLiveData;
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
.method public constructor <init>(Lcom/im/freechat/domain/usecase/chat/b;Lcom/im/freechat/domain/usecase/currentuser/a;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/usecase/chat/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/usecase/currentuser/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "createGroupChatInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCurrentUserInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->c:Lcom/im/freechat/domain/usecase/chat/b;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->d:Lcom/im/freechat/domain/usecase/currentuser/a;

    .line 4
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic i(Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;)Lcom/im/freechat/domain/usecase/chat/b;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->c:Lcom/im/freechat/domain/usecase/chat/b;

    return-object p0
.end method

.method public static final synthetic j(Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;)Lcom/im/freechat/domain/usecase/currentuser/a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->d:Lcom/im/freechat/domain/usecase/currentuser/a;

    return-object p0
.end method


# virtual methods
.method public final k(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$a;-><init>(Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final l()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "originalMembers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final p(Ljava/util/List;)Lkotlinx/coroutines/j2;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;)",
            "Lkotlinx/coroutines/j2;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "members"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$b;-><init>(Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->e:Ljava/util/List;

    return-void
.end method
