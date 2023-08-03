.class public Lcom/fasterxml/jackson/databind/util/r;
.super Lcom/fasterxml/jackson/databind/introspect/k;
.source "SimpleBeanPropertyDefinition.java"


# instance fields
.field protected final b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field protected final d:Lcom/fasterxml/jackson/databind/PropertyMetadata;

.field protected final e:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected final f:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/k;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/r;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/r;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez p4, :cond_0

    .line 5
    sget-object p4, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    :cond_0
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/util/r;->d:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 6
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/util/r;->f:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-void
.end method

.method public static E(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/r;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/r;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/fasterxml/jackson/databind/util/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    sget-object v5, Lcom/fasterxml/jackson/databind/introspect/k;->a:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/r;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    return-object v6
.end method

.method public static F(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/util/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/r;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/k;->a:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/fasterxml/jackson/databind/util/r;->I(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/util/r;

    move-result-object p0

    return-object p0
.end method

.method public static G(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/util/r;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/databind/PropertyMetadata;",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/r;"
        }
    .end annotation

    if-eqz p4, :cond_1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {p4, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->construct(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p4

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object p4, Lcom/fasterxml/jackson/databind/introspect/k;->a:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    :goto_1
    move-object v5, p4

    .line 4
    new-instance p4, Lcom/fasterxml/jackson/databind/util/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    move-object v0, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/r;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    return-object p4
.end method

.method public static I(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/util/r;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/databind/PropertyMetadata;",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/r;"
        }
    .end annotation

    new-instance v6, Lcom/fasterxml/jackson/databind/util/r;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/r;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    return-object v6
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public C(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/k;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/r;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/r;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/r;->d:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/r;->f:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/util/r;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    return-object v0
.end method

.method public D(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/k;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasNamespace()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/r;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/r;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    new-instance v4, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v4, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/r;->d:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/r;->f:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/util/r;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    return-object v0
.end method

.method public J(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/introspect/k;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->f:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/r;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/r;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/util/r;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/r;->d:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/util/r;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    return-object v0
.end method

.method public K(Lcom/fasterxml/jackson/databind/PropertyMetadata;)Lcom/fasterxml/jackson/databind/introspect/k;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->d:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/r;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/r;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/util/r;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/r;->f:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/util/r;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    return-object v0
.end method

.method public c()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->f:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0
.end method

.method public getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0
.end method

.method public getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->d:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/r;->i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/databind/util/g;->p()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public m()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/r;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0
.end method

.method public r()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/a;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    return v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    return v0
.end method

.method public w()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/r;->m()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x(Lcom/fasterxml/jackson/databind/PropertyName;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/r;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public y()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/r;->t()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
