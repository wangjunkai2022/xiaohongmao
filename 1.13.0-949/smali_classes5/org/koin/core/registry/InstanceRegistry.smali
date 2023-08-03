.class public final Lorg/koin/core/registry/InstanceRegistry;
.super Ljava/lang/Object;
.source "InstanceRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstanceRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstanceRegistry.kt\norg/koin/core/registry/InstanceRegistry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 BeanDefinition.kt\norg/koin/core/definition/BeanDefinitionKt\n*L\n1#1,199:1\n1849#2,2:200\n1849#2,2:204\n1849#2,2:213\n1849#2,2:222\n798#2,11:224\n1849#2,2:235\n764#2:239\n855#2,2:240\n764#2:242\n855#2,2:243\n1547#2:245\n1618#2,3:246\n1849#2,2:249\n1849#2,2:251\n211#3,2:202\n211#3,2:237\n109#4,7:206\n109#4,7:215\n*S KotlinDebug\n*F\n+ 1 InstanceRegistry.kt\norg/koin/core/registry/InstanceRegistry\n*L\n47#1:200,2\n90#1:204,2\n131#1:213,2\n151#1:222,2\n159#1:224,11\n159#1:235,2\n171#1:239\n171#1:240,2\n174#1:242\n174#1:243,2\n180#1:245\n180#1:246,3\n184#1:249,2\n188#1:251,2\n59#1:202,2\n163#1:237,2\n123#1:206,7\n147#1:215,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010?\u001a\u00020;\u00a2\u0006\u0004\u0008H\u0010IJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J(\u0010\u000c\u001a\u00020\u00062\u001e\u0010\u000b\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t0\u0008j\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t`\nH\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J%\u0010\u0010\u001a\u00020\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J2\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\u0016\u001a\u00060\u0014j\u0002`\u00152\n\u0010\u0018\u001a\u0006\u0012\u0002\u0008\u00030\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0004H\u0007J3\u0010 \u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00172\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001f\u001a\u00020\u001dH\u0000\u00a2\u0006\u0004\u0008 \u0010!J=\u0010%\u001a\u0004\u0018\u00018\u0000\"\u0004\u0008\u0000\u0010\"2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u001b2\u0006\u0010\u001f\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020#H\u0000\u00a2\u0006\u0004\u0008%\u0010&J^\u0010,\u001a\u00020\u0006\"\u0006\u0008\u0000\u0010\"\u0018\u00012\u0006\u0010\'\u001a\u00028\u00002\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0012\u0008\u0002\u0010)\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001b0(2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001d2\n\u0010+\u001a\u00060\u0014j\u0002`*H\u0081\u0008\u00a2\u0006\u0004\u0008,\u0010-JJ\u0010.\u001a\u00020\u0006\"\u0006\u0008\u0000\u0010\"\u0018\u00012\u0006\u0010\'\u001a\u00028\u00002\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0012\u0008\u0002\u0010)\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u001b0(2\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0081\u0008\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u000200H\u0000\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u00084\u0010\u0013J/\u00105\u001a\u0008\u0012\u0004\u0012\u00028\u00000(\"\u0004\u0008\u0000\u0010\"2\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u001b2\u0006\u0010$\u001a\u00020#H\u0000\u00a2\u0006\u0004\u00085\u00106J\u001d\u00107\u001a\u00020\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000eH\u0000\u00a2\u0006\u0004\u00087\u00108J\u0006\u0010:\u001a\u000209R\u0017\u0010?\u001a\u00020;8\u0006\u00a2\u0006\u000c\n\u0004\u00084\u0010<\u001a\u0004\u0008=\u0010>R(\u0010B\u001a\u0016\u0012\u0008\u0012\u00060\u0014j\u0002`\u0015\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00170@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010AR,\u0010\u000b\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t0\u0008j\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t`\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010CR%\u0010G\u001a\u0016\u0012\u0008\u0012\u00060\u0014j\u0002`\u0015\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00170D8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010F\u00a8\u0006J"
    }
    d2 = {
        "Lorg/koin/core/registry/InstanceRegistry;",
        "",
        "Lx8/a;",
        "module",
        "",
        "allowOverride",
        "",
        "l",
        "Ljava/util/HashSet;",
        "Lorg/koin/core/instance/f;",
        "Lkotlin/collections/HashSet;",
        "eagerInstances",
        "c",
        "s",
        "",
        "modules",
        "m",
        "(Ljava/util/Set;Z)V",
        "b",
        "()V",
        "",
        "Lorg/koin/core/definition/IndexKey;",
        "mapping",
        "Lorg/koin/core/instance/d;",
        "factory",
        "logWarning",
        "p",
        "Lkotlin/reflect/KClass;",
        "clazz",
        "Lz8/a;",
        "qualifier",
        "scopeQualifier",
        "n",
        "(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Lorg/koin/core/instance/d;",
        "T",
        "Lorg/koin/core/instance/c;",
        "instanceContext",
        "o",
        "(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lorg/koin/core/instance/c;)Ljava/lang/Object;",
        "instance",
        "",
        "secondaryTypes",
        "Lorg/koin/core/scope/ScopeID;",
        "scopeID",
        "f",
        "(Ljava/lang/Object;Lz8/a;Ljava/util/List;ZLz8/a;Ljava/lang/String;)V",
        "d",
        "(Ljava/lang/Object;Lz8/a;Ljava/util/List;Z)V",
        "Lorg/koin/core/scope/Scope;",
        "scope",
        "h",
        "(Lorg/koin/core/scope/Scope;)V",
        "a",
        "i",
        "(Lkotlin/reflect/KClass;Lorg/koin/core/instance/c;)Ljava/util/List;",
        "t",
        "(Ljava/util/Set;)V",
        "",
        "r",
        "Lorg/koin/core/Koin;",
        "Lorg/koin/core/Koin;",
        "k",
        "()Lorg/koin/core/Koin;",
        "_koin",
        "",
        "Ljava/util/Map;",
        "_instances",
        "Ljava/util/HashSet;",
        "",
        "j",
        "()Ljava/util/Map;",
        "instances",
        "<init>",
        "(Lorg/koin/core/Koin;)V",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lorg/koin/core/Koin;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/d<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/koin/core/instance/f<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 1
    .param p1    # Lorg/koin/core/Koin;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/koin/core/registry/InstanceRegistry;->a:Lorg/koin/core/Koin;

    .line 3
    sget-object p1, Ld9/b;->a:Ld9/b;

    invoke-virtual {p1}, Ld9/b;->h()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/koin/core/registry/InstanceRegistry;->c:Ljava/util/HashSet;

    return-void
.end method

.method private final c(Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lorg/koin/core/instance/f<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->a:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    invoke-virtual {v0, v1}, Lw8/b;->g(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->a:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    const-string v1, "Creating eager instances ..."

    invoke-virtual {v0, v1}, Lw8/b;->b(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Lorg/koin/core/instance/c;

    iget-object v3, p0, Lorg/koin/core/registry/InstanceRegistry;->a:Lorg/koin/core/Koin;

    invoke-virtual {v3}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/koin/core/instance/c;-><init>(Lorg/koin/core/Koin;Lorg/koin/core/scope/Scope;Ly8/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/instance/f;

    .line 6
    invoke-virtual {v1, v0}, Lorg/koin/core/instance/f;->e(Lorg/koin/core/instance/c;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic e(Lorg/koin/core/registry/InstanceRegistry;Ljava/lang/Object;Lz8/a;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 16

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object/from16 v7, p3

    :goto_1
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move/from16 v0, p4

    :goto_2
    const-string v1, "secondaryTypes"

    .line 2
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/koin/core/registry/InstanceRegistry;->k()Lorg/koin/core/Koin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/scope/Scope;->I()Lz8/a;

    move-result-object v2

    .line 4
    sget-object v6, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v5, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;

    move-object/from16 v1, p1

    invoke-direct {v5, v1}, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;-><init>(Ljava/lang/Object;)V

    .line 5
    new-instance v15, Lorg/koin/core/definition/a;

    const/4 v1, 0x4

    const-string v3, "T"

    .line 6
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v1, v15

    .line 7
    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 8
    new-instance v1, Lorg/koin/core/instance/f;

    invoke-direct {v1, v15}, Lorg/koin/core/instance/f;-><init>(Lorg/koin/core/definition/a;)V

    .line 9
    invoke-virtual {v15}, Lorg/koin/core/definition/a;->l()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v15}, Lorg/koin/core/definition/a;->m()Lz8/a;

    move-result-object v3

    invoke-virtual {v15}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/koin/core/definition/b;->c(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move v9, v0

    move-object v11, v1

    .line 10
    invoke-static/range {v8 .. v14}, Lorg/koin/core/registry/InstanceRegistry;->q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V

    .line 11
    invoke-virtual {v15}, Lorg/koin/core/definition/a;->o()Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClass;

    .line 13
    invoke-virtual {v15}, Lorg/koin/core/definition/a;->m()Lz8/a;

    move-result-object v4

    invoke-virtual {v15}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/koin/core/definition/b;->c(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move v9, v0

    move-object v11, v1

    .line 14
    invoke-static/range {v8 .. v14}, Lorg/koin/core/registry/InstanceRegistry;->q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static synthetic g(Lorg/koin/core/registry/InstanceRegistry;Ljava/lang/Object;Lz8/a;Ljava/util/List;ZLz8/a;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 12

    move-object v0, p1

    move-object/from16 v1, p6

    and-int/lit8 v2, p7, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v7, v3

    goto :goto_0

    :cond_0
    move-object v7, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v10, p3

    :goto_1
    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    move/from16 v2, p4

    :goto_2
    const-string v4, "secondaryTypes"

    .line 2
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "scopeQualifier"

    move-object/from16 v5, p5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "scopeID"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v9, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v8, Lorg/koin/core/registry/InstanceRegistry$declareScopedInstance$def$1;

    invoke-direct {v8, p1}, Lorg/koin/core/registry/InstanceRegistry$declareScopedInstance$def$1;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v11, Lorg/koin/core/definition/a;

    const/4 v4, 0x4

    const-string v6, "T"

    .line 5
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object v4, v11

    .line 6
    invoke-direct/range {v4 .. v10}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 7
    invoke-virtual {v11}, Lorg/koin/core/definition/a;->l()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v11}, Lorg/koin/core/definition/a;->m()Lz8/a;

    move-result-object v5

    invoke-virtual {v11}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/koin/core/definition/b;->c(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lorg/koin/core/registry/InstanceRegistry;->j()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/koin/core/instance/e;

    if-eqz v6, :cond_3

    move-object v3, v5

    check-cast v3, Lorg/koin/core/instance/e;

    :cond_3
    if-eqz v3, :cond_4

    const-string v2, "null cannot be cast to non-null type kotlin.Any"

    .line 9
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3, v1, p1}, Lorg/koin/core/instance/e;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 10
    :cond_4
    new-instance v0, Lorg/koin/core/instance/e;

    invoke-direct {v0, v11}, Lorg/koin/core/instance/e;-><init>(Lorg/koin/core/definition/a;)V

    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x0

    move-object p1, p0

    move p2, v2

    move-object p3, v4

    move-object/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, v3

    move-object/from16 p7, v5

    .line 11
    invoke-static/range {p1 .. p7}, Lorg/koin/core/registry/InstanceRegistry;->q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V

    .line 12
    invoke-virtual {v11}, Lorg/koin/core/definition/a;->o()Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClass;

    .line 14
    invoke-virtual {v11}, Lorg/koin/core/definition/a;->m()Lz8/a;

    move-result-object v4

    invoke-virtual {v11}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/koin/core/definition/b;->c(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object p1, p0

    move p2, v2

    move-object p3, v3

    move-object/from16 p4, v0

    move/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    .line 15
    invoke-static/range {p1 .. p7}, Lorg/koin/core/registry/InstanceRegistry;->q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method private final l(Lx8/a;Z)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lx8/a;->h()Ljava/util/HashMap;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/koin/core/instance/d;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p2

    .line 4
    invoke-static/range {v2 .. v8}, Lorg/koin/core/registry/InstanceRegistry;->q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/koin/core/registry/InstanceRegistry;->p(ZLjava/lang/String;Lorg/koin/core/instance/d;Z)V

    return-void
.end method

.method private final s(Lx8/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lx8/a;->h()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "module.mappings.keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/instance/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/koin/core/instance/d;->d()V

    .line 5
    :cond_1
    iget-object v1, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/instance/d;

    .line 4
    invoke-virtual {v1}, Lorg/koin/core/instance/d;->d()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->c:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lorg/koin/core/registry/InstanceRegistry;->c(Ljava/util/HashSet;)V

    .line 2
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final synthetic d(Ljava/lang/Object;Lz8/a;Ljava/util/List;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lz8/a;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;Z)V"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const-string v0, "secondaryTypes"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/registry/InstanceRegistry;->k()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->I()Lz8/a;

    move-result-object v2

    .line 2
    sget-object v6, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v5, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;

    move-object v0, p1

    invoke-direct {v5, p1}, Lorg/koin/core/registry/InstanceRegistry$declareRootInstance$def$1;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lorg/koin/core/definition/a;

    const/4 v1, 0x4

    const-string v3, "T"

    .line 4
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v1, v0

    move-object/from16 v4, p2

    .line 5
    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 6
    new-instance v1, Lorg/koin/core/instance/f;

    invoke-direct {v1, v0}, Lorg/koin/core/instance/f;-><init>(Lorg/koin/core/definition/a;)V

    .line 7
    invoke-virtual {v0}, Lorg/koin/core/definition/a;->l()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v0}, Lorg/koin/core/definition/a;->m()Lz8/a;

    move-result-object v3

    invoke-virtual {v0}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/koin/core/definition/b;->c(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v7, p0

    move/from16 v8, p4

    move-object v10, v1

    .line 8
    invoke-static/range {v7 .. v13}, Lorg/koin/core/registry/InstanceRegistry;->q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lorg/koin/core/definition/a;->o()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClass;

    .line 11
    invoke-virtual {v0}, Lorg/koin/core/definition/a;->m()Lz8/a;

    move-result-object v4

    invoke-virtual {v0}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/koin/core/definition/b;->c(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v7, p0

    move/from16 v8, p4

    move-object v10, v1

    .line 12
    invoke-static/range {v7 .. v13}, Lorg/koin/core/registry/InstanceRegistry;->q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic f(Ljava/lang/Object;Lz8/a;Ljava/util/List;ZLz8/a;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lz8/a;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "*>;>;Z",
            "Lz8/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const-string v0, "secondaryTypes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeQualifier"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeID"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v6, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v5, Lorg/koin/core/registry/InstanceRegistry$declareScopedInstance$def$1;

    invoke-direct {v5, p1}, Lorg/koin/core/registry/InstanceRegistry$declareScopedInstance$def$1;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lorg/koin/core/definition/a;

    const/4 v1, 0x4

    const-string v2, "T"

    .line 3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object v1, v0

    move-object v2, p5

    move-object v4, p2

    move-object v7, p3

    .line 4
    invoke-direct/range {v1 .. v7}, Lorg/koin/core/definition/a;-><init>(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;Ljava/util/List;)V

    .line 5
    invoke-virtual {v0}, Lorg/koin/core/definition/a;->l()Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {v0}, Lorg/koin/core/definition/a;->m()Lz8/a;

    move-result-object p3

    invoke-virtual {v0}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object p5

    invoke-static {p2, p3, p5}, Lorg/koin/core/definition/b;->c(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lorg/koin/core/registry/InstanceRegistry;->j()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lorg/koin/core/instance/e;

    if-eqz p3, :cond_0

    check-cast p2, Lorg/koin/core/instance/e;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string p3, "null cannot be cast to non-null type kotlin.Any"

    .line 7
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, p6, p1}, Lorg/koin/core/instance/e;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_1
    new-instance p1, Lorg/koin/core/instance/e;

    invoke-direct {p1, v0}, Lorg/koin/core/instance/e;-><init>(Lorg/koin/core/definition/a;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p4

    move-object v4, p1

    .line 9
    invoke-static/range {v1 .. v7}, Lorg/koin/core/registry/InstanceRegistry;->q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Lorg/koin/core/definition/a;->o()Ljava/util/List;

    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/KClass;

    .line 12
    invoke-virtual {v0}, Lorg/koin/core/definition/a;->m()Lz8/a;

    move-result-object p5

    invoke-virtual {v0}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object p6

    invoke-static {p3, p5, p6}, Lorg/koin/core/definition/b;->c(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p4

    move-object v4, p1

    .line 13
    invoke-static/range {v1 .. v7}, Lorg/koin/core/registry/InstanceRegistry;->q(Lorg/koin/core/registry/InstanceRegistry;ZLjava/lang/String;Lorg/koin/core/instance/d;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final h(Lorg/koin/core/scope/Scope;)V
    .locals 4
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/koin/core/instance/e;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/koin/core/instance/e;

    .line 5
    invoke-virtual {v1, p1}, Lorg/koin/core/instance/e;->b(Lorg/koin/core/scope/Scope;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final i(Lkotlin/reflect/KClass;Lorg/koin/core/instance/c;)Ljava/util/List;
    .locals 5
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lorg/koin/core/instance/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lorg/koin/core/instance/c;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/koin/core/instance/d;

    .line 4
    invoke-virtual {v3}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/definition/a;->n()Lz8/a;

    move-result-object v3

    invoke-virtual {p2}, Lorg/koin/core/instance/c;->c()Lorg/koin/core/scope/Scope;

    move-result-object v4

    invoke-virtual {v4}, Lorg/koin/core/scope/Scope;->I()Lz8/a;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/koin/core/instance/d;

    .line 7
    invoke-virtual {v3}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object v4

    invoke-virtual {v4}, Lorg/koin/core/definition/a;->l()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/koin/core/definition/a;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Lorg/koin/core/instance/d;

    .line 12
    invoke-virtual {v1, p2}, Lorg/koin/core/instance/d;->e(Lorg/koin/core/instance/c;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    return-object v0
.end method

.method public final j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/d<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final k()Lorg/koin/core/Koin;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->a:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public final m(Ljava/util/Set;Z)V
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lx8/a;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx8/a;

    .line 2
    invoke-direct {p0, v0, p2}, Lorg/koin/core/registry/InstanceRegistry;->l(Lx8/a;Z)V

    .line 3
    iget-object v1, p0, Lorg/koin/core/registry/InstanceRegistry;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Lx8/a;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Lorg/koin/core/instance/d;
    .locals 1
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lz8/a;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lz8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lz8/a;",
            "Lz8/a;",
            ")",
            "Lorg/koin/core/instance/d<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeQualifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, Lorg/koin/core/definition/b;->c(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/koin/core/instance/d;

    return-object p1
.end method

.method public final o(Lz8/a;Lkotlin/reflect/KClass;Lz8/a;Lorg/koin/core/instance/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lz8/a;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lz8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lorg/koin/core/instance/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz8/a;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lz8/a;",
            "Lorg/koin/core/instance/c;",
            ")TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeQualifier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1, p3}, Lorg/koin/core/registry/InstanceRegistry;->n(Lkotlin/reflect/KClass;Lz8/a;Lz8/a;)Lorg/koin/core/instance/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p4}, Lorg/koin/core/instance/d;->e(Lorg/koin/core/instance/c;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final p(ZLjava/lang/String;Lorg/koin/core/instance/d;Z)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lorg/koin/core/instance/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lorg/koin/core/instance/d<",
            "*>;Z)V"
        }
    .end annotation

    .annotation build Lu8/b;
    .end annotation

    const-string v0, "mapping"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    invoke-static {p3, p2}, Lx8/b;->i(Lorg/koin/core/instance/d;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 3
    iget-object p1, p0, Lorg/koin/core/registry/InstanceRegistry;->a:Lorg/koin/core/Koin;

    invoke-virtual {p1}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override Mapping \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw8/b;->f(Ljava/lang/String;)V

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/koin/core/registry/InstanceRegistry;->a:Lorg/koin/core/Koin;

    invoke-virtual {p1}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object p1

    sget-object v0, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    invoke-virtual {p1, v0}, Lw8/b;->g(Lorg/koin/core/logger/Level;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    .line 5
    iget-object p1, p0, Lorg/koin/core/registry/InstanceRegistry;->a:Lorg/koin/core/Koin;

    invoke-virtual {p1}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add mapping \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/koin/core/instance/d;->f()Lorg/koin/core/definition/a;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lw8/b;->b(Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object p1, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, Lorg/koin/core/registry/InstanceRegistry;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final t(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lx8/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx8/a;

    .line 2
    invoke-direct {p0, v0}, Lorg/koin/core/registry/InstanceRegistry;->s(Lx8/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
