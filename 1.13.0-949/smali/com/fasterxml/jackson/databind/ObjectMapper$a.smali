.class Lcom/fasterxml/jackson/databind/ObjectMapper$a;
.super Ljava/lang/Object;
.source "ObjectMapper.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/j;)Lcom/fasterxml/jackson/databind/ObjectMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->b:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    return-object v0
.end method

.method public B(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/fasterxml/jackson/databind/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/g;->withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/a;)Lcom/fasterxml/jackson/databind/deser/g;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/g;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public b(Lcom/fasterxml/jackson/databind/ser/l;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->j:Lcom/fasterxml/jackson/databind/ser/k;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/k;->withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/l;)Lcom/fasterxml/jackson/databind/ser/k;

    move-result-object p1

    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->j:Lcom/fasterxml/jackson/databind/ser/k;

    return-void
.end method

.method public c(Lcom/fasterxml/jackson/databind/deser/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/g;->withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/i;)Lcom/fasterxml/jackson/databind/deser/g;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/g;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public d()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->version()Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/fasterxml/jackson/databind/deser/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/g;->withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/j;)Lcom/fasterxml/jackson/databind/deser/g;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/g;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public f(Lcom/fasterxml/jackson/databind/deser/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/g;->withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/o;)Lcom/fasterxml/jackson/databind/deser/g;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/g;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public varargs g([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    return-void
.end method

.method public h()Lcom/fasterxml/jackson/core/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lcom/fasterxml/jackson/core/h;",
            ">()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public i(Lcom/fasterxml/jackson/databind/type/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->b:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 2
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->withModifier(Lcom/fasterxml/jackson/databind/type/b;)Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public j(Lcom/fasterxml/jackson/databind/ser/l;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->j:Lcom/fasterxml/jackson/databind/ser/k;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/k;->withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/l;)Lcom/fasterxml/jackson/databind/ser/k;

    move-result-object p1

    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->j:Lcom/fasterxml/jackson/databind/ser/k;

    return-void
.end method

.method public k(Lcom/fasterxml/jackson/databind/deser/f;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addHandler(Lcom/fasterxml/jackson/databind/deser/f;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public l(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->k:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->k:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->h:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->h:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-void
.end method

.method public varargs m([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Ljava/lang/Class;)V

    return-void
.end method

.method public n(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result p1

    return p1
.end method

.method public o(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public q(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    return p1
.end method

.method public s(Lcom/fasterxml/jackson/databind/ser/d;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->j:Lcom/fasterxml/jackson/databind/ser/k;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/k;->withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/d;)Lcom/fasterxml/jackson/databind/ser/k;

    move-result-object p1

    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->j:Lcom/fasterxml/jackson/databind/ser/k;

    return-void
.end method

.method public t(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes(Ljava/util/Collection;)V

    return-void
.end method

.method public u(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result p1

    return p1
.end method

.method public v(Lcom/fasterxml/jackson/databind/deser/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/g;->withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/b;)Lcom/fasterxml/jackson/databind/deser/g;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/g;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public w(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->k:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->k:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->h:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->h:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-void
.end method

.method public x(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public y(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    return p1
.end method

.method public z(Lcom/fasterxml/jackson/databind/introspect/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->k:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->with(Lcom/fasterxml/jackson/databind/introspect/l;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->k:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$a;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->h:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->with(Lcom/fasterxml/jackson/databind/introspect/l;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iput-object p1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->h:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-void
.end method
