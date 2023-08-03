.class final Lorg/koin/androidx/fragment/koin/a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinApplicationExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/androidx/fragment/koin/a;
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
    value = "SMAP\nKoinApplicationExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinApplicationExt.kt\norg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactoryModule$1\n+ 2 Module.kt\norg/koin/core/module/Module\n+ 3 Module.kt\norg/koin/core/module/ModuleKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,32:1\n98#2,6:33\n104#2,5:60\n202#3,6:39\n208#3:59\n102#4,14:45\n*S KotlinDebug\n*F\n+ 1 KoinApplicationExt.kt\norg/koin/androidx/fragment/koin/KoinApplicationExtKt$fragmentFactoryModule$1\n*L\n24#1:33,6\n24#1:60,5\n24#1:39,6\n24#1:59\n24#1:45,14\n*E\n"
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
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lorg/koin/androidx/fragment/koin/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/koin/androidx/fragment/koin/a$a;

    invoke-direct {v0}, Lorg/koin/androidx/fragment/koin/a$a;-><init>()V

    sput-object v0, Lorg/koin/androidx/fragment/koin/a$a;->a:Lorg/koin/androidx/fragment/koin/a$a;

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
    .locals 8
    .param p1    # Lx8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "$this$module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v5, Lorg/koin/androidx/fragment/koin/a$a$a;->a:Lorg/koin/androidx/fragment/koin/a$a$a;

    .line 2
    sget-object v0, Lorg/koin/core/registry/c;->e:Lorg/koin/core/registry/c$a;

    invoke-virtual {v0}, Lorg/koin/core/registry/c$a;->a()Lz8/c;

    move-result-object v2

    .line 3
    sget-object v6, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 5
    new-instance v0, Lorg/koin/core/definition/a;

    .line 6
    const-class v1, Landroidx/fragment/app/FragmentFactory;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 8
    new-instance v1, Lorg/koin/core/instance/f;

    invoke-direct {v1, v0}, Lorg/koin/core/instance/f;-><init>(Lorg/koin/core/definition/a;)V

    .line 9
    invoke-virtual {p1, v1}, Lx8/a;->p(Lorg/koin/core/instance/d;)V

    .line 10
    invoke-virtual {p1}, Lx8/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1, v1}, Lx8/a;->u(Lorg/koin/core/instance/f;)V

    .line 12
    :cond_0
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx8/a;

    invoke-virtual {p0, p1}, Lorg/koin/androidx/fragment/koin/a$a;->a(Lx8/a;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
