.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "SettingsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0016\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0007R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v;",
        "",
        "name",
        "",
        "enabled",
        "",
        "t",
        "isSubscribe",
        "u",
        "s",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;",
        "e",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;",
        "updateSettingUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;",
        "f",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;",
        "updateSubscribeNotificationsUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;",
        "g",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;",
        "logoutUseCase",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;)V",
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
.field private final e:Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "updateSettingUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateSubscribeNotificationsUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoutUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;

    return-void
.end method


# virtual methods
.method public final s()V
    .locals 4

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel$a;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/common/l;->h(Lcom/qennnsad/aknkaksd/domain/base/h;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final t(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/qennnsad/aknkaksd/domain/usecase/user/k1$a;

    invoke-direct {v2, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/user/k1$a;-><init>(Ljava/lang/String;Z)V

    .line 4
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel$b;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;)V

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->h(Lcom/qennnsad/aknkaksd/domain/base/h;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final u(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel$c;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->h(Lcom/qennnsad/aknkaksd/domain/base/h;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j2;

    return-void
.end method
