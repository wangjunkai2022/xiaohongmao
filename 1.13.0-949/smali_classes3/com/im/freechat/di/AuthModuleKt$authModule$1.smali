.class final Lcom/im/freechat/di/AuthModuleKt$authModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/di/AuthModuleKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lx8/a;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthModule.kt\ncom/im/freechat/di/AuthModuleKt$authModule$1\n+ 2 FactoryOf.kt\norg/koin/core/module/dsl/FactoryOfKt\n+ 3 Module.kt\norg/koin/core/module/Module\n+ 4 Module.kt\norg/koin/core/module/ModuleKt\n+ 5 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,22:1\n86#2:23\n71#2:56\n71#2:89\n71#2:122\n71#2:155\n116#2:188\n101#2:221\n101#2:254\n101#2:287\n148#3,14:24\n162#3,2:54\n148#3,14:57\n162#3,2:87\n148#3,14:90\n162#3,2:120\n148#3,14:123\n162#3,2:153\n148#3,14:156\n162#3,2:186\n148#3,14:189\n162#3,2:219\n148#3,14:222\n162#3,2:252\n148#3,14:255\n162#3,2:285\n148#3,14:288\n162#3,2:318\n217#4:38\n218#4:53\n217#4:71\n218#4:86\n217#4:104\n218#4:119\n217#4:137\n218#4:152\n217#4:170\n218#4:185\n217#4:203\n218#4:218\n217#4:236\n218#4:251\n217#4:269\n218#4:284\n217#4:302\n218#4:317\n102#5,14:39\n102#5,14:72\n102#5,14:105\n102#5,14:138\n102#5,14:171\n102#5,14:204\n102#5,14:237\n102#5,14:270\n102#5,14:303\n*S KotlinDebug\n*F\n+ 1 AuthModule.kt\ncom/im/freechat/di/AuthModuleKt$authModule$1\n*L\n12#1:23\n13#1:56\n14#1:89\n15#1:122\n16#1:155\n17#1:188\n18#1:221\n19#1:254\n20#1:287\n12#1:24,14\n12#1:54,2\n13#1:57,14\n13#1:87,2\n14#1:90,14\n14#1:120,2\n15#1:123,14\n15#1:153,2\n16#1:156,14\n16#1:186,2\n17#1:189,14\n17#1:219,2\n18#1:222,14\n18#1:252,2\n19#1:255,14\n19#1:285,2\n20#1:288,14\n20#1:318,2\n12#1:38\n12#1:53\n13#1:71\n13#1:86\n14#1:104\n14#1:119\n15#1:137\n15#1:152\n16#1:170\n16#1:185\n17#1:203\n17#1:218\n18#1:236\n18#1:251\n19#1:269\n19#1:284\n20#1:302\n20#1:317\n12#1:39,14\n13#1:72,14\n14#1:105,14\n15#1:138,14\n16#1:171,14\n17#1:204,14\n18#1:237,14\n19#1:270,14\n20#1:303,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lx8/a;",
        "",
        "a",
        "(Lx8/a;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/di/AuthModuleKt$authModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/di/AuthModuleKt$authModule$1;

    invoke-direct {v0}, Lcom/im/freechat/di/AuthModuleKt$authModule$1;-><init>()V

    sput-object v0, Lcom/im/freechat/di/AuthModuleKt$authModule$1;->a:Lcom/im/freechat/di/AuthModuleKt$authModule$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lx8/a;)V
    .locals 14
    .param p1    # Lx8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "$this$module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v5, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$1;

    invoke-direct {v5}, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$1;-><init>()V

    .line 2
    sget-object v0, Lorg/koin/core/registry/c;->e:Lorg/koin/core/registry/c$a;

    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v2

    .line 3
    sget-object v13, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 5
    new-instance v8, Lorg/koin/core/definition/a;

    .line 6
    const-class v1, Lcom/im/freechat/domain/usecase/auth/j;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, v8

    move-object v6, v13

    .line 7
    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 8
    new-instance v1, Lorg/koin/core/instance/a;

    invoke-direct {v1, v8}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 9
    invoke-virtual {p1, v1}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 10
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    new-instance v10, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$2;

    invoke-direct {v10}, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$2;-><init>()V

    .line 12
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 14
    new-instance v1, Lorg/koin/core/definition/a;

    .line 15
    const-class v2, Lcom/im/freechat/domain/usecase/auth/i;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v9, 0x0

    move-object v6, v1

    move-object v11, v13

    .line 16
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 17
    new-instance v2, Lorg/koin/core/instance/a;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 18
    invoke-virtual {p1, v2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 19
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    new-instance v10, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$3;

    invoke-direct {v10}, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$3;-><init>()V

    .line 21
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 23
    new-instance v1, Lorg/koin/core/definition/a;

    .line 24
    const-class v2, Lcom/im/freechat/domain/usecase/auth/h;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    .line 25
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 26
    new-instance v2, Lorg/koin/core/instance/a;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 27
    invoke-virtual {p1, v2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 28
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    new-instance v10, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$4;

    invoke-direct {v10}, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$4;-><init>()V

    .line 30
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 31
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 32
    new-instance v1, Lorg/koin/core/definition/a;

    .line 33
    const-class v2, Lcom/im/freechat/domain/usecase/currentuser/e;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    .line 34
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 35
    new-instance v2, Lorg/koin/core/instance/a;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 36
    invoke-virtual {p1, v2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 37
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    new-instance v10, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$5;

    invoke-direct {v10}, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$5;-><init>()V

    .line 39
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 41
    new-instance v1, Lorg/koin/core/definition/a;

    .line 42
    const-class v2, Lcom/im/freechat/domain/usecase/auth/d;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    .line 43
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 44
    new-instance v2, Lorg/koin/core/instance/a;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 45
    invoke-virtual {p1, v2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 46
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    new-instance v10, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$6;

    invoke-direct {v10}, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$6;-><init>()V

    .line 48
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 50
    new-instance v1, Lorg/koin/core/definition/a;

    .line 51
    const-class v2, Lcom/im/freechat/domain/usecase/currentuser/i;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    .line 52
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 53
    new-instance v2, Lorg/koin/core/instance/a;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 54
    invoke-virtual {p1, v2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 55
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    new-instance v10, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$7;

    invoke-direct {v10}, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$7;-><init>()V

    .line 57
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 59
    new-instance v1, Lorg/koin/core/definition/a;

    .line 60
    const-class v2, Lcom/im/freechat/domain/usecase/currentuser/k;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    .line 61
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 62
    new-instance v2, Lorg/koin/core/instance/a;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 63
    invoke-virtual {p1, v2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 64
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    new-instance v10, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$8;

    invoke-direct {v10}, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$8;-><init>()V

    .line 66
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 67
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 68
    new-instance v1, Lorg/koin/core/definition/a;

    .line 69
    const-class v2, Lcom/im/freechat/domain/usecase/currentuser/g;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    .line 70
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 71
    new-instance v2, Lorg/koin/core/instance/a;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 72
    invoke-virtual {p1, v2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 73
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    new-instance v10, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$9;

    invoke-direct {v10}, Lcom/im/freechat/di/AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$9;-><init>()V

    .line 75
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 76
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 77
    new-instance v0, Lorg/koin/core/definition/a;

    .line 78
    const-class v1, Lcom/im/freechat/domain/usecase/auth/b;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v0

    .line 79
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 80
    new-instance v1, Lorg/koin/core/instance/a;

    invoke-direct {v1, v0}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 81
    invoke-virtual {p1, v1}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 82
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx8/a;

    invoke-virtual {p0, p1}, Lcom/im/freechat/di/AuthModuleKt$authModule$1;->a(Lx8/a;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
