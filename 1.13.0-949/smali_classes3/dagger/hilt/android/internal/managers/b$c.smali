.class final Ldagger/hilt/android/internal/managers/b$c;
.super Landroidx/lifecycle/ViewModel;
.source "ActivityRetainedComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/hilt/android/internal/managers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Lf6/b;


# direct methods
.method constructor <init>(Lf6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    iput-object p1, p0, Ldagger/hilt/android/internal/managers/b$c;->a:Lf6/b;

    return-void
.end method


# virtual methods
.method a()Lf6/b;
    .locals 1

    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b$c;->a:Lf6/b;

    return-object v0
.end method

.method protected onCleared()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 2
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b$c;->a:Lf6/b;

    const-class v1, Ldagger/hilt/android/internal/managers/b$d;

    .line 3
    invoke-static {v0, v1}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/hilt/android/internal/managers/b$d;

    .line 4
    invoke-interface {v0}, Ldagger/hilt/android/internal/managers/b$d;->b()Ldagger/hilt/android/a;

    move-result-object v0

    .line 5
    check-cast v0, Ldagger/hilt/android/internal/managers/b$e;

    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/b$e;->c()V

    return-void
.end method
