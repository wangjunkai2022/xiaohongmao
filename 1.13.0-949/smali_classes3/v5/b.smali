.class public final Lv5/b;
.super Ljava/lang/Object;
.source "KotlinJsonAdapter.kt"

# interfaces
.implements Lcom/squareup/moshi/h$e;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinJsonAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinJsonAdapter.kt\ncom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 KAnnotatedElements.kt\nkotlin/reflect/full/KAnnotatedElements\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,328:1\n1192#2,2:329\n1220#2,4:331\n286#2,2:336\n286#2,2:339\n1601#2,9:342\n1849#2:351\n1850#2:353\n1610#2:354\n1547#2:363\n1618#2,3:364\n20#3:335\n20#3:338\n1#4:341\n1#4:352\n37#5:355\n36#5,3:356\n37#5:359\n36#5,3:360\n37#5:367\n36#5,3:368\n*S KotlinDebug\n*F\n+ 1 KotlinJsonAdapter.kt\ncom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory\n*L\n229#1:329,2\n229#1:331,4\n238#1:336,2\n244#1:339,2\n278#1:342,9\n278#1:351\n278#1:353\n278#1:354\n324#1:363\n324#1:364,3\n238#1:335\n244#1:338\n278#1:352\n278#1:355\n278#1:356,3\n294#1:359\n294#1:360,3\n324#1:367\n324#1:368,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ.\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\t2\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lv5/b;",
        "Lcom/squareup/moshi/h$e;",
        "Ljava/lang/reflect/Type;",
        "type",
        "",
        "",
        "annotations",
        "Lcom/squareup/moshi/u;",
        "moshi",
        "Lcom/squareup/moshi/h;",
        "create",
        "<init>",
        "()V",
        "reflect"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/u;)Lcom/squareup/moshi/h;
    .locals 27
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/squareup/moshi/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/u;",
            ")",
            "Lcom/squareup/moshi/h<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v0, "type"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return-object v4

    .line 2
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/squareup/moshi/b0;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v4

    .line 4
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v4

    .line 5
    :cond_2
    invoke-static {}, Lv5/c;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v4

    .line 6
    :cond_3
    invoke-static {v5}, Lcom/squareup/moshi/internal/c;->m(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v4

    .line 7
    :cond_4
    :try_start_0
    invoke-static {v2, v1, v5}, Lcom/squareup/moshi/internal/c;->f(Lcom/squareup/moshi/u;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/squareup/moshi/h;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 8
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_35

    .line 9
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_34

    .line 10
    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkotlin/reflect/KClass;->isAbstract()Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_33

    .line 12
    invoke-interface {v0}, Lkotlin/reflect/KClass;->isInner()Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_32

    .line 13
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getObjectInstance()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_31

    .line 14
    invoke-interface {v0}, Lkotlin/reflect/KClass;->isSealed()Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_30

    .line 15
    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getPrimaryConstructor(Lkotlin/reflect/KClass;)Lkotlin/reflect/KFunction;

    move-result-object v6

    if-nez v6, :cond_7

    return-object v4

    .line 16
    :cond_7
    invoke-interface {v6}, Lkotlin/reflect/KCallable;->getParameters()Ljava/util/List;

    move-result-object v8

    const/16 v9, 0xa

    .line 17
    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-static {v10}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v10

    .line 18
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 19
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 20
    move-object v12, v10

    check-cast v12, Lkotlin/reflect/KParameter;

    .line 21
    invoke-interface {v12}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_8
    invoke-static {v6, v3}, Lkotlin/reflect/jvm/KCallablesJvm;->setAccessible(Lkotlin/reflect/KCallable;Z)V

    .line 23
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v12, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    if-eqz v10, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/KProperty1;

    .line 25
    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lkotlin/reflect/KParameter;

    .line 26
    invoke-static {v10, v3}, Lkotlin/reflect/jvm/KCallablesJvm;->setAccessible(Lkotlin/reflect/KCallable;Z)V

    .line 27
    invoke-interface {v10}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v13

    .line 28
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v4, v14

    check-cast v4, Ljava/lang/annotation/Annotation;

    .line 29
    instance-of v4, v4, Lcom/squareup/moshi/g;

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    const/4 v14, 0x0

    .line 30
    :goto_4
    check-cast v14, Lcom/squareup/moshi/g;

    .line 31
    invoke-interface {v10}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    if-eqz v15, :cond_d

    .line 32
    invoke-interface {v15}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v13

    invoke-static {v4, v13}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    if-nez v14, :cond_d

    .line 33
    invoke-interface {v15}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v13

    .line 34
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v9, v14

    check-cast v9, Ljava/lang/annotation/Annotation;

    .line 35
    instance-of v9, v9, Lcom/squareup/moshi/g;

    if-eqz v9, :cond_b

    goto :goto_6

    :cond_b
    const/16 v9, 0xa

    goto :goto_5

    :cond_c
    const/4 v14, 0x0

    .line 36
    :goto_6
    check-cast v14, Lcom/squareup/moshi/g;

    .line 37
    :cond_d
    invoke-static {v10}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v9

    if-nez v9, :cond_e

    const/4 v9, 0x0

    goto :goto_7

    :cond_e
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    :goto_7
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v9

    if-eqz v9, :cond_12

    if-eqz v15, :cond_10

    .line 38
    invoke-interface {v15}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v4, 0x1

    :goto_9
    if-eqz v4, :cond_11

    :goto_a
    const/4 v4, 0x0

    const/16 v9, 0xa

    goto/16 :goto_2

    :cond_11
    const-string v0, "No default value for transient constructor "

    .line 39
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-nez v14, :cond_14

    :cond_13
    const/4 v9, 0x0

    goto :goto_b

    .line 41
    :cond_14
    invoke-interface {v14}, Lcom/squareup/moshi/g;->ignore()Z

    move-result v9

    if-ne v9, v3, :cond_13

    const/4 v9, 0x1

    :goto_b
    if-eqz v9, :cond_18

    if-eqz v15, :cond_16

    .line 42
    invoke-interface {v15}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_c

    :cond_15
    const/4 v4, 0x0

    goto :goto_d

    :cond_16
    :goto_c
    const/4 v4, 0x1

    :goto_d
    if-eqz v4, :cond_17

    goto :goto_a

    :cond_17
    const-string v0, "No default value for ignored constructor "

    .line 43
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    if-eqz v15, :cond_1a

    .line 45
    invoke-interface {v15}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v9

    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v13

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_e

    :cond_19
    const/4 v9, 0x0

    goto :goto_f

    :cond_1a
    :goto_e
    const/4 v9, 0x1

    :goto_f
    if-eqz v9, :cond_28

    .line 46
    instance-of v9, v10, Lkotlin/reflect/KMutableProperty1;

    if-nez v9, :cond_1b

    if-nez v15, :cond_1b

    goto :goto_a

    :cond_1b
    if-nez v14, :cond_1d

    :cond_1c
    :goto_10
    const/4 v9, 0x0

    goto :goto_11

    .line 47
    :cond_1d
    invoke-interface {v14}, Lcom/squareup/moshi/g;->name()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1e

    goto :goto_10

    :cond_1e
    const-string v13, "\u0000"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    :goto_11
    if-nez v9, :cond_1f

    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object v9

    :cond_1f
    move-object v14, v9

    .line 48
    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v9

    invoke-interface {v9}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v9

    .line 49
    instance-of v13, v9, Lkotlin/reflect/KClass;

    if-eqz v13, :cond_25

    .line 50
    check-cast v9, Lkotlin/reflect/KClass;

    invoke-interface {v9}, Lkotlin/reflect/KClass;->isValue()Z

    move-result v13

    if-eqz v13, :cond_24

    .line 51
    invoke-static {v9}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v9

    .line 52
    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v13

    invoke-interface {v13}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_20

    goto :goto_14

    .line 53
    :cond_20
    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v13

    invoke-interface {v13}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v13

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_23

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 56
    check-cast v16, Lkotlin/reflect/KTypeProjection;

    .line 57
    invoke-virtual/range {v16 .. v16}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v16

    if-nez v16, :cond_21

    const/4 v7, 0x0

    goto :goto_13

    :cond_21
    invoke-static/range {v16 .. v16}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v16

    move-object/from16 v7, v16

    :goto_13
    if-nez v7, :cond_22

    goto :goto_12

    .line 58
    :cond_22
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_23
    const/4 v7, 0x0

    new-array v13, v7, [Ljava/lang/reflect/Type;

    .line 59
    invoke-interface {v3, v13}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    check-cast v3, [Ljava/lang/reflect/Type;

    array-length v7, v3

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Type;

    .line 61
    invoke-static {v9, v3}, Lcom/squareup/moshi/z;->m(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v9

    goto :goto_14

    .line 62
    :cond_24
    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v9

    goto :goto_14

    .line 63
    :cond_25
    instance-of v3, v9, Lkotlin/reflect/KTypeParameter;

    if-eqz v3, :cond_27

    .line 64
    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 65
    :goto_14
    invoke-static {v1, v5, v9}, Lcom/squareup/moshi/internal/c;->u(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v7, 0x0

    new-array v9, v7, [Ljava/lang/annotation/Annotation;

    .line 66
    invoke-interface {v4, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, [Ljava/lang/annotation/Annotation;

    .line 67
    invoke-static {v4}, Lcom/squareup/moshi/internal/c;->o([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v4

    .line 68
    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object v7

    .line 69
    invoke-virtual {v2, v3, v4, v7}, Lcom/squareup/moshi/u;->g(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/h;

    move-result-object v3

    .line 70
    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lv5/a$a;

    const-string v9, "adapter"

    .line 71
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v15, :cond_26

    const/4 v9, -0x1

    const/16 v18, -0x1

    goto :goto_15

    .line 72
    :cond_26
    invoke-interface {v15}, Lkotlin/reflect/KParameter;->getIndex()I

    move-result v9

    move/from16 v18, v9

    :goto_15
    move-object v13, v7

    move-object v9, v15

    move-object v15, v3

    move-object/from16 v16, v10

    move-object/from16 v17, v9

    .line 73
    invoke-direct/range {v13 .. v18}, Lv5/a$a;-><init>(Ljava/lang/String;Lcom/squareup/moshi/h;Lkotlin/reflect/KProperty1;Lkotlin/reflect/KParameter;I)V

    invoke-interface {v8, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto/16 :goto_a

    .line 74
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not possible!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-object v9, v15

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' has a constructor parameter of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but a property of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lkotlin/reflect/KCallable;->getReturnType()Lkotlin/reflect/KType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {v6}, Lkotlin/reflect/KCallable;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KParameter;

    .line 79
    invoke-interface {v2}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv5/a$a;

    if-nez v3, :cond_2b

    .line 80
    invoke-interface {v2}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_17

    :cond_2a
    const/4 v7, 0x0

    goto :goto_18

    :cond_2b
    :goto_17
    const/4 v7, 0x1

    :goto_18
    if-eqz v7, :cond_2c

    .line 81
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2c
    const-string v0, "No property for required constructor "

    .line 82
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 85
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    move/from16 v24, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lv5/a$a;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    add-int/lit8 v1, v24, 0x1

    const/16 v25, 0xf

    const/16 v26, 0x0

    invoke-static/range {v19 .. v26}, Lv5/a$a;->g(Lv5/a$a;Ljava/lang/String;Lcom/squareup/moshi/h;Lkotlin/reflect/KProperty1;Lkotlin/reflect/KParameter;IILjava/lang/Object;)Lv5/a$a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 87
    :cond_2e
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 90
    check-cast v4, Lv5/a$a;

    .line 91
    invoke-virtual {v4}, Lv5/a$a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2f
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/String;

    .line 92
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/squareup/moshi/JsonReader$b;->a([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$b;

    move-result-object v2

    .line 94
    new-instance v3, Lv5/a;

    const-string v4, "options"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v6, v0, v1, v2}, Lv5/a;-><init>(Lkotlin/reflect/KFunction;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/JsonReader$b;)V

    invoke-virtual {v3}, Lcom/squareup/moshi/h;->nullSafe()Lcom/squareup/moshi/h;

    move-result-object v0

    return-object v0

    .line 95
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot reflectively serialize sealed class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please register an adapter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_31
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot serialize object declaration "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_32
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot serialize inner class "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_33
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot serialize abstract class "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_34
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot serialize local class or object expression "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_35
    throw v6
.end method
