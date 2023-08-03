.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "MallViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/b;",
        "",
        "id",
        "Lkotlinx/coroutines/j2;",
        "u",
        "",
        "v",
        "Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;",
        "e",
        "Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;",
        "checkIfAbleToCreateChatUseCase",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;)V",
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
.field private final e:Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "checkIfAbleToCreateChatUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;

    return-void
.end method

.method public static final synthetic s(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;I)Lkotlinx/coroutines/j2;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;->u(I)Lkotlinx/coroutines/j2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;

    return-object p0
.end method

.method private final u(I)Lkotlinx/coroutines/j2;
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$a;-><init>(ILcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final v(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
