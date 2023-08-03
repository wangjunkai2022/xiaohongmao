.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "FollowersViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008/\u00100R\u0017\u0010\u0008\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001f\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR#\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u001d0\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R%\u0010*\u001a\u0010\u0012\u000c\u0012\n %*\u0004\u0018\u00010\u00110\u00110$8\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\u00a8\u00061"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/c;",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "e",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "y",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;",
        "f",
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;",
        "getPageListForFollowersUseCase",
        "",
        "g",
        "Ljava/lang/String;",
        "userId",
        "",
        "h",
        "Z",
        "isFollowees",
        "Lkotlinx/coroutines/flow/t;",
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "i",
        "Lkotlinx/coroutines/flow/t;",
        "v",
        "()Lkotlinx/coroutines/flow/t;",
        "currentUser",
        "Lkotlinx/coroutines/flow/i;",
        "Landroidx/paging/PagingData;",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "j",
        "Lkotlinx/coroutines/flow/i;",
        "w",
        "()Lkotlinx/coroutines/flow/i;",
        "displayList",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "k",
        "Landroidx/lifecycle/MutableLiveData;",
        "x",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingPaging",
        "Landroidx/lifecycle/SavedStateHandle;",
        "state",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;)V",
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

.field private final f:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Z

.field private final i:Lkotlinx/coroutines/flow/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/t<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Landroidx/lifecycle/MutableLiveData;
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


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "state"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getPageListForFollowersUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->e:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 4
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;

    const-string p3, "user_id"

    .line 5
    invoke-virtual {p1, p3}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->g:Ljava/lang/String;

    const-string p3, "is_followees"

    .line 6
    invoke-virtual {p1, p3}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->h:Z

    .line 7
    iget-object p1, p2, Lg5/a;->g:Lkotlinx/coroutines/flow/t;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->i:Lkotlinx/coroutines/flow/t;

    .line 8
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel$a;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;)V

    const/16 p2, 0x32

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/util/u;->a(Lkotlin/jvm/functions/Function0;I)Landroidx/paging/Pager;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/paging/Pager;->getFlow()Lkotlinx/coroutines/flow/i;

    move-result-object p1

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/s0;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/paging/CachedPagingDataKt;->cachedIn(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/s0;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->j:Lkotlinx/coroutines/flow/i;

    .line 10
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "User ID cant be null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic s(Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;

    return-object p0
.end method

.method public static final synthetic t(Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic u(Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->h:Z

    return p0
.end method


# virtual methods
.method public final v()Lkotlinx/coroutines/flow/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/t<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->i:Lkotlinx/coroutines/flow/t;

    return-object v0
.end method

.method public final w()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/PagingData<",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->j:Lkotlinx/coroutines/flow/i;

    return-object v0
.end method

.method public final x()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final y()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;->e:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object v0
.end method
