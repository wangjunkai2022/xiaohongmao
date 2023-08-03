.class public final Lorg/koin/androidx/scope/a;
.super Ljava/lang/Object;
.source "ComponentActivityExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0010\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0000\u001a\u0016\u0010\t\u001a\u00020\u0008*\u00020\u00002\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u001a\u000c\u0010\n\u001a\u0004\u0018\u00010\u0008*\u00020\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/activity/ComponentActivity;",
        "Lorg/koin/androidx/scope/LifecycleScopeDelegate;",
        "Landroid/app/Activity;",
        "b",
        "Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;",
        "a",
        "",
        "source",
        "Lorg/koin/core/scope/Scope;",
        "c",
        "e",
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
.method public static final a(Landroidx/activity/ComponentActivity;)Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;
    .locals 7
    .param p0    # Landroidx/activity/ComponentActivity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;

    invoke-static {p0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->c(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;-><init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b(Landroidx/activity/ComponentActivity;)Lorg/koin/androidx/scope/LifecycleScopeDelegate;
    .locals 7
    .param p0    # Landroidx/activity/ComponentActivity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            ")",
            "Lorg/koin/androidx/scope/LifecycleScopeDelegate<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/koin/androidx/scope/LifecycleScopeDelegate;

    invoke-static {p0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->c(Landroid/content/ComponentCallbacks;)Lorg/koin/core/Koin;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/koin/androidx/scope/LifecycleScopeDelegate;-><init>(Landroidx/lifecycle/LifecycleOwner;Lorg/koin/core/Koin;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final c(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 2
    .param p0    # Landroidx/activity/ComponentActivity;
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

.method public static synthetic d(Landroidx/activity/ComponentActivity;Ljava/lang/Object;ILjava/lang/Object;)Lorg/koin/core/scope/Scope;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lorg/koin/androidx/scope/a;->c(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Lorg/koin/core/scope/Scope;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Landroidx/activity/ComponentActivity;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p0    # Landroidx/activity/ComponentActivity;
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
