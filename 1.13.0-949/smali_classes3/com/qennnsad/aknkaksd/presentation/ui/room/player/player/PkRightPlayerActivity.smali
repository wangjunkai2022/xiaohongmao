.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PkRightPlayerActivity;
.source "PkRightPlayerActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\"\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\u000b\u001a\u00020\tH\u0014J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000cH\u0016J\u0008\u0010\u0012\u001a\u00020\tH\u0014J\u0010\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0002H\u0014J\u0012\u0010\u0017\u001a\u00020\t2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0002H\u0014R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;",
        "",
        "E5",
        "Landroid/content/Intent;",
        "intent",
        "isFromNewIntent",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "C0",
        "onPause",
        "",
        "currentPosition",
        "k",
        "j",
        "newPosition",
        "w",
        "H6",
        "byCloseButton",
        "G4",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "info",
        "h5",
        "bySwipe",
        "F5",
        "k3",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "userInfo",
        "l3",
        "Z",
        "finishingBySwipe",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private k3:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private l3:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PkRightPlayerActivity;-><init>()V

    return-void
.end method

.method public static synthetic t7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;->w7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;->v7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final v7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;->F5(Z)V

    return-void
.end method

.method private static final w7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;->COMMON:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P6(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;Z)V

    return-void
.end method


# virtual methods
.method protected C0(Landroid/content/Intent;ZLandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->C0(Landroid/content/Intent;ZLandroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected E5()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected F5(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;->l3:Z

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C2()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->y:Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;->k3:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->Hot:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    invoke-virtual {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V6(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;->k3:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lb5/a;->p(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e3:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;

    .line 9
    sget-object v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->Hot:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    .line 10
    invoke-virtual {v1, p0, v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;->a(Landroid/content/Context;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_PK_FINISHED_ON_THE_RIGHT"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected G4(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->G4(Z)V

    return-void
.end method

.method protected H6()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H6()V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->p7()V

    return-void
.end method

.method protected h5(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 6
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;->k3:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    const v0, 0x7f0a03f2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a036e

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.facebook.drawee.view.SimpleDraweeView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v4

    const-string v5, "info!!.avatar"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v4}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    const v2, 0x7f0a076c

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 9
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 13
    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/d;

    invoke-direct {v4, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01a9

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-static {p1}, Lb5/a;->p(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->J0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public j(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->onPause()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;->l3:Z

    if-eqz v0, :cond_0

    const v0, 0x7f010025

    const v1, 0x7f010026

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const v0, 0x7f010023

    const v1, 0x7f010024

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public w(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Jump to left"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;->F5(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->w(I)V

    :goto_0
    return-void
.end method
