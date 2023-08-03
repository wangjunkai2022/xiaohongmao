.class final Ldagger/hilt/android/internal/managers/b;
.super Ljava/lang/Object;
.source "ActivityRetainedComponentManager.java"

# interfaces
.implements Lq6/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/hilt/android/internal/managers/b$f;,
        Ldagger/hilt/android/internal/managers/b$e;,
        Ldagger/hilt/android/internal/managers/b$c;,
        Ldagger/hilt/android/internal/managers/b$d;,
        Ldagger/hilt/android/internal/managers/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/c<",
        "Lf6/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/ViewModelProvider;

.field private volatile b:Lf6/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldagger/hilt/android/internal/managers/b;->c:Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1, p1}, Ldagger/hilt/android/internal/managers/b;->c(Landroidx/lifecycle/ViewModelStoreOwner;Landroid/content/Context;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    iput-object p1, p0, Ldagger/hilt/android/internal/managers/b;->a:Landroidx/lifecycle/ViewModelProvider;

    return-void
.end method

.method private a()Lf6/b;
    .locals 2

    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b;->a:Landroidx/lifecycle/ViewModelProvider;

    const-class v1, Ldagger/hilt/android/internal/managers/b$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Ldagger/hilt/android/internal/managers/b$c;

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/b$c;->a()Lf6/b;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroidx/lifecycle/ViewModelStoreOwner;Landroid/content/Context;)Landroidx/lifecycle/ViewModelProvider;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "context"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Ldagger/hilt/android/internal/managers/b$a;

    invoke-direct {v1, p0, p2}, Ldagger/hilt/android/internal/managers/b$a;-><init>(Ldagger/hilt/android/internal/managers/b;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method


# virtual methods
.method public b()Lf6/b;
    .locals 2

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b;->b:Lf6/b;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Ldagger/hilt/android/internal/managers/b;->b:Lf6/b;

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Ldagger/hilt/android/internal/managers/b;->a()Lf6/b;

    move-result-object v1

    iput-object v1, p0, Ldagger/hilt/android/internal/managers/b;->b:Lf6/b;

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
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b;->b:Lf6/b;

    return-object v0
.end method

.method public bridge synthetic generatedComponent()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/b;->b()Lf6/b;

    move-result-object v0

    return-object v0
.end method
