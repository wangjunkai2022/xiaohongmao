.class Ldagger/hilt/android/internal/managers/b$a;
.super Ljava/lang/Object;
.source "ActivityRetainedComponentManager.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/hilt/android/internal/managers/b;->c(Landroidx/lifecycle/ViewModelStoreOwner;Landroid/content/Context;)Landroidx/lifecycle/ViewModelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ldagger/hilt/android/internal/managers/b;


# direct methods
.method constructor <init>(Ldagger/hilt/android/internal/managers/b;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    iput-object p1, p0, Ldagger/hilt/android/internal/managers/b$a;->b:Ldagger/hilt/android/internal/managers/b;

    iput-object p2, p0, Ldagger/hilt/android/internal/managers/b$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ldagger/hilt/android/internal/managers/b$a;->a:Landroid/content/Context;

    const-class v0, Ldagger/hilt/android/internal/managers/b$b;

    .line 2
    invoke-static {p1, v0}, Ldagger/hilt/android/e;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/hilt/android/internal/managers/b$b;

    .line 3
    invoke-interface {p1}, Ldagger/hilt/android/internal/managers/b$b;->e()Lh6/b;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lh6/b;->build()Lf6/b;

    move-result-object p1

    .line 5
    new-instance v0, Ldagger/hilt/android/internal/managers/b$c;

    invoke-direct {v0, p1}, Ldagger/hilt/android/internal/managers/b$c;-><init>(Lf6/b;)V

    return-object v0
.end method

.method public synthetic create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/ViewModelProvider$Factory;Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method
