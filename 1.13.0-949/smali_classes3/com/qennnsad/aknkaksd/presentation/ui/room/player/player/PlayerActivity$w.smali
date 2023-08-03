.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$w;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P6(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;",
        "hotAnchorSummary",
        "",
        "b",
        "(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$w;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$w;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V

    return-void
.end method

.method private static final c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$hotAnchorSummary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e3:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;

    .line 2
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->Hot:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    .line 3
    invoke-virtual {v0, p0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;->c(Landroid/content/Context;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V
    .locals 5
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "hotAnchorSummary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$w;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->j4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$w;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C2()V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$w;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->c4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$w;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/n1;

    invoke-direct {v2, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/n1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$w;->b(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
