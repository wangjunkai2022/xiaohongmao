.class public final Lorg/koin/androidx/scope/b;
.super Ljava/lang/Object;
.source "FragmentExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0010\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0001*\u00020\u0000\u001a\u0016\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u001a\u000c\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u0000\u001a \u0010\n\u001a\u00028\u0000\"\n\u0008\u0000\u0010\t\u0018\u0001*\u00020\u0008*\u00020\u0000H\u0086\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\"\u0017\u0010\r\u001a\u0004\u0018\u00010\u0008*\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/fragment/app/Fragment;",
        "Lorg/koin/androidx/scope/LifecycleScopeDelegate;",
        "c",
        "",
        "source",
        "Lorg/koin/core/scope/Scope;",
        "a",
        "e",
        "Lorg/koin/androidx/scope/ScopeActivity;",
        "T",
        "f",
        "(Landroidx/fragment/app/Fragment;)Lorg/koin/androidx/scope/ScopeActivity;",
        "d",
        "scopeActivity",
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
.method public static final a(Landroidx/fragment/app/Fragment;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 2
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->c(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v0

    invoke-static {p0}, Lorg/koin/core/component/c;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lorg/koin/core/component/c;->e(Ljava/lang/Object;)Lz8/d;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lorg/koin/core/Koin;->e(Ljava/lang/String;Lz8/a;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/fragment/app/Fragment;Ljava/lang/Object;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lorg/koin/androidx/scope/b;->a(Landroidx/fragment/app/Fragment;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroidx/fragment/app/Fragment;)Lorg/koin/androidx/scope/LifecycleScopeDelegate;
    .locals 3
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lorg/koin/androidx/scope/LifecycleScopeDelegate<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-static {p0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->c(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v1

    new-instance v2, Lorg/koin/androidx/scope/b$a;

    invoke-direct {v2, p0}, Lorg/koin/androidx/scope/b$a;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {v0, p0, v1, v2}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;-><init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final d(Landroidx/fragment/app/Fragment;)Lorg/koin/androidx/scope/ScopeActivity;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of v0, p0, Lorg/koin/androidx/scope/ScopeActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/koin/androidx/scope/ScopeActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final e(Landroidx/fragment/app/Fragment;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->c(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v0

    invoke-static {p0}, Lorg/koin/core/component/c;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/koin/core/Koin;->H(Ljava/lang/String;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Landroidx/fragment/app/Fragment;)Lorg/koin/androidx/scope/ScopeActivity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/koin/androidx/scope/ScopeActivity;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x2

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast p0, Lorg/koin/androidx/scope/ScopeActivity;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t get ScopeActivity for class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Lorg/koin/androidx/scope/ScopeActivity;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
