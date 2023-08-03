.class public final Lorg/koin/core/scope/Scope$declare$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/scope/Scope;->m(Ljava/lang/Object;Lz8/a;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$declare$1\n+ 2 InstanceRegistry.kt\norg/koin/core/registry/InstanceRegistry\n+ 3 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,438:1\n123#2:439\n124#2,8:447\n132#2,3:456\n137#2:460\n109#3,7:440\n1849#4:455\n1850#4:459\n*S KotlinDebug\n*F\n+ 1 Scope.kt\norg/koin/core/scope/Scope$declare$1\n*L\n326#1:439\n326#1:447,8\n326#1:456,3\n326#1:460\n326#1:440,7\n326#1:455\n326#1:459\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic a:Lorg/koin/core/scope/Scope;

.field final synthetic b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic c:Lz8/a;

.field final synthetic d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic e:Z


# direct methods
.method public constructor <init>(Lorg/koin/core/scope/Scope;Ljava/lang/Object;Lz8/a;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "TT;",
            "Lz8/a;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/scope/Scope$declare$1;->a:Lorg/koin/core/scope/Scope;

    iput-object p2, p0, Lorg/koin/core/scope/Scope$declare$1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lorg/koin/core/scope/Scope$declare$1;->c:Lz8/a;

    iput-object p4, p0, Lorg/koin/core/scope/Scope$declare$1;->d:Ljava/util/List;

    iput-boolean p5, p0, Lorg/koin/core/scope/Scope$declare$1;->e:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope$declare$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 12

    .line 2
    iget-object v0, p0, Lorg/koin/core/scope/Scope$declare$1;->a:Lorg/koin/core/scope/Scope;

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->K()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->s()Lorg/koin/core/registry/InstanceRegistry;

    move-result-object v0

    iget-object v1, p0, Lorg/koin/core/scope/Scope$declare$1;->b:Ljava/lang/Object;

    iget-object v5, p0, Lorg/koin/core/scope/Scope$declare$1;->c:Lz8/a;

    iget-object v8, p0, Lorg/koin/core/scope/Scope$declare$1;->d:Ljava/util/List;

    iget-boolean v9, p0, Lorg/koin/core/scope/Scope$declare$1;->e:Z

    iget-object v2, p0, Lorg/koin/core/scope/Scope$declare$1;->a:Lorg/koin/core/scope/Scope;

    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->I()Lz8/a;

    move-result-object v3

    iget-object v2, p0, Lorg/koin/core/scope/Scope$declare$1;->a:Lorg/koin/core/scope/Scope;

    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->x()Ljava/lang/String;

    move-result-object v10

    .line 3
    sget-object v7, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v6, Lorg/koin/core/scope/Scope$declare$1$invoke$$inlined$declareScopedInstance$1;

    invoke-direct {v6, v1}, Lorg/koin/core/scope/Scope$declare$1$invoke$$inlined$declareScopedInstance$1;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v11, Lorg/koin/core/definition/a;

    const/4 v2, 0x4

    const-string v4, "T"

    .line 5
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    move-object v2, v11

    .line 6
    invoke-direct/range {v2 .. v8}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 7
    invoke-virtual {v11}, Lorg/koin/core/definition/a;->l()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v11}, Lorg/koin/core/definition/a;->m()Lz8/a;

    move-result-object v3

    invoke-virtual {v11}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/koin/core/definition/b;->c(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0}, Lorg/koin/core/registry/InstanceRegistry;->j()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lorg/koin/core/instance/e;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/koin/core/instance/e;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    .line 9
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v10, v1}, Lorg/koin/core/instance/e;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_1
    new-instance v8, Lorg/koin/core/instance/e;

    invoke-direct {v8, v11}, Lorg/koin/core/instance/e;-><init>(Lorg/koin/core/definition/a;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    move v2, v9

    move-object v4, v8

    .line 11
    invoke-static/range {v1 .. v7}, Lorg/koin/core/registry/InstanceRegistry;->q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V

    .line 12
    invoke-virtual {v11}, Lorg/koin/core/definition/a;->o()Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KClass;

    .line 14
    invoke-virtual {v11}, Lorg/koin/core/definition/a;->m()Lz8/a;

    move-result-object v2

    invoke-virtual {v11}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/koin/core/definition/b;->c(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    move v2, v9

    move-object v4, v8

    .line 15
    invoke-static/range {v1 .. v7}, Lorg/koin/core/registry/InstanceRegistry;->q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
