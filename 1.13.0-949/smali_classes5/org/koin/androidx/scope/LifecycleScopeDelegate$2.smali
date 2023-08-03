.class public final Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;
.super Ljava/lang/Object;
.source "LifecycleScopeDelegate.kt"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/scope/LifecycleScopeDelegate;-><init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "org/koin/androidx/scope/LifecycleScopeDelegate$2",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onCreate",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroy",
        "koin-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lorg/koin/androidx/scope/LifecycleScopeDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/koin/androidx/scope/LifecycleScopeDelegate<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lw8/b;


# direct methods
.method constructor <init>(Lorg/koin/androidx/scope/LifecycleScopeDelegate;Lw8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/androidx/scope/LifecycleScopeDelegate<",
            "TT;>;",
            "Lw8/b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->a:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    iput-object p2, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->b:Lw8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->a:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-static {p1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->a(Lorg/koin/androidx/scope/LifecycleScopeDelegate;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->b:Lw8/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing scope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->a:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-static {v1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->b(Lorg/koin/androidx/scope/LifecycleScopeDelegate;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->a:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-virtual {v1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->e()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw8/b;->b(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->a:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-static {p1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->b(Lorg/koin/androidx/scope/LifecycleScopeDelegate;)Lorg/koin/core/scope/Scope;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->v()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->a:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-static {p1}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->b(Lorg/koin/androidx/scope/LifecycleScopeDelegate;)Lorg/koin/core/scope/Scope;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/koin/core/scope/Scope;->e()V

    .line 4
    :cond_1
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleScopeDelegate$2;->a:Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;->c(Lorg/koin/androidx/scope/LifecycleScopeDelegate;Lorg/koin/core/scope/Scope;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->c(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->d(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->e(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/b;->f(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
