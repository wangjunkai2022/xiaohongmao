.class public final Lorg/koin/androidx/viewmodel/ext/android/a;
.super Ljava/lang/Object;
.source "GetViewModelFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001ab\u0010\u0010\u001a\u00020\u000f\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0016\u0008\u0008\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\u0004\u0018\u0001`\u00082\u0016\u0008\n\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0087\u0008\u00f8\u0001\u0000\u001a$\u0010\u0012\u001a\u00020\u000f\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\r2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0007\u001ah\u0010\u0015\u001a\u00020\u000f\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\u0004\u0018\u0001`\u00082\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0007\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/lifecycle/ViewModel;",
        "T",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "owner",
        "Lz8/a;",
        "qualifier",
        "Lkotlin/Function0;",
        "Ly8/a;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "parameters",
        "Landroid/os/Bundle;",
        "Lorg/koin/androidx/viewmodel/scope/BundleDefinition;",
        "state",
        "Lorg/koin/core/scope/Scope;",
        "scope",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "b",
        "Ls8/c;",
        "c",
        "Lkotlin/reflect/KClass;",
        "clazz",
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
.method public static final a(Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 9
    .param p0    # Landroidx/lifecycle/ViewModelStoreOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lz8/a;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lz8/a;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ly8/a;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/os/Bundle;",
            ">;",
            "Lorg/koin/core/scope/Scope;",
            ")",
            "Landroidx/lifecycle/ViewModelProvider$Factory;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation build Lu8/b;
    .end annotation

    const-string v0, "owner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1
    instance-of v0, p0, Landroidx/savedstate/SavedStateRegistryOwner;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroidx/savedstate/SavedStateRegistryOwner;

    :cond_1
    move-object v8, v1

    .line 2
    new-instance v0, Ls8/c;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Ls8/c;-><init>(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 3
    invoke-static {p5, v0}, Ls8/d;->a(Lorg/koin/core/scope/Scope;Ls8/c;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Landroidx/lifecycle/ViewModelStoreOwner;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            "Lz8/a;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ly8/a;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/os/Bundle;",
            ">;",
            "Lorg/koin/core/scope/Scope;",
            ")",
            "Landroidx/lifecycle/ViewModelProvider$Factory;"
        }
    .end annotation

    .annotation build Lu8/b;
    .end annotation

    const-string v0, "owner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lorg/koin/androidx/viewmodel/ext/android/a;->a(Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lorg/koin/core/scope/Scope;Ls8/c;)Landroidx/lifecycle/ViewModelProvider$Factory;
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

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ls8/d;->a(Lorg/koin/core/scope/Scope;Ls8/c;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;ILjava/lang/Object;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/koin/androidx/viewmodel/ext/android/a;->a(Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/lifecycle/ViewModelStoreOwner;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;ILjava/lang/Object;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 6

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v4, p3

    const-string p3, "owner"

    .line 1
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "scope"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x4

    const-string p5, "T"

    .line 2
    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p3, Landroidx/lifecycle/ViewModel;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/koin/androidx/viewmodel/ext/android/a;->a(Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method
