.class public final Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt;
.super Ljava/lang/Object;
.source "ModuleExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleExt.kt\norg/koin/androidx/viewmodel/dsl/ModuleExtKt\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,47:1\n152#2,10:48\n162#2,2:74\n152#2,10:76\n162#2,2:102\n152#2,10:104\n162#2,2:116\n217#3:58\n218#3:73\n217#3:86\n218#3:101\n217#3,2:114\n102#4,14:59\n102#4,14:87\n*S KotlinDebug\n*F\n+ 1 ModuleExt.kt\norg/koin/androidx/viewmodel/dsl/ModuleExtKt\n*L\n39#1:48,10\n39#1:74,2\n46#1:76,10\n46#1:102,2\n46#1:104,10\n46#1:116,2\n39#1:58\n39#1:73\n46#1:86\n46#1:101\n46#1:114,2\n39#1:59,14\n46#1:87,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001ae\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000c0\u000b\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032)\u0008\u0008\u0010\n\u001a#\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0005j\u0008\u0012\u0004\u0012\u00028\u0000`\u0008\u00a2\u0006\u0002\u0008\tH\u0086\u0008\u00f8\u0001\u0000\u001a7\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000c0\u000b\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\u0008\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/lifecycle/ViewModel;",
        "T",
        "Lx8/a;",
        "Lz8/a;",
        "qualifier",
        "Lkotlin/Function2;",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "Lorg/koin/core/definition/Definition;",
        "Lkotlin/ExtensionFunctionType;",
        "definition",
        "Lkotlin/Pair;",
        "Lorg/koin/core/instance/d;",
        "b",
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
.method public static final synthetic a(Lx8/a;Lz8/a;)Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lx8/a;",
            "Lz8/a;",
            ")",
            "Lkotlin/Pair<",
            "Lx8/a;",
            "Lorg/koin/core/instance/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lu8/c;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v5, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt$viewModel$1;->INSTANCE:Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt$viewModel$1;

    .line 2
    sget-object v0, Lorg/koin/core/registry/c;->e:Lorg/koin/core/registry/c$a;

    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v2

    .line 3
    sget-object v6, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 5
    new-instance v0, Lorg/koin/core/definition/a;

    const/4 v1, 0x4

    const-string v3, "T"

    .line 6
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v1, v0

    move-object v4, p1

    .line 7
    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 8
    new-instance p1, Lorg/koin/core/instance/a;

    invoke-direct {p1, v0}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 9
    invoke-virtual {p0, p1}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 10
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final synthetic b(Lx8/a;Lz8/a;Lkotlin/jvm/functions/Function2;)Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Lx8/a;",
            "Lz8/a;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/koin/core/scope/Scope;",
            "-",
            "Ly8/a;",
            "+TT;>;)",
            "Lkotlin/Pair<",
            "Lx8/a;",
            "Lorg/koin/core/instance/d<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "definition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lorg/koin/core/registry/c;->e:Lorg/koin/core/registry/c$a;

    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v2

    .line 2
    sget-object v6, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 4
    new-instance v0, Lorg/koin/core/definition/a;

    const/4 v1, 0x4

    const-string v3, "T"

    .line 5
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    .line 6
    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 7
    new-instance p1, Lorg/koin/core/instance/a;

    invoke-direct {p1, v0}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 8
    invoke-virtual {p0, p1}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 9
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static synthetic c(Lx8/a;Lz8/a;ILjava/lang/Object;)Lkotlin/Pair;
    .locals 7

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v3, p1

    const-string p1, "<this>"

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v4, Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt$viewModel$1;->INSTANCE:Lorg/koin/androidx/viewmodel/dsl/ModuleExtKt$viewModel$1;

    .line 3
    sget-object p1, Lorg/koin/core/registry/c;->e:Lorg/koin/core/registry/c$a;

    invoke-virtual {p1}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v1

    .line 4
    sget-object v5, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 6
    new-instance p1, Lorg/koin/core/definition/a;

    const/4 p2, 0x4

    const-string p3, "T"

    .line 7
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p2, Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object v0, p1

    .line 8
    invoke-direct/range {v0 .. v6}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 9
    new-instance p2, Lorg/koin/core/instance/a;

    invoke-direct {p2, p1}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 10
    invoke-virtual {p0, p2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 11
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic d(Lx8/a;Lz8/a;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlin/Pair;
    .locals 7

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v3, p1

    const-string p1, "<this>"

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "definition"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lorg/koin/core/registry/c;->e:Lorg/koin/core/registry/c$a;

    invoke-virtual {p1}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v1

    .line 3
    sget-object v5, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 5
    new-instance p1, Lorg/koin/core/definition/a;

    const/4 p3, 0x4

    const-string p4, "T"

    .line 6
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p3, Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object v0, p1

    move-object v4, p2

    .line 7
    invoke-direct/range {v0 .. v6}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 8
    new-instance p2, Lorg/koin/core/instance/a;

    invoke-direct {p2, p1}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 9
    invoke-virtual {p0, p2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 10
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
