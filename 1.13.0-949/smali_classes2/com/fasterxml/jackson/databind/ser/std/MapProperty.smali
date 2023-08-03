.class public Lcom/fasterxml/jackson/databind/ser/std/MapProperty;
.super Lcom/fasterxml/jackson/databind/ser/PropertyWriter;
.source "MapProperty.java"


# static fields
.field private static final k:J = 0x1L

.field private static final l:Lcom/fasterxml/jackson/databind/BeanProperty;


# instance fields
.field protected final e:Lcom/fasterxml/jackson/databind/jsontype/f;

.field protected final f:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected g:Ljava/lang/Object;

.field protected h:Ljava/lang/Object;

.field protected i:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/BeanProperty$a;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/BeanProperty$a;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->l:Lcom/fasterxml/jackson/databind/BeanProperty;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->e:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-nez p2, :cond_1

    .line 3
    sget-object p2, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->l:Lcom/fasterxml/jackson/databind/BeanProperty;

    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->f:Lcom/fasterxml/jackson/databind/BeanProperty;

    return-void
.end method


# virtual methods
.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/k;Lcom/fasterxml/jackson/databind/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->f:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/k;Lcom/fasterxml/jackson/databind/l;)V

    return-void
.end method

.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->f:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/BeanProperty;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->f:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/BeanProperty;->getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->f:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->f:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/BeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->f:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/BeanProperty;->getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    return-object v0
.end method

.method public reset(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->h:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->reset(Ljava/lang/Object;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;)V

    return-void
.end method

.method public reset(Ljava/lang/Object;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->g:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->h:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->i:Lcom/fasterxml/jackson/databind/g;

    .line 4
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->j:Lcom/fasterxml/jackson/databind/g;

    return-void
.end method

.method public serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->e:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->j:Lcom/fasterxml/jackson/databind/g;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->j:Lcom/fasterxml/jackson/databind/g;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/fasterxml/jackson/databind/g;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    :goto_0
    return-void
.end method

.method public serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->i:Lcom/fasterxml/jackson/databind/g;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->g:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->e:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->j:Lcom/fasterxml/jackson/databind/g;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->j:Lcom/fasterxml/jackson/databind/g;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/fasterxml/jackson/databind/g;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    :goto_0
    return-void
.end method

.method public serializeAsOmittedField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->q()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->t1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->h:Ljava/lang/Object;

    return-void
.end method
