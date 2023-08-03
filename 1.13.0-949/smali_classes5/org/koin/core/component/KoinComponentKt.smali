.class public final Lorg/koin/core/component/KoinComponentKt;
.super Ljava/lang/Object;
.source "KoinComponent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n+ 3 Koin.kt\norg/koin/core/Koin\n*L\n1#1,71:1\n131#2:72\n131#2:74\n103#3:73\n*S KotlinDebug\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n46#1:72\n47#1:74\n47#1:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aG\u0010\t\u001a\u00028\u0000\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0016\u0008\n\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001aP\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0016\u0008\n\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "",
        "T",
        "Lorg/koin/core/component/a;",
        "Lz8/a;",
        "qualifier",
        "Lkotlin/Function0;",
        "Ly8/a;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "parameters",
        "a",
        "(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "Lkotlin/LazyThreadSafetyMode;",
        "mode",
        "Lkotlin/Lazy;",
        "c",
        "koin-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final synthetic a(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/component/a;",
            "Lz8/a;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ly8/a;",
            ">;)TT;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v1, p0, Lorg/koin/core/component/b;

    const-string v2, "T"

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    .line 2
    check-cast p0, Lorg/koin/core/component/b;

    invoke-interface {p0}, Lorg/koin/core/component/b;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    .line 3
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p0}, Lorg/koin/core/component/a;->getKoin()Lorg/koin/core/Koin;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object p0

    .line 6
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic b(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class p4, Ljava/lang/Object;

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v1

    :cond_1
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p3, p0, Lorg/koin/core/component/b;

    const-string v0, "T"

    const/4 v1, 0x4

    if-eqz p3, :cond_2

    .line 3
    check-cast p0, Lorg/koin/core/component/b;

    invoke-interface {p0}, Lorg/koin/core/component/b;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p0

    .line 4
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p0}, Lorg/koin/core/component/a;->getKoin()Lorg/koin/core/Koin;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object p0

    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final synthetic c(Lorg/koin/core/component/a;Lz8/a;Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/koin/core/component/a;",
            "Lz8/a;",
            "Lkotlin/LazyThreadSafetyMode;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ly8/a;",
            ">;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/koin/core/component/KoinComponentKt$inject$1;

    invoke-direct {v0, p0, p1, p3}, Lorg/koin/core/component/KoinComponentKt$inject$1;-><init>(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/koin/core/component/a;Lz8/a;Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 1
    sget-object p2, Ld9/b;->a:Ld9/b;

    invoke-virtual {p2}, Ld9/b;->b()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    const-string p4, "<this>"

    .line 2
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "mode"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p4, Lorg/koin/core/component/KoinComponentKt$inject$1;

    invoke-direct {p4, p0, p1, p3}, Lorg/koin/core/component/KoinComponentKt$inject$1;-><init>(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p4}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method
