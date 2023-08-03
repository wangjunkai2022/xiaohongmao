.class public final Ldagger/hilt/android/internal/managers/ViewComponentManager;
.super Ljava/lang/Object;
.source "ViewComponentManager.java"

# interfaces
.implements Lq6/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;,
        Ldagger/hilt/android/internal/managers/ViewComponentManager$a;,
        Ldagger/hilt/android/internal/managers/ViewComponentManager$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private final c:Z

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "hasFragmentBindings"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->d:Landroid/view/View;

    .line 4
    iput-boolean p2, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->c:Z

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ldagger/hilt/android/internal/managers/ViewComponentManager;->b(Z)Lq6/c;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->c:Z

    if-eqz v1, :cond_0

    .line 3
    const-class v1, Ldagger/hilt/android/internal/managers/ViewComponentManager$b;

    invoke-static {v0, v1}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/hilt/android/internal/managers/ViewComponentManager$b;

    .line 4
    invoke-interface {v0}, Ldagger/hilt/android/internal/managers/ViewComponentManager$b;->g()Lh6/g;

    move-result-object v0

    iget-object v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->d:Landroid/view/View;

    .line 5
    invoke-interface {v0, v1}, Lh6/g;->a(Landroid/view/View;)Lh6/g;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lh6/g;->build()Lf6/g;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    const-class v1, Ldagger/hilt/android/internal/managers/ViewComponentManager$a;

    invoke-static {v0, v1}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/hilt/android/internal/managers/ViewComponentManager$a;

    .line 8
    invoke-interface {v0}, Ldagger/hilt/android/internal/managers/ViewComponentManager$a;->f()Lh6/e;

    move-result-object v0

    iget-object v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->d:Landroid/view/View;

    .line 9
    invoke-interface {v0, v1}, Lh6/e;->a(Landroid/view/View;)Lh6/e;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Lh6/e;->build()Lf6/e;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Lq6/c;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowMissing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lq6/c<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lq6/c;

    iget-boolean v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->c:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 2
    const-class v1, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;

    invoke-direct {p0, v1, p1}, Ldagger/hilt/android/internal/managers/ViewComponentManager;->c(Ljava/lang/Class;Z)Landroid/content/Context;

    move-result-object v1

    .line 3
    instance-of v5, v1, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;

    if-eqz v5, :cond_0

    .line 4
    check-cast v1, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;

    .line 5
    invoke-virtual {v1}, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;->d()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lq6/c;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    return-object v2

    .line 6
    :cond_1
    invoke-direct {p0, v0, p1}, Ldagger/hilt/android/internal/managers/ViewComponentManager;->c(Ljava/lang/Class;Z)Landroid/content/Context;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lq6/c;

    xor-int/2addr v0, v4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->d:Landroid/view/View;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "%s, @WithFragmentBindings Hilt view must be attached to an @AndroidEntryPoint Fragment. Was attached to context %s"

    .line 10
    invoke-static {v0, p1, v1}, Lq6/f;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0, v0, p1}, Ldagger/hilt/android/internal/managers/ViewComponentManager;->c(Ljava/lang/Class;Z)Landroid/content/Context;

    move-result-object v0

    .line 12
    instance-of v1, v0, Lq6/c;

    if-eqz v1, :cond_3

    .line 13
    check-cast v0, Lq6/c;

    return-object v0

    :cond_3
    if-eqz p1, :cond_4

    return-object v2

    .line 14
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->d:Landroid/view/View;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%s, Hilt view must be attached to an @AndroidEntryPoint Fragment or Activity."

    .line 16
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Ljava/lang/Class;Z)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parentType",
            "allowMissing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroid/content/Context;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ldagger/hilt/android/internal/managers/ViewComponentManager;->e(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg6/a;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->d:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%s, Hilt view cannot be created using the application context. Use a Hilt Fragment or Activity context."

    .line 5
    invoke-static {p2, v0, p1}, Lq6/f;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private static e(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Context;"
        }
    .end annotation

    .line 1
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public d()Lq6/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq6/c<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldagger/hilt/android/internal/managers/ViewComponentManager;->b(Z)Lq6/c;

    move-result-object v0

    return-object v0
.end method

.method public generatedComponent()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Ldagger/hilt/android/internal/managers/ViewComponentManager;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->a:Ljava/lang/Object;

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
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->a:Ljava/lang/Object;

    return-object v0
.end method
