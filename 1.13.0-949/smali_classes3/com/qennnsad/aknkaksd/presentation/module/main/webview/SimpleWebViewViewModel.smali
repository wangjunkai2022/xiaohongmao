.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "SimpleWebViewViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tR\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/h;",
        "",
        "id",
        "Lkotlinx/coroutines/j2;",
        "v",
        "",
        "w",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;",
        "peerage",
        "y",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "e",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "x",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;",
        "f",
        "Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;",
        "checkIfAbleToCreateChatUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;",
        "g",
        "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;",
        "prepareSvgaUseCase",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;)V",
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

.field private final f:Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "sourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkIfAbleToCreateChatUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepareSvgaUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;->e:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;

    return-void
.end method

.method public static final synthetic s(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;I)Lkotlinx/coroutines/j2;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;->v(I)Lkotlinx/coroutines/j2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;

    return-object p0
.end method

.method public static final synthetic u(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;

    return-object p0
.end method

.method private final v(I)Lkotlinx/coroutines/j2;
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$a;-><init>(ILcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final w(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final x()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;->e:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object v0
.end method

.method public final y(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;)Lkotlinx/coroutines/j2;
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "peerage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method
