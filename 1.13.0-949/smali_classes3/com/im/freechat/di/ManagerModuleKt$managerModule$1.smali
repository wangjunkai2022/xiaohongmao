.class final Lcom/im/freechat/di/ManagerModuleKt$managerModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ManagerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/di/ManagerModuleKt;
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
    value = "SMAP\nManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManagerModule.kt\ncom/im/freechat/di/ManagerModuleKt$managerModule$1\n+ 2 KoinDSLHelper.kt\ncom/im/freechat/di/KoinDSLHelperKt\n+ 3 Module.kt\norg/koin/core/module/Module\n+ 4 Module.kt\norg/koin/core/module/ModuleKt\n+ 5 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 6 SingleOf.kt\norg/koin/core/module/dsl/SingleOfKt\n*L\n1#1,14:1\n76#2:15\n13#2:48\n98#3,6:16\n104#3,5:43\n98#3,6:49\n104#3,5:76\n98#3,6:82\n104#3,5:109\n98#3,6:115\n104#3,5:142\n98#3,6:148\n104#3,5:175\n202#4,6:22\n208#4:42\n202#4,6:55\n208#4:75\n202#4,6:88\n208#4:108\n202#4,6:121\n208#4:141\n202#4,6:154\n208#4:174\n102#5,14:28\n102#5,14:61\n102#5,14:94\n102#5,14:127\n102#5,14:160\n126#6:81\n58#6:114\n75#6:147\n*S KotlinDebug\n*F\n+ 1 ManagerModule.kt\ncom/im/freechat/di/ManagerModuleKt$managerModule$1\n*L\n8#1:15\n9#1:48\n8#1:16,6\n8#1:43,5\n9#1:49,6\n9#1:76,5\n10#1:82,6\n10#1:109,5\n11#1:115,6\n11#1:142,5\n12#1:148,6\n12#1:175,5\n8#1:22,6\n8#1:42\n9#1:55,6\n9#1:75\n10#1:88,6\n10#1:108\n11#1:121,6\n11#1:141\n12#1:154,6\n12#1:174\n8#1:28,14\n9#1:61,14\n10#1:94,14\n11#1:127,14\n12#1:160,14\n10#1:81\n11#1:114\n12#1:147\n*E\n"
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
.field public static final a:Lcom/im/freechat/di/ManagerModuleKt$managerModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1;

    invoke-direct {v0}, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1;-><init>()V

    sput-object v0, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1;->a:Lcom/im/freechat/di/ManagerModuleKt$managerModule$1;

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
    new-instance v5, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$1;

    invoke-direct {v5}, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$1;-><init>()V

    .line 2
    sget-object v0, Lorg/koin/core/registry/c;->e:Lorg/koin/core/registry/c$a;

    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v2

    .line 3
    sget-object v13, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 5
    new-instance v8, Lorg/koin/core/definition/a;

    .line 6
    const-class v1, Lcom/im/freechat/sdk/a;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, v8

    move-object v6, v13

    .line 7
    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 8
    new-instance v1, Lorg/koin/core/instance/f;

    invoke-direct {v1, v8}, Lorg/koin/core/instance/f;-><init>(Lorg/koin/core/definition/a;)V

    .line 9
    invoke-virtual {p1, v1}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 10
    invoke-virtual {p1}, Lx8/a;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {p1, v1}, Lx8/a;->u(Lorg/koin/core/instance/f;)V

    .line 12
    :cond_0
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    new-instance v10, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$2;

    invoke-direct {v10}, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$2;-><init>()V

    const/4 v9, 0x0

    .line 14
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 16
    new-instance v1, Lorg/koin/core/definition/a;

    .line 17
    const-class v2, Lcom/im/freechat/sdk/c;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    move-object v11, v13

    .line 18
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 19
    new-instance v2, Lorg/koin/core/instance/f;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/f;-><init>(Lorg/koin/core/definition/a;)V

    .line 20
    invoke-virtual {p1, v2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 21
    invoke-virtual {p1}, Lx8/a;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p1, v2}, Lx8/a;->u(Lorg/koin/core/instance/f;)V

    .line 23
    :cond_1
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    new-instance v10, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$3;

    invoke-direct {v10}, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$3;-><init>()V

    const/4 v9, 0x0

    .line 25
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 27
    new-instance v1, Lorg/koin/core/definition/a;

    .line 28
    const-class v2, Lcom/im/freechat/sdk/e;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    move-object v11, v13

    .line 29
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 30
    new-instance v2, Lorg/koin/core/instance/f;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/f;-><init>(Lorg/koin/core/definition/a;)V

    .line 31
    invoke-virtual {p1, v2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 32
    invoke-virtual {p1}, Lx8/a;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {p1, v2}, Lx8/a;->u(Lorg/koin/core/instance/f;)V

    .line 34
    :cond_2
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    new-instance v10, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$4;

    invoke-direct {v10}, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$4;-><init>()V

    const/4 v9, 0x0

    .line 36
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 38
    new-instance v1, Lorg/koin/core/definition/a;

    .line 39
    const-class v2, Lcom/im/freechat/sdk/d;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v1

    move-object v11, v13

    .line 40
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 41
    new-instance v2, Lorg/koin/core/instance/f;

    invoke-direct {v2, v1}, Lorg/koin/core/instance/f;-><init>(Lorg/koin/core/definition/a;)V

    .line 42
    invoke-virtual {p1, v2}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 43
    invoke-virtual {p1}, Lx8/a;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {p1, v2}, Lx8/a;->u(Lorg/koin/core/instance/f;)V

    .line 45
    :cond_3
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    new-instance v10, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$5;

    invoke-direct {v10}, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$5;-><init>()V

    const/4 v9, 0x0

    .line 47
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 48
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 49
    new-instance v0, Lorg/koin/core/definition/a;

    .line 50
    const-class v1, Lcom/im/freechat/sdk/b;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v0

    move-object v11, v13

    .line 51
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 52
    new-instance v1, Lorg/koin/core/instance/f;

    invoke-direct {v1, v0}, Lorg/koin/core/instance/f;-><init>(Lorg/koin/core/definition/a;)V

    .line 53
    invoke-virtual {p1, v1}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 54
    invoke-virtual {p1}, Lx8/a;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {p1, v1}, Lx8/a;->u(Lorg/koin/core/instance/f;)V

    .line 56
    :cond_4
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx8/a;

    invoke-virtual {p0, p1}, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1;->a(Lx8/a;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
