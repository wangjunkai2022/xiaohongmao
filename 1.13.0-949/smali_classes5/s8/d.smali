.class public final Ls8/d;
.super Ljava/lang/Object;
.source "ViewModelResolver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a+\u0010\u0005\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a$\u0010\t\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/lifecycle/ViewModel;",
        "T",
        "Landroidx/lifecycle/ViewModelProvider;",
        "Ls8/c;",
        "viewModelParameters",
        "b",
        "(Landroidx/lifecycle/ViewModelProvider;Ls8/c;)Landroidx/lifecycle/ViewModel;",
        "Lorg/koin/core/scope/Scope;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "a",
        "koin-android_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lorg/koin/core/scope/Scope;Ls8/c;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .param p0    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ls8/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lorg/koin/core/scope/Scope;",
            "Ls8/c<",
            "TT;>;)",
            "Landroidx/lifecycle/ViewModelProvider$Factory;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation build Lu8/b;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls8/c;->d()Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls8/c;->e()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/lifecycle/StateViewModelFactory;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/StateViewModelFactory;-><init>(Lorg/koin/core/scope/Scope;Ls8/c;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lt8/a;

    invoke-direct {v0, p0, p1}, Lt8/a;-><init>(Lorg/koin/core/scope/Scope;Ls8/c;)V

    :goto_0
    return-object v0
.end method

.method public static final b(Landroidx/lifecycle/ViewModelProvider;Ls8/c;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .param p0    # Landroidx/lifecycle/ViewModelProvider;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ls8/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/lifecycle/ViewModelProvider;",
            "Ls8/c<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls8/c;->a()Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ls8/c;->c()Lz8/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ls8/c;->c()Lz8/a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    const-string p1, "{\n        get(viewModelP\u2026tring(), javaClass)\n    }"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    const-string p1, "{\n        get(javaClass)\n    }"

    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
