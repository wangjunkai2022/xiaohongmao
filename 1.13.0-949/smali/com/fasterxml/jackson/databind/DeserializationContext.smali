.class public abstract Lcom/fasterxml/jackson/databind/DeserializationContext;
.super Lcom/fasterxml/jackson/databind/c;
.source "DeserializationContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final o:J = 0x1L


# instance fields
.field protected final b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

.field protected final c:Lcom/fasterxml/jackson/databind/deser/g;

.field protected final d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

.field protected final e:I

.field protected final f:Lcom/fasterxml/jackson/core/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/core/util/f<",
            "Lcom/fasterxml/jackson/core/StreamReadCapability;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected transient h:Lcom/fasterxml/jackson/core/JsonParser;

.field protected final i:Lcom/fasterxml/jackson/databind/InjectableValues;

.field protected transient j:Lcom/fasterxml/jackson/databind/util/b;

.field protected transient k:Lcom/fasterxml/jackson/databind/util/o;

.field protected transient l:Ljava/text/DateFormat;

.field protected transient m:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

.field protected n:Lcom/fasterxml/jackson/databind/util/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/l<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/c;-><init>()V

    .line 44
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    .line 45
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    .line 46
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 47
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->e:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->e:I

    .line 48
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->f:Lcom/fasterxml/jackson/core/util/f;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->f:Lcom/fasterxml/jackson/core/util/f;

    .line 49
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->g:Ljava/lang/Class;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->g:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->i:Lcom/fasterxml/jackson/databind/InjectableValues;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/c;-><init>()V

    .line 34
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    .line 35
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->f:Lcom/fasterxml/jackson/core/util/f;

    .line 37
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 38
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDeserializationFeatures()I

    move-result p2

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->e:I

    .line 39
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->g:Ljava/lang/Class;

    .line 40
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    .line 41
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->i:Lcom/fasterxml/jackson/databind/InjectableValues;

    .line 42
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->m:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/c;-><init>()V

    .line 24
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    .line 25
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonParser;->O0()Lcom/fasterxml/jackson/core/util/f;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->f:Lcom/fasterxml/jackson/core/util/f;

    .line 27
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 28
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDeserializationFeatures()I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->e:I

    .line 29
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getActiveView()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->g:Ljava/lang/Class;

    .line 30
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    .line 31
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->i:Lcom/fasterxml/jackson/databind/InjectableValues;

    .line 32
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->m:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/g;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/c;-><init>()V

    .line 14
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    .line 15
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    .line 16
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 17
    iget p2, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->e:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->e:I

    .line 18
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->f:Lcom/fasterxml/jackson/core/util/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->f:Lcom/fasterxml/jackson/core/util/f;

    .line 19
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->g:Ljava/lang/Class;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->g:Ljava/lang/Class;

    .line 20
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    .line 21
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->i:Lcom/fasterxml/jackson/databind/InjectableValues;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->i:Lcom/fasterxml/jackson/databind/InjectableValues;

    .line 22
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/DeserializationContext;->m:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->m:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/deser/g;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/g;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/c;-><init>()V

    const-string v0, "Cannot pass null DeserializerFactory"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    invoke-direct {p2}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;-><init>()V

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->e:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->f:Lcom/fasterxml/jackson/core/util/f;

    .line 9
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 10
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->i:Lcom/fasterxml/jackson/databind/InjectableValues;

    .line 11
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->g:Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->m:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    return-void
.end method

.method private o(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->s0()Lcom/fasterxml/jackson/core/h;

    move-result-object v0

    .line 2
    :goto_0
    new-instance v1, Lcom/fasterxml/jackson/databind/node/e;

    invoke-direct {v1, p1, v0}, Lcom/fasterxml/jackson/databind/node/e;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/core/h;)V

    .line 3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/e;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1
.end method


# virtual methods
.method public bufferAsCopyOfValue(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/t;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/t;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/t;->H(Lcom/fasterxml/jackson/core/JsonParser;)V

    return-object v0
.end method

.method public final bufferForInputBuffering()Lcom/fasterxml/jackson/databind/util/t;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/t;

    move-result-object v0

    return-object v0
.end method

.method public bufferForInputBuffering(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/t;
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/util/t;

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/databind/util/t;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-object v0
.end method

.method public final canOverrideAccessModifiers()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    return v0
.end method

.method public abstract checkUnresolvedObjectId()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
        }
    .end annotation
.end method

.method public constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public final constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public abstract deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public endOfInputException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end-of-input when trying to deserialize a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object p1

    return-object p1
.end method

.method public extractScalarFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p3, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    return-object p1
.end method

.method public findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object p1

    return-object p1
.end method

.method public final findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    invoke-virtual {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->findValueDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/g;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->i:Lcom/fasterxml/jackson/databind/InjectableValues;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->k(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "No \'injectableValues\' configured, cannot inject value with id [%s]"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/c;->reportBadDefinition(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/fasterxml/jackson/databind/InjectableValues;->findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    invoke-virtual {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/g;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/h;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->q(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    :goto_0
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/deser/d;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/fasterxml/jackson/databind/deser/d;

    invoke-interface {p1, p0, p2}, Lcom/fasterxml/jackson/databind/deser/d;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/h;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final findNonContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    invoke-virtual {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->findValueDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/g;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    return-object p1
.end method

.method public abstract findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/annotation/c0;)Lcom/fasterxml/jackson/databind/deser/impl/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;",
            "Lcom/fasterxml/jackson/annotation/c0;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/impl/j;"
        }
    .end annotation
.end method

.method public final findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    invoke-virtual {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->findValueDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/g;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/deser/g;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/jsontype/b;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/b;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;

    invoke-direct {v1, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final getActiveView()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public final getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public final getArrayBuilders()Lcom/fasterxml/jackson/databind/util/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->j:Lcom/fasterxml/jackson/databind/util/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/b;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/b;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->j:Lcom/fasterxml/jackson/databind/util/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->j:Lcom/fasterxml/jackson/databind/util/b;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->m:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getContextualType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;

    :goto_0
    return-object v0
.end method

.method public final getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    return-object p1
.end method

.method public final getDeserializationFeatures()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->e:I

    return v0
.end method

.method public getFactory()Lcom/fasterxml/jackson/databind/deser/g;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getParser()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public handleBadMerge(Lcom/fasterxml/jackson/databind/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->IGNORE_MERGE_FOR_UNMERGEABLE:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/d;->handledType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Invalid configuration: values of type %s cannot be merged"

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    throw p1
.end method

.method public handleInstantiationProblem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/l;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/f;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/f;->a(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/fasterxml/jackson/databind/deser/f;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->m(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 7
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "DeserializationProblemHandler.handleInstantiationProblem() for type %s returned value of type %s"

    .line 8
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/g;->u0(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    sget-object p2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 12
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/g;->v0(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 13
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public varargs handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p3

    .line 2
    :cond_0
    invoke-virtual {p0, p4, p5}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 3
    iget-object p5, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p5

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz p5, :cond_3

    .line 4
    invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/util/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/f;->c(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/f;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->m(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 9
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const-string v0, "DeserializationProblemHandler.handleMissingInstantiator() for type %s returned value of type %s"

    .line 10
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    :cond_2
    invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p5

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    new-array p2, v7, [Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v8

    aput-object p4, p2, v6

    const-string p3, "Cannot construct instance of %s: %s"

    .line 13
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/c;->reportBadDefinition(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canInstantiate()Z

    move-result p2

    if-nez p2, :cond_5

    new-array p2, v7, [Ljava/lang/Object;

    .line 16
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v8

    aput-object p4, p2, v6

    const-string p3, "Cannot construct instance of %s (no Creators, like default constructor, exist): %s"

    .line 17
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/c;->reportBadDefinition(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    new-array p2, v7, [Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v8

    aput-object p4, p2, v6

    const-string p3, "Cannot construct instance of %s (although at least one Creator exists): %s"

    .line 20
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v8, [Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public handleMissingTypeId(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/c;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/l;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/f;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/f;->d(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/c;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    const-class p2, Ljava/lang/Void;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "problem handler tried to resolve into non-subtype: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->invalidTypeIdException(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->missingTypeIdException(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
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
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/deser/c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/l;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    invoke-direct {v0, p3, v1}, Lcom/fasterxml/jackson/databind/util/l;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/l;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    .line 3
    :try_start_0
    check-cast p1, Lcom/fasterxml/jackson/databind/deser/c;

    invoke-interface {p1, p0, p2}, Lcom/fasterxml/jackson/databind/deser/c;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    .line 5
    throw p1

    :cond_0
    :goto_0
    return-object p1
.end method

.method public handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
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
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/deser/c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/l;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    invoke-direct {v0, p3, v1}, Lcom/fasterxml/jackson/databind/util/l;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/l;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    .line 3
    :try_start_0
    check-cast p1, Lcom/fasterxml/jackson/databind/deser/c;

    invoke-interface {p1, p0, p2}, Lcom/fasterxml/jackson/databind/deser/c;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->n:Lcom/fasterxml/jackson/databind/util/l;

    .line 5
    throw p1

    :cond_0
    :goto_0
    return-object p1
.end method

.method public handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p4, p5}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 5
    iget-object p5, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p5

    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p5, :cond_2

    .line 6
    invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/util/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/f;->e(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/f;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->m(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-array v1, v6, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 10
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    const-string v0, "DeserializationProblemHandler.handleUnexpectedToken() for type %s returned value of type %s"

    .line 11
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    :cond_1
    invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p5

    goto :goto_0

    :cond_2
    if-nez p4, :cond_4

    .line 13
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p4

    if-nez p2, :cond_3

    new-array p5, v7, [Ljava/lang/Object;

    aput-object p4, p5, v8

    const-string p4, "Unexpected end-of-input when trying read value of type %s"

    .line 14
    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_3
    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p4, p5, v8

    .line 15
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->n(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p5, v7

    aput-object p2, p5, v6

    const-string p4, "Cannot deserialize value of type %s from %s (token `JsonToken.%s`)"

    .line 16
    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 17
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonParser;->S0()Ljava/lang/String;

    :cond_5
    new-array p2, v8, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p0, p1, p4, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    const/4 p1, 0x0

    new-array v5, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/core/JsonToken;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/l;->d()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/f;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/f;->g(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    return v1

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/d;->getKnownPropertyNames()Ljava/util/Collection;

    move-result-object p1

    .line 7
    :goto_1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p2, p3, p4, p1}, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;

    move-result-object p1

    throw p1
.end method

.method public handleUnknownTypeId(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/c;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/l;->d()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/f;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/f;->h(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/c;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    const-class p3, Ljava/lang/Void;

    invoke-virtual {v2, p3}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v2

    .line 5
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "problem handler tried to resolve into non-subtype: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->invalidTypeIdException(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_3
    sget-object p3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_INVALID_SUBTYPE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p3

    if-nez p3, :cond_4

    return-object v1

    .line 10
    :cond_4
    invoke-virtual {p0, p1, p2, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->invalidTypeIdException(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public varargs handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 2
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p4

    :goto_0
    if-eqz p4, :cond_3

    .line 3
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/f;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/f;->i(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/f;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 6
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, p4

    const/4 p4, 0x1

    .line 7
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p4

    const-string p4, "DeserializationProblemHandler.handleWeirdStringValue() for type %s returned value of type %s"

    .line 8
    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_1
    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p4

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public handleWeirdNativeValue(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/l;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/f;

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/f;->j(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/fasterxml/jackson/databind/deser/f;->a:Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const/4 p1, 0x1

    .line 7
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p1

    const-string p1, "DeserializationProblemHandler.handleWeirdNativeValue() for type %s returned value of type %s"

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_1
    return-object v2

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdNativeValueException(Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public varargs handleWeirdNumberValue(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 2
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p4

    :goto_0
    if-eqz p4, :cond_2

    .line 3
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/f;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/f;->k(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/f;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->m(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object v0

    :cond_0
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 6
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, p4

    const/4 p4, 0x1

    .line 7
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p4

    const-string p4, "DeserializationProblemHandler.handleWeirdNumberValue() for type %s returned value of type %s"

    .line 8
    invoke-virtual {p0, p4, p3}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdNumberException(Ljava/lang/Number;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 9
    :cond_1
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p4

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdNumberException(Ljava/lang/Number;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public varargs handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 2
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getProblemHandlers()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p4

    :goto_0
    if-eqz p4, :cond_2

    .line 3
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/f;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/f;->l(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/f;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->m(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object v0

    :cond_0
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 6
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, p4

    const/4 p4, 0x1

    .line 7
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->D(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p4

    const-string p4, "DeserializationProblemHandler.handleWeirdStringValue() for type %s returned value of type %s"

    .line 8
    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 9
    :cond_1
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/l;->c()Lcom/fasterxml/jackson/databind/util/l;

    move-result-object p4

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public final hasDeserializationFeatures(I)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->e:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hasSomeOfFeatures(I)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasValueDeserializerFor(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->b:Lcom/fasterxml/jackson/databind/deser/DeserializerCache;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->c:Lcom/fasterxml/jackson/databind/deser/g;

    invoke-virtual {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->hasValueDeserializerFor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/g;Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/DatabindException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    throw p1

    :catch_1
    move-exception p1

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string p2, "Cannot construct instance of %s: %s"

    .line 8
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    .line 10
    invoke-static {v0, p2, p1}, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;

    move-result-object p1

    return-object p1
.end method

.method public instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string v0, "N/A"

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->q(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Cannot construct instance of %s, problem: %s"

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-static {v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;

    move-result-object p1

    return-object p1
.end method

.method public invalidTypeIdException(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 1
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Could not resolve type id \'%s\' as a subtype of %s"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p0, v0, p3}, Lcom/fasterxml/jackson/databind/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;

    move-result-object p1

    return-object p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/StreamReadCapability;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->f:Lcom/fasterxml/jackson/core/util/f;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/f;->d(Lcom/fasterxml/jackson/core/util/e;)Z

    move-result p1

    return p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->e:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    return p1
.end method

.method public abstract keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method protected l()Ljava/text/DateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->l:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->l:Ljava/text/DateFormat;

    return-object v0
.end method

.method public final leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/o;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->k:Lcom/fasterxml/jackson/databind/util/o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/o;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/o;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->k:Lcom/fasterxml/jackson/databind/util/o;

    :goto_0
    return-object v0
.end method

.method protected m(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->A0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/core/JsonToken;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Cannot deserialize instance of %s out of %s token"

    .line 6
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public varargs mappingException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public missingTypeIdException(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Could not resolve subtype of %s"

    .line 1
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v1, p2, p1, v0}, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;

    move-result-object p1

    return-object p1
.end method

.method protected n(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationContext$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "[Unavailable value]"

    return-object p1

    :pswitch_0
    const-string p1, "Null value"

    return-object p1

    :pswitch_1
    const-string p1, "String value"

    return-object p1

    :pswitch_2
    const-string p1, "Integer value"

    return-object p1

    :pswitch_3
    const-string p1, "Floating-point value"

    return-object p1

    :pswitch_4
    const-string p1, "Embedded Object"

    return-object p1

    :pswitch_5
    const-string p1, "Boolean value"

    return-object p1

    :pswitch_6
    const-string p1, "Array value"

    return-object p1

    :pswitch_7
    const-string p1, "Object value"

    return-object p1

    :cond_0
    const-string p1, "<end of input>"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected p()Ljava/text/DateFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->l()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->l()Ljava/text/DateFormat;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 4
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->q(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Failed to parse Date value \'%s\': %s"

    .line 5
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readPropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p3, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->i0(Lcom/fasterxml/jackson/databind/util/n;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Could not find JsonDeserializer for type %s (via property %s)"

    .line 4
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readPropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->readPropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->missingNode()Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->d:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    const-class v1, Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p0}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    return-object p1
.end method

.method public readTreeAsValue(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/e;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->o(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/e;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/e;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 9
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    .line 10
    :try_start_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/e;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
.end method

.method public readTreeAsValue(Lcom/fasterxml/jackson/databind/e;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/e;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->o(Lcom/fasterxml/jackson/databind/e;)Lcom/fasterxml/jackson/databind/node/e;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/e;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 4
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    .line 5
    :try_start_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/e;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
.end method

.method public readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find JsonDeserializer for type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs reportBadCoercion(Lcom/fasterxml/jackson/databind/d;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p4, p5}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p4

    invoke-static {p4, p1, p3, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object p1

    .line 3
    throw p1
.end method

.method public reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {v0, p2, p1}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    throw p1
.end method

.method public reportBadMerge(Lcom/fasterxml/jackson/databind/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleBadMerge(Lcom/fasterxml/jackson/databind/d;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->i0(Lcom/fasterxml/jackson/databind/util/n;)Ljava/lang/String;

    move-result-object p4

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    aput-object v0, v1, p4

    const/4 p4, 0x2

    aput-object p3, v1, p4

    const-string p3, "Invalid definition for property %s (of type %s): %s"

    .line 4
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 5
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p4, p3, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/b;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/b;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const-string p2, "Invalid type definition for type %s: %s"

    .line 3
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    const/4 v0, 0x0

    invoke-static {p3, p2, p1, v0}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportInputMismatch(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/BeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/BeanProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :cond_1
    throw p2
.end method

.method public varargs reportInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportInputMismatch(Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/d;->handledType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportInputMismatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportMissingContent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "No content to map due to end-of-input"

    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs reportPropertyInputMismatch(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p4

    invoke-static {p4, p1, p3}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :cond_0
    throw p3
.end method

.method public reportTrailingTokens(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/core/JsonToken;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 1
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string p3, "Trailing token (of type %s) found after value (bound as %s): not allowed as per `DeserializationFeature.FAIL_ON_TRAILING_TOKENS`"

    .line 2
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object p1

    throw p1
.end method

.method public reportUnknownProperty(Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/d;->getKnownPropertyNames()Ljava/util/Collection;

    move-result-object p3

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public reportUnresolvedObjectId(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string p2, "No Object Id found for an instance of %s, to assign to property \'%s\'"

    .line 2
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportWrongTokenException(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p4

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportWrongTokenException(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;",
            "Lcom/fasterxml/jackson/core/JsonToken;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/d;->handledType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportWrongTokenException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/core/JsonToken;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p4

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public final returnObjectBuffer(Lcom/fasterxml/jackson/databind/util/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->k:Lcom/fasterxml/jackson/databind/util/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/o;->h()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->k:Lcom/fasterxml/jackson/databind/util/o;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/o;->h()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->k:Lcom/fasterxml/jackson/databind/util/o;

    :cond_1
    return-void
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/DeserializationContext;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->m:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;->withPerCallAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->m:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    return-object p0
.end method

.method public bridge synthetic setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/DeserializationContext;

    move-result-object p1

    return-object p1
.end method

.method public unknownTypeException(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 1
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->P(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "Could not resolve type id \'%s\' into a subtype of %s"

    .line 2
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {p3, p1, p2}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object p1

    return-object p1
.end method

.method public weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string p3, "Cannot deserialize Map key of type %s from String %s: %s"

    .line 3
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {v0, p3, p2, p1}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object p1

    return-object p1
.end method

.method public weirdNativeValueException(Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Cannot deserialize value of type %s from native value (`JsonToken.VALUE_EMBEDDED_OBJECT`) of type %s: incompatible types"

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object p1

    return-object p1
.end method

.method public weirdNumberException(Ljava/lang/Number;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string p3, "Cannot deserialize value of type %s from number %s: %s"

    .line 3
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {v0, p3, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object p1

    return-object p1
.end method

.method public weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string p3, "Cannot deserialize value of type %s from String %s: %s"

    .line 2
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->h:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-static {v0, p3, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object p1

    return-object p1
.end method

.method public wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string p3, "Unexpected token (%s), expected %s"

    .line 2
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object p1

    return-object p1
.end method

.method public wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/core/JsonToken;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string p3, "Unexpected token (%s), expected %s"

    .line 6
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object p1

    return-object p1
.end method
