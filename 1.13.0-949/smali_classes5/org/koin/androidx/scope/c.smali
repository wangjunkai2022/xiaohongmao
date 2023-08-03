.class public final Lorg/koin/androidx/scope/c;
.super Ljava/lang/Object;
.source "LifecycleOwnerExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\"\u001e\u0010\u0006\u001a\u00020\u0001*\u00020\u00008FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0002\u0010\u0003\"\u001e\u0010\t\u001a\u00020\u0001*\u00020\u00008FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\u0005\u001a\u0004\u0008\u0007\u0010\u0003\"\u001e\u0010\u000c\u001a\u00020\u0001*\u00020\u00008FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u0005\u001a\u0004\u0008\n\u0010\u0003\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/lifecycle/LifecycleOwner;",
        "Lorg/koin/core/scope/Scope;",
        "c",
        "(Landroidx/lifecycle/LifecycleOwner;)Lorg/koin/core/scope/Scope;",
        "getLifecycleScope$annotations",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "lifecycleScope",
        "e",
        "getScope$annotations",
        "scope",
        "a",
        "getCurrentScope$annotations",
        "currentScope",
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
.method public static final a(Landroidx/lifecycle/LifecycleOwner;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p0    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t use scope on a lifecycle component. Use ScopeActivity or ScopeFragment instead"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use ScopeActivity or ScopeFragment instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "lifecycleScope"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final c(Landroidx/lifecycle/LifecycleOwner;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p0    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t use scope on a lifecycle component. Use ScopeActivity or ScopeFragment instead"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use ScopeActivity or ScopeFragment instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "lifecycleScope"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final e(Landroidx/lifecycle/LifecycleOwner;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p0    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Don\'t use scope on a lifecycle component. Use ScopeActivity or ScopeFragment instead"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic f(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use ScopeActivity or ScopeFragment instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "lifecycleScope"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method
