.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "ModifyPasswordViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n;",
        "",
        "old",
        "new",
        "",
        "s",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/k;",
        "e",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/k;",
        "modifyPasswordUseCase",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/domain/usecase/user/k;)V",
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
.field private final e:Lcom/qennnsad/aknkaksd/domain/usecase/user/k;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/k;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/user/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "modifyPasswordUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/user/k;

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "old"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "new"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/user/k;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/domain/usecase/user/k$a;

    invoke-direct {v2, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/user/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel$a;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;)V

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->h(Lcom/qennnsad/aknkaksd/domain/base/h;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j2;

    return-void
.end method
