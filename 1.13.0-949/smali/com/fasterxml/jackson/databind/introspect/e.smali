.class final Lcom/fasterxml/jackson/databind/introspect/e;
.super Lcom/fasterxml/jackson/databind/introspect/m;
.source "AnnotatedCreatorCollector.java"


# instance fields
.field private final d:Lcom/fasterxml/jackson/databind/introspect/t;

.field private final e:Z

.field private f:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/t;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/m;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 2
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/e;->d:Lcom/fasterxml/jackson/databind/introspect/t;

    .line 3
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/introspect/e;->e:Z

    return-void
.end method

.method private i(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->F(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/g$a;

    move-result-object p1

    .line 3
    array-length v0, p1

    move-object v4, v2

    move-object v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v6, p1, v3

    .line 4
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/g$a;->a()Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-static {v7}, Lcom/fasterxml/jackson/databind/introspect/e;->t(Ljava/lang/reflect/Constructor;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/g$a;->d()I

    move-result v7

    if-nez v7, :cond_1

    move-object v4, v6

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_2
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v5, v4

    :cond_4
    if-nez v5, :cond_6

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    if-nez v4, :cond_5

    return-object p1

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 9
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_7

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move-object v12, v0

    move v0, p1

    move-object p1, v12

    :goto_3
    if-eqz p2, :cond_c

    .line 12
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->F(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/g$a;

    move-result-object p2

    array-length v3, p2

    move-object v7, v2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_c

    aget-object v8, p2, v6

    .line 13
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/util/g$a;->d()I

    move-result v9

    if-nez v9, :cond_8

    if-eqz v4, :cond_b

    .line 14
    invoke-virtual {p0, v4, v8}, Lcom/fasterxml/jackson/databind/introspect/e;->q(Lcom/fasterxml/jackson/databind/util/g$a;Lcom/fasterxml/jackson/databind/util/g$a;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/e;->f:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-object v4, v2

    goto :goto_7

    :cond_8
    if-eqz v5, :cond_b

    if-nez v7, :cond_9

    .line 15
    new-array v7, v0, [Lcom/fasterxml/jackson/databind/introspect/n;

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v0, :cond_9

    .line 16
    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/n;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/util/g$a;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/util/g$a;->a()Ljava/lang/reflect/Constructor;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/fasterxml/jackson/databind/introspect/n;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 17
    :cond_9
    new-instance v9, Lcom/fasterxml/jackson/databind/introspect/n;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/util/g$a;->a()Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/fasterxml/jackson/databind/introspect/n;-><init>(Ljava/lang/reflect/Constructor;)V

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v0, :cond_b

    .line 18
    aget-object v11, v7, v10

    invoke-virtual {v9, v11}, Lcom/fasterxml/jackson/databind/introspect/n;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 19
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/util/g$a;

    invoke-virtual {p0, v9, v8}, Lcom/fasterxml/jackson/databind/introspect/e;->s(Lcom/fasterxml/jackson/databind/util/g$a;Lcom/fasterxml/jackson/databind/util/g$a;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v8

    .line 20
    invoke-interface {p1, v10, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    if-eqz v4, :cond_d

    .line 21
    invoke-virtual {p0, v4, v2}, Lcom/fasterxml/jackson/databind/introspect/e;->q(Lcom/fasterxml/jackson/databind/util/g$a;Lcom/fasterxml/jackson/databind/util/g$a;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/e;->f:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    :cond_d
    :goto_8
    if-ge v1, v0, :cond_f

    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-nez p2, :cond_e

    .line 23
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/util/g$a;

    invoke-virtual {p0, p2, v2}, Lcom/fasterxml/jackson/databind/introspect/e;->s(Lcom/fasterxml/jackson/databind/util/g$a;Lcom/fasterxml/jackson/databind/util/g$a;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object p2

    .line 24
    invoke-interface {p1, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    return-object p1
.end method

.method private j(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/g;->E(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v7, v1, v5

    .line 2
    invoke-static {v7}, Lcom/fasterxml/jackson/databind/introspect/e;->k(Ljava/lang/reflect/Method;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    if-nez v6, :cond_1

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_1
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 6
    :cond_3
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/e;->d:Lcom/fasterxml/jackson/databind/introspect/t;

    .line 7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_4

    .line 9
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_9

    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move-object v10, v3

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_9

    aget-object v11, v7, v9

    .line 11
    invoke-static {v11}, Lcom/fasterxml/jackson/databind/introspect/e;->k(Ljava/lang/reflect/Method;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_6

    :cond_5
    if-nez v10, :cond_6

    .line 12
    new-array v10, v2, [Lcom/fasterxml/jackson/databind/introspect/n;

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v2, :cond_6

    .line 13
    new-instance v13, Lcom/fasterxml/jackson/databind/introspect/n;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Method;

    invoke-direct {v13, v14}, Lcom/fasterxml/jackson/databind/introspect/n;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 14
    :cond_6
    new-instance v12, Lcom/fasterxml/jackson/databind/introspect/n;

    invoke-direct {v12, v11}, Lcom/fasterxml/jackson/databind/introspect/n;-><init>(Ljava/lang/reflect/Method;)V

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v2, :cond_8

    .line 15
    aget-object v14, v10, v13

    invoke-virtual {v12, v14}, Lcom/fasterxml/jackson/databind/introspect/n;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 16
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v12, v1, v11}, Lcom/fasterxml/jackson/databind/introspect/e;->r(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v11

    .line 17
    invoke-interface {v5, v13, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    :goto_7
    if-ge v4, v2, :cond_b

    .line 18
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-nez v7, :cond_a

    .line 19
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 20
    invoke-static {v7, v9, v8, v1}, Lcom/fasterxml/jackson/databind/introspect/o;->e(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/t;)Lcom/fasterxml/jackson/databind/introspect/t;

    move-result-object v10

    .line 21
    invoke-virtual {p0, v7, v10, v3}, Lcom/fasterxml/jackson/databind/introspect/e;->r(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v7

    .line 22
    invoke-interface {v5, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_a
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    return-object v5
.end method

.method private static k(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private m(Lcom/fasterxml/jackson/databind/util/g$a;Lcom/fasterxml/jackson/databind/util/g$a;)Lcom/fasterxml/jackson/databind/introspect/i;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/e;->e:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/g$a;->b()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/m;->e([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/g$a;->b()[Ljava/lang/annotation/Annotation;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/m;->d(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->b()Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/m;->a()Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    return-object p1
.end method

.method private final n(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/i;
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/m;->e([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/m;->d(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->b()Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    return-object p1
.end method

.method private o([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/i;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/e;->e:Z

    if-eqz v0, :cond_2

    .line 2
    array-length v0, p1

    .line 3
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/introspect/i;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->e()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/m;->d(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 5
    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/m;->d(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    .line 6
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->b()Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 7
    :cond_2
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/m;->b:[Lcom/fasterxml/jackson/databind/introspect/i;

    return-object p1
.end method

.method public static p(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/t;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/introspect/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/introspect/t;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lcom/fasterxml/jackson/databind/introspect/c$a;"
        }
    .end annotation

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p5, v0

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/e;

    invoke-direct {v0, p0, p2, p5}, Lcom/fasterxml/jackson/databind/introspect/e;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/t;Z)V

    .line 2
    invoke-virtual {v0, p1, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/e;->l(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c$a;

    move-result-object p0

    return-object p0
.end method

.method private static t(Ljava/lang/reflect/Constructor;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method l(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/c$a;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/e;->i(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/e;->j(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-boolean p2, p0, Lcom/fasterxml/jackson/databind/introspect/e;->e:Z

    if-eqz p2, :cond_4

    .line 4
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/e;->f:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz p2, :cond_0

    .line 5
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/m;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/e;->f:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_2

    .line 8
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/m;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 9
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :cond_3
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_4

    .line 11
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/m;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_4
    new-instance p2, Lcom/fasterxml/jackson/databind/introspect/c$a;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/e;->f:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-direct {p2, p3, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/c$a;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Ljava/util/List;Ljava/util/List;)V

    return-object p2
.end method

.method protected q(Lcom/fasterxml/jackson/databind/util/g$a;Lcom/fasterxml/jackson/databind/util/g$a;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 3

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->d:Lcom/fasterxml/jackson/databind/introspect/t;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/g$a;->a()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/e;->m(Lcom/fasterxml/jackson/databind/util/g$a;Lcom/fasterxml/jackson/databind/util/g$a;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/m;->b:[Lcom/fasterxml/jackson/databind/introspect/i;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/i;[Lcom/fasterxml/jackson/databind/introspect/i;)V

    return-object v0
.end method

.method protected r(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/m;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    .line 3
    new-instance p3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/m;->a()Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/m;->b(I)[Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v0

    invoke-direct {p3, p2, p1, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/i;[Lcom/fasterxml/jackson/databind/introspect/i;)V

    return-object p3

    :cond_0
    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-direct {p0, p1, p3}, Lcom/fasterxml/jackson/databind/introspect/e;->n(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p3

    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/m;->b:[Lcom/fasterxml/jackson/databind/introspect/i;

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/i;[Lcom/fasterxml/jackson/databind/introspect/i;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-direct {p0, p1, p3}, Lcom/fasterxml/jackson/databind/introspect/e;->n(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-nez p3, :cond_2

    const/4 p3, 0x0

    move-object v3, p3

    check-cast v3, [[Ljava/lang/annotation/Annotation;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p3

    .line 9
    :goto_0
    invoke-direct {p0, v2, p3}, Lcom/fasterxml/jackson/databind/introspect/e;->o([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p3

    invoke-direct {v0, p2, p1, v1, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/i;[Lcom/fasterxml/jackson/databind/introspect/i;)V

    return-object v0
.end method

.method protected s(Lcom/fasterxml/jackson/databind/util/g$a;Lcom/fasterxml/jackson/databind/util/g$a;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/g$a;->d()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/m;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    .line 3
    new-instance p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->d:Lcom/fasterxml/jackson/databind/introspect/t;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/g$a;->a()Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/m;->a()Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v2

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/m;->b(I)[Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v0

    invoke-direct {p2, v1, p1, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/i;[Lcom/fasterxml/jackson/databind/introspect/i;)V

    return-object p2

    :cond_0
    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->d:Lcom/fasterxml/jackson/databind/introspect/t;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/g$a;->a()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/e;->m(Lcom/fasterxml/jackson/databind/util/g$a;Lcom/fasterxml/jackson/databind/util/g$a;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/m;->b:[Lcom/fasterxml/jackson/databind/introspect/i;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/i;[Lcom/fasterxml/jackson/databind/introspect/i;)V

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/g$a;->e()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 8
    array-length v2, v1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/g$a;->c()Ljava/lang/Class;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/g;->X(Ljava/lang/Class;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v4, :cond_2

    array-length v4, v1

    add-int/2addr v4, v7

    if-ne v0, v4, :cond_2

    .line 11
    array-length v2, v1

    add-int/2addr v2, v7

    new-array v2, v2, [[Ljava/lang/annotation/Annotation;

    .line 12
    array-length v4, v1

    invoke-static {v1, v5, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    move-object v1, v3

    check-cast v1, [[Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/e;->o([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v3

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    array-length v2, v1

    add-int/2addr v2, v6

    if-ne v0, v2, :cond_3

    .line 16
    array-length v2, v1

    add-int/2addr v2, v6

    new-array v2, v2, [[Ljava/lang/annotation/Annotation;

    .line 17
    array-length v4, v1

    invoke-static {v1, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/m;->c:[Ljava/lang/annotation/Annotation;

    aput-object v1, v2, v5

    .line 19
    move-object v1, v3

    check-cast v1, [[Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/e;->o([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    goto :goto_3

    .line 20
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/g$a;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    array-length p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    const-string p1, "Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations"

    .line 22
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    if-nez p2, :cond_6

    .line 23
    move-object v0, v3

    check-cast v0, [[Ljava/lang/annotation/Annotation;

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/g$a;->e()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 25
    :goto_2
    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/e;->o([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v3

    .line 26
    :goto_3
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/e;->d:Lcom/fasterxml/jackson/databind/introspect/t;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/g$a;->a()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/e;->m(Lcom/fasterxml/jackson/databind/util/g$a;Lcom/fasterxml/jackson/databind/util/g$a;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/i;[Lcom/fasterxml/jackson/databind/introspect/i;)V

    return-object v0
.end method
