.class public final Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;
.super Lcom/qennnsad/aknkaksd/presentation/ui/Hilt_MainContainerActivity;
.source "MainContainerActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;,
        Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/Hilt_MainContainerActivity<",
        "Le5/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014J\u0008\u0010\u000e\u001a\u00020\u0003H\u0014J\u0008\u0010\u000f\u001a\u00020\u0003H\u0014R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;",
        "Le5/h;",
        "",
        "p0",
        "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;",
        "limitBean",
        "o0",
        "Landroid/view/LayoutInflater;",
        "layoutInflater",
        "n0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "onResume",
        "onDestroy",
        "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;",
        "k",
        "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;",
        "wsService",
        "Landroid/content/ServiceConnection;",
        "l",
        "Landroid/content/ServiceConnection;",
        "wsConnection",
        "<init>",
        "()V",
        "m",
        "a",
        "b",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final m:Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private k:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final l:Landroid/content/ServiceConnection;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->m:Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/Hilt_MainContainerActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$d;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->l:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic j0(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->q0(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;)V

    return-void
.end method

.method public static final synthetic k0(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->o0(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    return-void
.end method

.method public static final synthetic l0(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->p0()V

    return-void
.end method

.method public static final synthetic m0(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->k:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    return-void
.end method

.method private final o0(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getAnchor()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->setAvatar(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getSnap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->setSnap(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getCurroomnum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;->setCurrentRoomNum(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getIdX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->setId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->setNickname(Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e3:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;

    .line 9
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lz4/a;->d(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    move-result-object v1

    .line 10
    invoke-virtual {p1, p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;->b(Landroid/app/Activity;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V

    :cond_0
    return-void
.end method

.method private final p0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->k:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/a;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;)V

    const-string v2, "popup"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 4
    sget-object v1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Window Popup Listener registered."

    invoke-virtual {v1, v3, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {p0, v0}, Lcom/qennnsad/aknkaksd/util/l;->C(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)V

    :cond_0
    return-void
.end method

.method private static final q0(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$c;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;)V

    invoke-virtual {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->d0(Lcom/qennnsad/aknkaksd/data/bean/websocket/PopupWindowMsg;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final r0(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->m:Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static final s0(Landroid/content/Context;Z)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->m:Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;

    invoke-virtual {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;->b(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic I(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->n0(Landroid/view/LayoutInflater;)Le5/h;

    move-result-object p1

    return-object p1
.end method

.method public n0(Landroid/view/LayoutInflater;)Le5/h;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le5/h;->c(Landroid/view/LayoutInflater;)Le5/h;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->q(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->l:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a04bc

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/navigation/fragment/NavHostFragment;

    .line 4
    invoke-virtual {p1}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->b0(Landroidx/navigation/NavController;)V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->S()V

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->P()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->F()Lg5/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/l;->t(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Lg5/a;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->k:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->E()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->l:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->k:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->p0()V

    return-void
.end method
