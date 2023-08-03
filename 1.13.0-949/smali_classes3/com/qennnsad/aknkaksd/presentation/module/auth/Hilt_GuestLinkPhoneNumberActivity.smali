.class public abstract Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;
.super Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;
.source "Hilt_GuestLinkPhoneNumberActivity.java"

# interfaces
.implements Lq6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity<",
        "TVB;>;",
        "Lq6/d;"
    }
.end annotation


# instance fields
.field private volatile h:Ldagger/hilt/android/internal/managers/a;

.field private final i:Ljava/lang/Object;

.field private j:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->j:Z

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->f0()V

    return-void
.end method

.method private f0()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic componentManager()Lq6/c;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->g0()Ldagger/hilt/android/internal/managers/a;

    move-result-object v0

    return-object v0
.end method

.method public final g0()Ldagger/hilt/android/internal/managers/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->h:Ldagger/hilt/android/internal/managers/a;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->h:Ldagger/hilt/android/internal/managers/a;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->h0()Ldagger/hilt/android/internal/managers/a;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->h:Ldagger/hilt/android/internal/managers/a;

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
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->h:Ldagger/hilt/android/internal/managers/a;

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->g0()Ldagger/hilt/android/internal/managers/a;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/a;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/a;->a(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method protected h0()Ldagger/hilt/android/internal/managers/a;
    .locals 1

    new-instance v0, Ldagger/hilt/android/internal/managers/a;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected i0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->j:Z

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/c;

    invoke-static {p0}, Lq6/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity;

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/c;->j(Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity;)V

    :cond_0
    return-void
.end method
