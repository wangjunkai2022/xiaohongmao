.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "BlacklistViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R#\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/c;",
        "",
        "userId",
        "",
        "u",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "e",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "t",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/d;",
        "f",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/d;",
        "getBlacklistedUsersUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/n;",
        "g",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/n;",
        "removeUserFromBlacklistUseCase",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;",
        "h",
        "Landroidx/lifecycle/MutableLiveData;",
        "s",
        "()Landroidx/lifecycle/MutableLiveData;",
        "list",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/user/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/n;)V",
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
.field private final e:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/qennnsad/aknkaksd/domain/usecase/user/d;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/qennnsad/aknkaksd/domain/usecase/user/n;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/user/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/n;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/domain/usecase/user/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/domain/usecase/user/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "sourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getBlacklistedUsersUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeUserFromBlacklistUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->e:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/user/d;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/user/n;

    .line 5
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;)V

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->h(Lcom/qennnsad/aknkaksd/domain/base/h;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j2;

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
            "Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final t()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->e:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object v0
.end method

.method public final u(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/user/n;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$b;

    invoke-direct {v2, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->h(Lcom/qennnsad/aknkaksd/domain/base/h;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j2;

    return-void
.end method
