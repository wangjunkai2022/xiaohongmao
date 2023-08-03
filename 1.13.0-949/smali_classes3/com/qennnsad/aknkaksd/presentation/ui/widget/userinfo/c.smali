.class public abstract Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;
.super Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;
.source "Hilt_MysteryUserInfoDialog.java"

# interfaces
.implements Lq6/d;


# instance fields
.field private p:Landroid/content/ContextWrapper;

.field private q:Z

.field private volatile r:Ldagger/hilt/android/internal/managers/g;

.field private final s:Ljava/lang/Object;

.field private t:Z


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;ZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;-><init>(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;ZLkotlin/jvm/functions/Function1;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->s:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->t:Z

    return-void
.end method

.method private p0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->p:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/g;->b(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->p:Landroid/content/ContextWrapper;

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/flags/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->q:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic componentManager()Lq6/c;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->n0()Ldagger/hilt/android/internal/managers/g;

    move-result-object v0

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->n0()Ldagger/hilt/android/internal/managers/g;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/g;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->p0()V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->p:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/a;->b(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method public final n0()Ldagger/hilt/android/internal/managers/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->r:Ldagger/hilt/android/internal/managers/g;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->r:Ldagger/hilt/android/internal/managers/g;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->o0()Ldagger/hilt/android/internal/managers/g;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->r:Ldagger/hilt/android/internal/managers/g;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->r:Ldagger/hilt/android/internal/managers/g;

    return-object v0
.end method

.method protected o0()Ldagger/hilt/android/internal/managers/g;
    .locals 1

    new-instance v0, Ldagger/hilt/android/internal/managers/g;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/g;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->p:Landroid/content/ContextWrapper;

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->p0()V

    .line 7
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->q0()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->p0()V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->q0()V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

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
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->t:Z

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/c;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/g;

    invoke-static {p0}, Lq6/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/f;

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/g;->L(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/f;)V

    :cond_0
    return-void
.end method
