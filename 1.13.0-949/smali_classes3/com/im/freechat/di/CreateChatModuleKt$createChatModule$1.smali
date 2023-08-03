.class final Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateChatModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/di/CreateChatModuleKt;
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
    value = "SMAP\nCreateChatModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateChatModule.kt\ncom/im/freechat/di/CreateChatModuleKt$createChatModule$1\n+ 2 ViewModelOf.kt\norg/koin/androidx/viewmodel/dsl/ViewModelOfKt\n+ 3 ModuleExt.kt\norg/koin/androidx/viewmodel/dsl/ModuleExtKt\n+ 4 Module.kt\norg/koin/core/module/Module\n+ 5 Module.kt\norg/koin/core/module/ModuleKt\n+ 6 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 7 FactoryOf.kt\norg/koin/core/module/dsl/FactoryOfKt\n*L\n1#1,25:1\n71#2:26\n35#3,5:27\n152#4,10:32\n162#4,2:58\n148#4,14:61\n162#4,2:91\n148#4,14:94\n162#4,2:124\n148#4,14:127\n162#4,2:157\n148#4,14:159\n162#4,2:189\n217#5:42\n218#5:57\n217#5:75\n218#5:90\n217#5:108\n218#5:123\n217#5:141\n218#5:156\n217#5:173\n218#5:188\n102#6,14:43\n102#6,14:76\n102#6,14:109\n102#6,14:142\n102#6,14:174\n86#7:60\n101#7:93\n71#7:126\n*S KotlinDebug\n*F\n+ 1 CreateChatModule.kt\ncom/im/freechat/di/CreateChatModuleKt$createChatModule$1\n*L\n18#1:26\n18#1:27,5\n18#1:32,10\n18#1:58,2\n20#1:61,14\n20#1:91,2\n21#1:94,14\n21#1:124,2\n22#1:127,14\n22#1:157,2\n23#1:159,14\n23#1:189,2\n18#1:42\n18#1:57\n20#1:75\n20#1:90\n21#1:108\n21#1:123\n22#1:141\n22#1:156\n23#1:173\n23#1:188\n18#1:43,14\n20#1:76,14\n21#1:109,14\n22#1:142,14\n23#1:174,14\n20#1:60\n21#1:93\n22#1:126\n*E\n"
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
.field public static final a:Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1;

    invoke-direct {v0}, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1;-><init>()V

    sput-object v0, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1;->a:Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1;

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
    new-instance v5, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1$invoke$$inlined$viewModelOf$1;

    invoke-direct {v5}, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1$invoke$$inlined$viewModelOf$1;-><init>()V

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
    const-class v1, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;

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
    new-instance v10, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$1;

    invoke-direct {v10}, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$1;-><init>()V

    .line 12
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 14
    new-instance v1, Lorg/koin/core/definition/a;

    .line 15
    const-class v2, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;

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
    new-instance v10, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$2;

    invoke-direct {v10}, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$2;-><init>()V

    .line 21
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 23
    new-instance v1, Lorg/koin/core/definition/a;

    .line 24
    const-class v2, Lcom/im/freechat/domain/usecase/chat/b;

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
    new-instance v10, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$3;

    invoke-direct {v10}, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$3;-><init>()V

    .line 30
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 31
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 32
    new-instance v1, Lorg/koin/core/definition/a;

    .line 33
    const-class v2, Lcom/im/freechat/ui/create/namegroup/a;

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
    sget-object v10, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1$a;->a:Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1$a;

    .line 39
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 41
    new-instance v0, Lorg/koin/core/definition/a;

    .line 42
    const-class v1, Lcom/im/freechat/ui/create/choosemember/b;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object v6, v0

    .line 43
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 44
    new-instance v1, Lorg/koin/core/instance/a;

    invoke-direct {v1, v0}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 45
    invoke-virtual {p1, v1}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 46
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx8/a;

    invoke-virtual {p0, p1}, Lcom/im/freechat/di/CreateChatModuleKt$createChatModule$1;->a(Lx8/a;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
