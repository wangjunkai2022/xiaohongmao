.class public final Lorg/koin/android/ext/android/a;
.super Ljava/lang/Object;
.source "AndroidKoinScopeExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000c\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroid/content/ComponentCallbacks;",
        "Lorg/koin/core/scope/Scope;",
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
.method public static final a(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;
    .locals 1
    .param p0    # Landroid/content/ComponentCallbacks;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .annotation build Lu8/b;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lorg/koin/android/scope/a;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/koin/android/scope/a;

    invoke-interface {p0}, Lorg/koin/android/scope/a;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Lorg/koin/core/component/b;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/koin/core/component/b;

    invoke-interface {p0}, Lorg/koin/core/component/b;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p0, Lorg/koin/core/component/a;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/koin/core/component/a;

    invoke-interface {p0}, Lorg/koin/core/component/a;->getKoin()Lorg/koin/core/Koin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Lv8/b;->a:Lv8/b;

    invoke-virtual {p0}, Lv8/b;->get()Lorg/koin/core/Koin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object p0

    :goto_0
    return-object p0
.end method
