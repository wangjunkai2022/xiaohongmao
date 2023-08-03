.class public Lcom/fasterxml/jackson/databind/deser/a;
.super Ljava/lang/Object;
.source "BeanDeserializerBuilder.java"


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

.field protected final b:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field protected final c:Lcom/fasterxml/jackson/databind/b;

.field protected final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

.field protected j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

.field protected k:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

.field protected l:Z

.field protected m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

.field protected n:Lc2/e$a;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->d:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    .line 4
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/a;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/a;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->d:Ljava/util/Map;

    .line 8
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    .line 9
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/a;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/a;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 10
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 11
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/a;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->e:Ljava/util/List;

    .line 13
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/a;->f:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/a;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->f:Ljava/util/HashMap;

    .line 14
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/a;->g:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->g:Ljava/util/HashSet;

    .line 15
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/a;->h:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->h:Ljava/util/HashSet;

    .line 16
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/a;->i:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->i:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 17
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/a;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 18
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/a;->k:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->k:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    .line 19
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/a;->l:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->l:Z

    .line 20
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/a;->m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 21
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/a;->n:Lc2/e$a;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/a;->n:Lc2/e$a;

    return-void
.end method

.method private static b(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static c(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public A(Lcom/fasterxml/jackson/databind/PropertyName;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/a;->r(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public B(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object p1
.end method

.method public C(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->k:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "_anySetter already set to non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/a;->k:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    return-void
.end method

.method public D(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/a;->l:Z

    return-void
.end method

.method public E(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/a;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    return-void
.end method

.method public F(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lc2/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/a;->m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 2
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/a;->n:Lc2/e$a;

    return-void
.end method

.method public G(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/a;->i:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    return-void
.end method

.method protected a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyAliases(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    :cond_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method protected d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/b;->l(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected e(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->fixAccess(Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/a;->f(Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/a;->k:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz p1, :cond_1

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->fixAccess(Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/a;->f(Ljava/lang/IllegalArgumentException;)V

    .line 8
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/a;->m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz p1, :cond_2

    .line 9
    :try_start_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/a;->f(Ljava/lang/IllegalArgumentException;)V

    :cond_2
    :goto_2
    return-void
.end method

.method protected f(Ljava/lang/IllegalArgumentException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/b;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/DatabindException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    :cond_0
    throw v0
.end method

.method public g(Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->f:Ljava/util/HashMap;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->fixAccess(Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/a;->f(Ljava/lang/IllegalArgumentException;)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/a;->m(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->g:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->g:Ljava/util/HashSet;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->h:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->h:Ljava/util/HashSet;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/a;->e:Ljava/util/List;

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/a;->e:Ljava/util/List;

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    :try_start_0
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p3

    invoke-virtual {p4, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 5
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/deser/a;->f(Ljava/lang/IllegalArgumentException;)V

    .line 6
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/a;->e:Ljava/util/List;

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public l(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Z)V
    .locals 1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/a;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public m(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public n()Lcom/fasterxml/jackson/databind/d;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/a;->e(Ljava/util/Collection;)V

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 4
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/a;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/a;->d()Z

    move-result v3

    .line 6
    invoke-static {v1, v0, v2, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Collection;Ljava/util/Map;Z)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .line 8
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v3, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 10
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasViews()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    move v13, v2

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/a;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    sget-object v3, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-direct {v0, v2, v3}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 13
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    move-result-object v1

    :cond_2
    move-object v8, v1

    .line 14
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/a;->f:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/a;->g:Ljava/util/HashSet;

    iget-boolean v11, p0, Lcom/fasterxml/jackson/databind/deser/a;->l:Z

    iget-object v12, p0, Lcom/fasterxml/jackson/databind/deser/a;->h:Ljava/util/HashSet;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/a;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLjava/util/Set;Z)V

    return-object v0
.end method

.method public o()Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;
    .locals 4

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/a;->f:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/a;->d:Ljava/util/Map;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/a;Lcom/fasterxml/jackson/databind/b;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public p(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    .line 4
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    aput-object p2, v2, v3

    const-string p2, "Builder class %s does not have build method (name: \'%s\')"

    .line 5
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {v0, v4, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/a;->m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 12
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 13
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v3

    .line 14
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v2

    const-string p2, "Build method `%s` has wrong return type (%s), not compatible with POJO type (%s)"

    .line 15
    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {v0, v4, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/a;->d:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    .line 18
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/a;->e(Ljava/util/Collection;)V

    .line 19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 20
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/a;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/a;->d()Z

    move-result v2

    .line 22
    invoke-static {v0, p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Collection;Ljava/util/Map;Z)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .line 24
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/a;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-nez v1, :cond_3

    .line 25
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 26
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasViews()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_3
    move v3, v1

    .line 27
    :goto_1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/a;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz p2, :cond_4

    .line 28
    new-instance p2, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/a;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    sget-object v2, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-direct {p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 29
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    move-result-object v0

    .line 30
    :cond_4
    invoke-virtual {p0, p1, v0, v3}, Lcom/fasterxml/jackson/databind/deser/a;->q(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Z)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1
.end method

.method protected q(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Z)Lcom/fasterxml/jackson/databind/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    new-instance v10, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/a;->c:Lcom/fasterxml/jackson/databind/b;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/a;->f:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/a;->g:Ljava/util/HashSet;

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/deser/a;->l:Z

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/a;->h:Ljava/util/HashSet;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/a;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/Set;ZLjava/util/Set;Z)V

    return-object v10
.end method

.method public r(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object p1
.end method

.method public s()Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->k:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    return-object v0
.end method

.method public t()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public u()Lc2/e$a;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->n:Lc2/e$a;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public w()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    return-object v0
.end method

.method public x()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->i:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    return-object v0
.end method

.method public z(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/a;->g:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/a;->h:Ljava/util/HashSet;

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->c(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
