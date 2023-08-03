.class public abstract Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;
.super Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;
.source "Hilt_PeerageUserInfoDialog.java"


# instance fields
.field private W:Landroid/content/ContextWrapper;

.field private b1:Z

.field private g1:Z


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;ZZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;",
            "ZZZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;-><init>(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;ZZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->g1:Z

    return-void
.end method

.method private p0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->W:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/g;->b(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->W:Landroid/content/ContextWrapper;

    .line 3
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/flags/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->b1:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/e;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->b1:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->p0()V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->W:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/e;->onAttach(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->W:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ldagger/hilt/android/internal/managers/g;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "onAttach called multiple times with different Context! Hilt Fragments should not be retained."

    invoke-static {p1, v1, v0}, Lq6/f;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->p0()V

    .line 7
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->q0()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/e;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->p0()V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->q0()V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/e;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 2
    invoke-static {p1, p0}, Ldagger/hilt/android/internal/managers/g;->c(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method protected q0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->g1:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/d;->g1:Z

    .line 3
    invoke-static {p0}, Lq6/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq6/d;

    invoke-interface {v0}, Lq6/c;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/i;

    invoke-static {p0}, Lq6/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/h;

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/i;->l(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/h;)V

    :cond_0
    return-void
.end method
