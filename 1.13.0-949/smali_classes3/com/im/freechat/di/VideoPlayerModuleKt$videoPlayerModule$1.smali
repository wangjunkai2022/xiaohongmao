.class final Lcom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoPlayerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/di/VideoPlayerModuleKt;
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
    value = "SMAP\nVideoPlayerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPlayerModule.kt\ncom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1\n+ 2 ViewModelOf.kt\norg/koin/androidx/viewmodel/dsl/ViewModelOfKt\n+ 3 ModuleExt.kt\norg/koin/androidx/viewmodel/dsl/ModuleExtKt\n+ 4 Module.kt\norg/koin/core/module/Module\n+ 5 Module.kt\norg/koin/core/module/ModuleKt\n+ 6 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 7 FactoryOf.kt\norg/koin/core/module/dsl/FactoryOfKt\n*L\n1#1,19:1\n101#2:20\n35#3,5:21\n152#4,10:26\n162#4,2:52\n148#4,14:55\n162#4,2:85\n217#5:36\n218#5:51\n217#5:69\n218#5:84\n102#6,14:37\n102#6,14:70\n56#7:54\n*S KotlinDebug\n*F\n+ 1 VideoPlayerModule.kt\ncom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1\n*L\n16#1:20\n16#1:21,5\n16#1:26,10\n16#1:52,2\n17#1:55,14\n17#1:85,2\n16#1:36\n16#1:51\n17#1:69\n17#1:84\n16#1:37,14\n17#1:70,14\n17#1:54\n*E\n"
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
.field public static final a:Lcom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1;

    invoke-direct {v0}, Lcom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1;-><init>()V

    sput-object v0, Lcom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1;->a:Lcom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1;

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
    .locals 13
    .param p1    # Lx8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "$this$module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v5, Lcom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$viewModelOf$1;

    invoke-direct {v5}, Lcom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$viewModelOf$1;-><init>()V

    .line 2
    sget-object v0, Lorg/koin/core/registry/c;->e:Lorg/koin/core/registry/c$a;

    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v2

    .line 3
    sget-object v11, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 5
    new-instance v8, Lorg/koin/core/definition/a;

    .line 6
    const-class v1, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, v8

    move-object v6, v11

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
    new-instance v10, Lcom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$factoryOf$1;

    invoke-direct {v10}, Lcom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$factoryOf$1;-><init>()V

    .line 12
    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v7

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 14
    new-instance v0, Lorg/koin/core/definition/a;

    .line 15
    const-class v1, Lcom/im/freechat/ui/chat/message_gallery/c;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v9, 0x0

    move-object v6, v0

    .line 16
    invoke-direct/range {v6 .. v12}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 17
    new-instance v1, Lorg/koin/core/instance/a;

    invoke-direct {v1, v0}, Lorg/koin/core/instance/a;-><init>(Lorg/koin/core/definition/a;)V

    .line 18
    invoke-virtual {p1, v1}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 19
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx8/a;

    invoke-virtual {p0, p1}, Lcom/im/freechat/di/VideoPlayerModuleKt$videoPlayerModule$1;->a(Lx8/a;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
