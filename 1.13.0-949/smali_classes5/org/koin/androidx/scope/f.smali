.class public final Lorg/koin/androidx/scope/f;
.super Landroidx/lifecycle/ViewModel;
.source "ScopeHandlerViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0014R$\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/koin/androidx/scope/f;",
        "Landroidx/lifecycle/ViewModel;",
        "",
        "onCleared",
        "Lorg/koin/core/scope/Scope;",
        "a",
        "Lorg/koin/core/scope/Scope;",
        "()Lorg/koin/core/scope/Scope;",
        "b",
        "(Lorg/koin/core/scope/Scope;)V",
        "scope",
        "<init>",
        "()V",
        "koin-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private a:Lorg/koin/core/scope/Scope;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/koin/core/scope/Scope;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lorg/koin/androidx/scope/f;->a:Lorg/koin/core/scope/Scope;

    return-object v0
.end method

.method public final b(Lorg/koin/core/scope/Scope;)V
    .locals 0
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/koin/androidx/scope/f;->a:Lorg/koin/core/scope/Scope;

    return-void
.end method

.method protected onCleared()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 2
    iget-object v0, p0, Lorg/koin/androidx/scope/f;->a:Lorg/koin/core/scope/Scope;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->z()Lw8/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing scope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/koin/androidx/scope/f;->a:Lorg/koin/core/scope/Scope;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw8/b;->b(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->e()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/koin/androidx/scope/f;->a:Lorg/koin/core/scope/Scope;

    return-void
.end method
