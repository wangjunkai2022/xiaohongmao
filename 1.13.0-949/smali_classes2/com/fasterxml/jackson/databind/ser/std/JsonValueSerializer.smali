.class public Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "JsonValueSerializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/e;
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/d;
.implements Ld2/c;


# annotations
.annotation runtime Lc2/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/ser/e;",
        "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/d;",
        "Ld2/c;"
    }
.end annotation


# instance fields
.field protected final d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field protected final e:Lcom/fasterxml/jackson/databind/jsontype/f;

.field protected final f:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected final h:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final i:Z

.field protected transient j:Lcom/fasterxml/jackson/databind/ser/impl/c;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/a;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/a;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->h:Lcom/fasterxml/jackson/databind/JavaType;

    .line 4
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->e:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 5
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->f:Lcom/fasterxml/jackson/databind/g;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->g:Lcom/fasterxml/jackson/databind/BeanProperty;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->i:Z

    .line 8
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/c;->c()Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->j:Lcom/fasterxml/jackson/databind/ser/impl/c;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;Z)V"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->x(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 11
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 12
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->h:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->h:Lcom/fasterxml/jackson/databind/JavaType;

    .line 13
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->e:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 14
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->f:Lcom/fasterxml/jackson/databind/g;

    .line 15
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->g:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 16
    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->i:Z

    .line 17
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/c;->c()Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->j:Lcom/fasterxml/jackson/databind/ser/impl/c;

    return-void
.end method

.method private static final x(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-class p0, Ljava/lang/Object;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->X(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->v(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->f:Lcom/fasterxml/jackson/databind/g;

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/e;->a()Lcom/fasterxml/jackson/databind/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->h:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->g:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/l;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;->j(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/a;

    return-void

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->h:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/g;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-void
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->e:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/f;->b(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->f:Lcom/fasterxml/jackson/databind/g;

    if-nez v1, :cond_4

    .line 4
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->h:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->g:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-eq p2, p1, :cond_2

    .line 6
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->i:Z

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->z(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Z)Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0

    .line 7
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->h:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/l;->findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->h:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->y(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Z

    move-result v1

    .line 9
    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->z(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Z)Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/l;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    .line 11
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->i:Z

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->z(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Z)Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    move-result-object p1

    return-object p1
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/l;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->f:Lcom/fasterxml/jackson/databind/g;

    instance-of v0, p2, Ld2/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ld2/c;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ld2/c;->getSchema(Lcom/fasterxml/jackson/databind/l;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Ld2/a;->a()Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->f:Lcom/fasterxml/jackson/databind/g;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->w(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;

    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;-><init>(Lcom/fasterxml/jackson/databind/JsonMappingException;)V

    throw p2

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/g;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, v0, p1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/l;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->f:Lcom/fasterxml/jackson/databind/g;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->w(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->e:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/g;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    :goto_1
    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, v0, p1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/l;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->f:Lcom/fasterxml/jackson/databind/g;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->w(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->i:Z

    if-eqz v2, :cond_2

    .line 7
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 8
    invoke-virtual {p4, p1, v2}, Lcom/fasterxml/jackson/databind/jsontype/f;->f(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object p1

    .line 9
    invoke-virtual {p4, p2, p1}, Lcom/fasterxml/jackson/databind/jsontype/f;->o(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object p1

    .line 10
    invoke-virtual {v1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    .line 11
    invoke-virtual {p4, p2, p1}, Lcom/fasterxml/jackson/databind/jsontype/f;->v(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    return-void

    .line 12
    :cond_2
    :goto_1
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;

    invoke-direct {v2, p4, p1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;-><init>(Lcom/fasterxml/jackson/databind/jsontype/f;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v1, v0, p2, p3, v2}, Lcom/fasterxml/jackson/databind/g;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(@JsonValue serializer for method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected v(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;->i(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/l;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    invoke-virtual {p3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :goto_1
    instance-of p2, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->t0(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->d:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 9
    :cond_1
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/m;->b(Ljava/util/Set;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected w(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->j:Lcom/fasterxml/jackson/databind/ser/impl/c;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->h:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->h:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/l;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->g:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/l;->findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->j:Lcom/fasterxml/jackson/databind/ser/impl/c;

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/c;->a(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->b:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->j:Lcom/fasterxml/jackson/databind/ser/impl/c;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->g:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/l;->findPrimaryPropertySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    .line 8
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->j:Lcom/fasterxml/jackson/databind/ser/impl/c;

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/c;->b(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->b:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->j:Lcom/fasterxml/jackson/databind/ser/impl/c;

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected y(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    return v1

    .line 3
    :cond_0
    const-class v0, Ljava/lang/String;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->n(Lcom/fasterxml/jackson/databind/g;)Z

    move-result p1

    return p1
.end method

.method protected z(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Z)Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;Z)",
            "Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->g:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->e:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->f:Lcom/fasterxml/jackson/databind/g;

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->i:Z

    if-ne p4, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Z)V

    return-object v0
.end method
