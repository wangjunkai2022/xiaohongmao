.class public final Landroidx/lifecycle/StateViewModelFactory;
.super Landroidx/lifecycle/AbstractSavedStateViewModelFactory;
.source "StateViewModelFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/lifecycle/ViewModel;",
        ">",
        "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u001d\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0015\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001a\u0010\t\u001a\u000c\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J7\u0010\u000e\u001a\u00028\u0001\"\u0008\u0008\u0001\u0010\u0002*\u00020\u00012\u0006\u0010\u000b\u001a\u00020\n2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0011\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/lifecycle/StateViewModelFactory;",
        "Landroidx/lifecycle/ViewModel;",
        "T",
        "Landroidx/lifecycle/AbstractSavedStateViewModelFactory;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "handle",
        "Lkotlin/Function0;",
        "Ly8/a;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "addHandle",
        "",
        "key",
        "Ljava/lang/Class;",
        "modelClass",
        "create",
        "(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;",
        "Lorg/koin/core/scope/Scope;",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "getScope",
        "()Lorg/koin/core/scope/Scope;",
        "Ls8/c;",
        "parameters",
        "Ls8/c;",
        "getParameters",
        "()Ls8/c;",
        "<init>",
        "(Lorg/koin/core/scope/Scope;Ls8/c;)V",
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
.field private final parameters:Ls8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls8/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final scope:Lorg/koin/core/scope/Scope;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/scope/Scope;Ls8/c;)V
    .locals 2
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ls8/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Ls8/c<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ls8/c;->d()Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Ls8/c;->e()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v0, v1}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    .line 4
    iput-object p1, p0, Landroidx/lifecycle/StateViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 5
    iput-object p2, p0, Landroidx/lifecycle/StateViewModelFactory;->parameters:Ls8/c;

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t create SavedStateViewModelFactory without a proper stateRegistryOwner"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final addHandle(Landroidx/lifecycle/SavedStateHandle;)Lkotlin/jvm/functions/Function0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/SavedStateHandle;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Ly8/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/StateViewModelFactory;->parameters:Ls8/c;

    invoke-virtual {v0}, Ls8/c;->b()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly8/a;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Ly8/b;->a()Ly8/a;

    move-result-object v0

    .line 2
    :cond_1
    new-instance v1, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;

    invoke-direct {v1, v0, p1}, Landroidx/lifecycle/StateViewModelFactory$addHandle$1;-><init>(Ly8/a;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v1
.end method


# virtual methods
.method protected create(Ljava/lang/String;Ljava/lang/Class;Landroidx/lifecycle/SavedStateHandle;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/lifecycle/SavedStateHandle;",
            ")TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "modelClass"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handle"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Landroidx/lifecycle/StateViewModelFactory;->addHandle(Landroidx/lifecycle/SavedStateHandle;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    .line 2
    iget-object p2, p0, Landroidx/lifecycle/StateViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 3
    iget-object p3, p0, Landroidx/lifecycle/StateViewModelFactory;->parameters:Ls8/c;

    invoke-virtual {p3}, Ls8/c;->a()Lkotlin/reflect/KClass;

    move-result-object p3

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/StateViewModelFactory;->parameters:Ls8/c;

    invoke-virtual {v0}, Ls8/c;->c()Lz8/a;

    move-result-object v0

    .line 5
    invoke-virtual {p2, p3, v0, p1}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method

.method public final getParameters()Ls8/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls8/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/StateViewModelFactory;->parameters:Ls8/c;

    return-object v0
.end method

.method public final getScope()Lorg/koin/core/scope/Scope;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/StateViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    return-object v0
.end method
