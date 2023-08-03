.class public Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "StdKeyDeserializers.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/j;
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/fasterxml/jackson/databind/introspect/b;)Z
    .locals 0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->e(Lcom/fasterxml/jackson/databind/introspect/b;)Z

    move-result p0

    return p0
.end method

.method private static b(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/h;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/fasterxml/jackson/databind/util/g;->i(Ljava/lang/reflect/Member;Z)V

    .line 5
    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$c;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$c;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object p0

    .line 6
    :cond_1
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/fasterxml/jackson/databind/util/g;->i(Ljava/lang/reflect/Member;Z)V

    .line 9
    :cond_2
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$d;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$d;-><init>(Ljava/lang/reflect/Method;)V

    return-object p0
.end method

.method private static c(Ljava/util/List;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/b<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;",
            ">;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/b;

    .line 2
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/b;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/introspect/b;->a:Lcom/fasterxml/jackson/databind/introspect/a;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, v1, Lcom/fasterxml/jackson/databind/introspect/b;->a:Lcom/fasterxml/jackson/databind/introspect/a;

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple suitable annotated Creator factory methods to be used as the Key deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public static constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/h;"
        }
    .end annotation

    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$a;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$a;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)V

    return-object p0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/h;
    .locals 2

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$b;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/h;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$b;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$b;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method private static d(Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/introspect/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/b<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            "Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/b;->C()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/b;

    .line 2
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/b;->a:Lcom/fasterxml/jackson/databind/introspect/a;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v1

    if-ne v2, v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic e(Lcom/fasterxml/jackson/databind/introspect/b;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/b;->a:Lcom/fasterxml/jackson/databind/introspect/a;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/b;->a:Lcom/fasterxml/jackson/databind/introspect/a;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 2
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/b;->b:Ljava/lang/Object;

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->d(Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/introspect/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/b;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/introspect/b;->a:Lcom/fasterxml/jackson/databind/introspect/a;

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->b(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/h;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/b;->E()Ljava/util/List;

    move-result-object p1

    .line 6
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/d;->a:Lcom/fasterxml/jackson/databind/deser/std/d;

    invoke-interface {p1, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 7
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->c(Ljava/util/List;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->b(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/h;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/introspect/b;->a:Lcom/fasterxml/jackson/databind/introspect/a;

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->b(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/h;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/b;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/b;->a:Lcom/fasterxml/jackson/databind/introspect/a;

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->b(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/h;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/h;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->A0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;

    move-result-object p1

    return-object p1
.end method
