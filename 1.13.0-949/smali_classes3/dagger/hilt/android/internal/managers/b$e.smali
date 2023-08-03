.class final Ldagger/hilt/android/internal/managers/b$e;
.super Ljava/lang/Object;
.source "ActivityRetainedComponentManager.java"

# interfaces
.implements Ldagger/hilt/android/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/hilt/android/internal/managers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation build Ln6/a;
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ldagger/hilt/android/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Lu7/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldagger/hilt/android/internal/managers/b$e;->a:Ljava/util/Set;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ldagger/hilt/android/internal/managers/b$e;->b:Z

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldagger/hilt/android/internal/managers/b$e;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was a race between the call to add/remove an OnClearedListener and onCleared(). This can happen when posting to the Main thread from a background thread, which is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ldagger/hilt/android/a$a;)V
    .locals 1
    .param p1    # Ldagger/hilt/android/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-static {}, Lg6/b;->a()V

    .line 2
    invoke-direct {p0}, Ldagger/hilt/android/internal/managers/b$e;->d()V

    .line 3
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b$e;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ldagger/hilt/android/a$a;)V
    .locals 1
    .param p1    # Ldagger/hilt/android/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-static {}, Lg6/b;->a()V

    .line 2
    invoke-direct {p0}, Ldagger/hilt/android/internal/managers/b$e;->d()V

    .line 3
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b$e;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method c()V
    .locals 2

    .line 1
    invoke-static {}, Lg6/b;->a()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldagger/hilt/android/internal/managers/b$e;->b:Z

    .line 3
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b$e;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldagger/hilt/android/a$a;

    .line 4
    invoke-interface {v1}, Ldagger/hilt/android/a$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
