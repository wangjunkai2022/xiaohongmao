.class public final Lc9/a;
.super Ljava/lang/Object;
.source "InjectProperty.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInjectProperty.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InjectProperty.kt\norg/koin/ext/InjectPropertyKt\n+ 2 Koin.kt\norg/koin/core/Koin\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,18:1\n100#2,4:19\n100#2,4:24\n131#3:23\n131#3:28\n127#3,5:29\n*S KotlinDebug\n*F\n+ 1 InjectProperty.kt\norg/koin/ext/InjectPropertyKt\n*L\n9#1:19,4\n13#1:24,4\n9#1:23\n13#1:28\n17#1:29,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001b\u0010\u0003\u001a\u00020\u0002\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u0086\u0008\u001a#\u0010\u0006\u001a\u00020\u0002\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0086\u0008\u001a#\u0010\t\u001a\u00020\u0002\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0008\u001a\u00020\u0007H\u0086\u0008\u00a8\u0006\n"
    }
    d2 = {
        "T",
        "Lkotlin/reflect/KMutableProperty0;",
        "",
        "a",
        "Lorg/koin/core/Koin;",
        "koin",
        "b",
        "Lorg/koin/core/scope/Scope;",
        "scope",
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
.method public static final synthetic a(Lkotlin/reflect/KMutableProperty0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty0<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ld9/b;->a:Ld9/b;

    invoke-virtual {v0}, Ld9/b;->a()Lv8/d;

    move-result-object v0

    invoke-interface {v0}, Lv8/d;->get()Lorg/koin/core/Koin;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "T"

    .line 3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p0, v0}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic b(Lkotlin/reflect/KMutableProperty0;Lorg/koin/core/Koin;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty0<",
            "TT;>;",
            "Lorg/koin/core/Koin;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "T"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic c(Lkotlin/reflect/KMutableProperty0;Lorg/koin/core/scope/Scope;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KMutableProperty0<",
            "TT;>;",
            "Lorg/koin/core/scope/Scope;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    return-void
.end method
