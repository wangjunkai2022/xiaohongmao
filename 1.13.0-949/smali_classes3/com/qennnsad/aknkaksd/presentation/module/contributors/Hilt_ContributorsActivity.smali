.class public abstract Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Hilt_ContributorsActivity.java"

# interfaces
.implements Lq6/d;


# instance fields
.field private volatile a:Ldagger/hilt/android/internal/managers/a;

.field private final b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->c:Z

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->G()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->c:Z

    .line 8
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->G()V

    return-void
.end method

.method private G()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method


# virtual methods
.method public final H()Ldagger/hilt/android/internal/managers/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->a:Ldagger/hilt/android/internal/managers/a;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->a:Ldagger/hilt/android/internal/managers/a;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->I()Ldagger/hilt/android/internal/managers/a;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->a:Ldagger/hilt/android/internal/managers/a;

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
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->a:Ldagger/hilt/android/internal/managers/a;

    return-object v0
.end method

.method protected I()Ldagger/hilt/android/internal/managers/a;
    .locals 1

    new-instance v0, Ldagger/hilt/android/internal/managers/a;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected J()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->c:Z

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/b;

    invoke-static {p0}, Lq6/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsActivity;

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/b;->e(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic componentManager()Lq6/c;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->H()Ldagger/hilt/android/internal/managers/a;

    move-result-object v0

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/Hilt_ContributorsActivity;->H()Ldagger/hilt/android/internal/managers/a;

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
