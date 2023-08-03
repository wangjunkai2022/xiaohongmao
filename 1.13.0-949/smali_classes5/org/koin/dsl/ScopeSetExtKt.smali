.class public final Lorg/koin/dsl/ScopeSetExtKt;
.super Ljava/lang/Object;
.source "ScopeSetExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeSetExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeSetExt.kt\norg/koin/dsl/ScopeSetExtKt\n+ 2 ScopeDSL.kt\norg/koin/dsl/ScopeDSL\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 5 Module.kt\norg/koin/core/module/Module\n*L\n1#1,50:1\n44#2:51\n45#2,2:68\n53#2:70\n227#3:52\n228#3:67\n217#3:72\n218#3:87\n217#3,2:90\n102#4,14:53\n102#4,14:73\n161#5:71\n162#5,2:88\n*S KotlinDebug\n*F\n+ 1 ScopeSetExt.kt\norg/koin/dsl/ScopeSetExtKt\n*L\n35#1:51\n35#1:68,2\n49#1:70\n35#1:52\n35#1:67\n49#1:72\n49#1:87\n49#1:90,2\n35#1:53,14\n49#1:73,14\n49#1:71\n49#1:88,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a7\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00070\u0005\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\u0008\u001a7\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00070\u0005\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\u0008\u00a8\u0006\n"
    }
    d2 = {
        "",
        "R",
        "Lb9/d;",
        "Lz8/a;",
        "qualifier",
        "Lkotlin/Pair;",
        "Lx8/a;",
        "Lorg/koin/core/instance/d;",
        "c",
        "a",
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
.method public static final synthetic a(Lb9/d;Lz8/a;)Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lb9/d;",
            "Lz8/a;",
            ")",
            "Lkotlin/Pair<",
            "Lx8/a;",
            "Lorg/koin/core/instance/d<",
            "TR;>;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "API is deprecated in favor of factoryOf DSL"
    .end annotation

    .annotation runtime Lu8/c;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v5, Lorg/koin/dsl/ScopeSetExtKt$factory$1;->INSTANCE:Lorg/koin/dsl/ScopeSetExtKt$factory$1;

    .line 2
    invoke-virtual {p0}, Lb9/d;->c()Lx8/a;

    move-result-object v0

    invoke-virtual {p0}, Lb9/d;->d()Lz8/a;

    move-result-object v2

    .line 3
    sget-object v6, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 5
    new-instance p0, Lorg/koin/core/definition/a;

    const/4 v1, 0x4

    const-string v3, "R"

    .line 6
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    .line 7
    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 8
    new-instance p1, Lorg/koin/core/instance/a;

    invoke-direct {p1, p0}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 9
    invoke-virtual {v0, p1}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 10
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic b(Lb9/d;Lz8/a;ILjava/lang/Object;)Lkotlin/Pair;
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

    sget-object v4, Lorg/koin/dsl/ScopeSetExtKt$factory$1;->INSTANCE:Lorg/koin/dsl/ScopeSetExtKt$factory$1;

    .line 3
    invoke-virtual {p0}, Lb9/d;->c()Lx8/a;

    move-result-object p1

    invoke-virtual {p0}, Lb9/d;->d()Lz8/a;

    move-result-object v1

    .line 4
    sget-object v5, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 6
    new-instance p0, Lorg/koin/core/definition/a;

    const/4 p2, 0x4

    const-string p3, "R"

    .line 7
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p2, Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object v0, p0

    .line 8
    invoke-direct/range {v0 .. v6}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 9
    new-instance p2, Lorg/koin/core/instance/a;

    invoke-direct {p2, p0}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 10
    invoke-virtual {p1, p2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 11
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final synthetic c(Lb9/d;Lz8/a;)Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lb9/d;",
            "Lz8/a;",
            ")",
            "Lkotlin/Pair<",
            "Lx8/a;",
            "Lorg/koin/core/instance/d<",
            "TR;>;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "API is deprecated in favor of scopedOf DSL"
    .end annotation

    .annotation runtime Lu8/c;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v5, Lorg/koin/dsl/ScopeSetExtKt$scoped$1;->INSTANCE:Lorg/koin/dsl/ScopeSetExtKt$scoped$1;

    .line 2
    invoke-virtual {p0}, Lb9/d;->d()Lz8/a;

    move-result-object v2

    .line 3
    sget-object v6, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 5
    new-instance v0, Lorg/koin/core/definition/a;

    const/4 v1, 0x4

    const-string v3, "R"

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
    new-instance p1, Lorg/koin/core/instance/e;

    invoke-direct {p1, v0}, Lorg/koin/core/instance/e;-><init>(Lorg/koin/core/definition/a;)V

    .line 9
    invoke-virtual {p0}, Lb9/d;->c()Lx8/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 10
    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lb9/d;->c()Lx8/a;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic d(Lb9/d;Lz8/a;ILjava/lang/Object;)Lkotlin/Pair;
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

    sget-object v4, Lorg/koin/dsl/ScopeSetExtKt$scoped$1;->INSTANCE:Lorg/koin/dsl/ScopeSetExtKt$scoped$1;

    .line 3
    invoke-virtual {p0}, Lb9/d;->d()Lz8/a;

    move-result-object v1

    .line 4
    sget-object v5, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 6
    new-instance p1, Lorg/koin/core/definition/a;

    const/4 p2, 0x4

    const-string p3, "R"

    .line 7
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p2, Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object v0, p1

    .line 8
    invoke-direct/range {v0 .. v6}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 9
    new-instance p2, Lorg/koin/core/instance/e;

    invoke-direct {p2, p1}, Lorg/koin/core/instance/e;-><init>(Lorg/koin/core/definition/a;)V

    .line 10
    invoke-virtual {p0}, Lb9/d;->c()Lx8/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 11
    new-instance p1, Lkotlin/Pair;

    invoke-virtual {p0}, Lb9/d;->c()Lx8/a;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
