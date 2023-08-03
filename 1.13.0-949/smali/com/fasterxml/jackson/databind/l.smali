.class public abstract Lcom/fasterxml/jackson/databind/l;
.super Lcom/fasterxml/jackson/databind/c;
.source "SerializerProvider.java"


# static fields
.field public static final DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected static final n:Z = false

.field protected static final o:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final d:Lcom/fasterxml/jackson/databind/ser/k;

.field protected final e:Lcom/fasterxml/jackson/databind/ser/j;

.field protected transient f:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

.field protected g:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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

.field protected final k:Lcom/fasterxml/jackson/databind/ser/impl/d;

.field protected l:Ljava/text/DateFormat;

.field protected final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

    const-string v1, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/l;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/g;

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/l;->o:Lcom/fasterxml/jackson/databind/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/c;-><init>()V

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/l;->o:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->g:Lcom/fasterxml/jackson/databind/g;

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/databind/l;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->j:Lcom/fasterxml/jackson/databind/g;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 6
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->d:Lcom/fasterxml/jackson/databind/ser/k;

    .line 7
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/j;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ser/j;-><init>()V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    .line 8
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    .line 9
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->c:Ljava/lang/Class;

    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->f:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/l;->m:Z

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/l;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/c;-><init>()V

    .line 28
    sget-object v0, Lcom/fasterxml/jackson/databind/l;->o:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->g:Lcom/fasterxml/jackson/databind/g;

    .line 29
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    .line 30
    sget-object v0, Lcom/fasterxml/jackson/databind/l;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->j:Lcom/fasterxml/jackson/databind/g;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 32
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->c:Ljava/lang/Class;

    .line 33
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->d:Lcom/fasterxml/jackson/databind/ser/k;

    .line 34
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    .line 35
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/j;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/j;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    .line 36
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/l;->g:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->g:Lcom/fasterxml/jackson/databind/g;

    .line 37
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/l;->h:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->h:Lcom/fasterxml/jackson/databind/g;

    .line 38
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    .line 39
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/l;->j:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->j:Lcom/fasterxml/jackson/databind/g;

    .line 40
    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/l;->m:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/l;->m:Z

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/k;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/c;-><init>()V

    .line 13
    sget-object v0, Lcom/fasterxml/jackson/databind/l;->o:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->g:Lcom/fasterxml/jackson/databind/g;

    .line 14
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    .line 15
    sget-object v0, Lcom/fasterxml/jackson/databind/l;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->j:Lcom/fasterxml/jackson/databind/g;

    .line 16
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/l;->d:Lcom/fasterxml/jackson/databind/ser/k;

    .line 17
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 18
    iget-object p3, p1, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    .line 19
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/l;->g:Lcom/fasterxml/jackson/databind/g;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/l;->g:Lcom/fasterxml/jackson/databind/g;

    .line 20
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/l;->h:Lcom/fasterxml/jackson/databind/g;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/l;->h:Lcom/fasterxml/jackson/databind/g;

    .line 21
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    .line 22
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/l;->j:Lcom/fasterxml/jackson/databind/g;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/l;->j:Lcom/fasterxml/jackson/databind/g;

    if-ne v1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/l;->m:Z

    .line 24
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getActiveView()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/l;->c:Ljava/lang/Class;

    .line 25
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/l;->f:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 26
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/ser/j;->h()Lcom/fasterxml/jackson/databind/ser/impl/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    return-void
.end method


# virtual methods
.method public final bufferForValueConversion()Lcom/fasterxml/jackson/databind/util/t;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/l;->bufferForValueConversion(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/databind/util/t;

    move-result-object v0

    return-object v0
.end method

.method public bufferForValueConversion(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/databind/util/t;
    .locals 2

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/util/t;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/util/t;-><init>(Lcom/fasterxml/jackson/core/h;Z)V

    return-object v0
.end method

.method public final canOverrideAccessModifiers()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    return v0
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public defaultSerializeDateKey(JLcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->o()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public defaultSerializeDateKey(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->o()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeDateValue(JLcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->b1(J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->o()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->P1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeDateValue(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b1(J)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->o()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->P1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeField(Ljava/lang/String;Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_1

    .line 2
    iget-boolean p2, p0, Lcom/fasterxml/jackson/databind/l;->m:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    invoke-virtual {p2, p1, p3, p0}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lcom/fasterxml/jackson/databind/l;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p0}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/l;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/l;->m:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    invoke-virtual {p1, v0, p2, p0}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lcom/fasterxml/jackson/databind/l;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    :goto_0
    return-void
.end method

.method public findContentValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d;->f(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/j;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/l;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method public findContentValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d;->g(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/j;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/j;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/l;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method public findKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->d:Lcom/fasterxml/jackson/databind/ser/k;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/l;->h:Lcom/fasterxml/jackson/databind/g;

    invoke-virtual {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/k;->createKeySerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/l;->q(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method public findKeySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/l;->findKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method public findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/l;->j:Lcom/fasterxml/jackson/databind/g;

    return-object p1
.end method

.method public findNullValueSerializer(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    return-object p1
.end method

.method public abstract findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/f;"
        }
    .end annotation
.end method

.method public findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d;->f(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/j;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/l;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method public findPrimaryPropertySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d;->g(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/j;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/j;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/l;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method public findTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->d:Lcom/fasterxml/jackson/databind/ser/k;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/k;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p1

    return-object p1
.end method

.method public findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d;->d(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/j;->j(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/l;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/l;->d:Lcom/fasterxml/jackson/databind/ser/k;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/ser/k;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1, p3}, Lcom/fasterxml/jackson/databind/jsontype/f;->b(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p3

    .line 15
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/e;

    invoke-direct {v1, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/e;-><init>(Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    move-object v0, v1

    :cond_2
    if-eqz p2, :cond_3

    .line 16
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/ser/j;->e(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)V

    :cond_3
    return-object v0
.end method

.method public findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d;->e(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/j;->k(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/l;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/l;->d:Lcom/fasterxml/jackson/databind/ser/k;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 5
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/k;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, p3}, Lcom/fasterxml/jackson/databind/jsontype/f;->b(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p3

    .line 8
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/e;

    invoke-direct {v1, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/e;-><init>(Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    move-object v0, v1

    :cond_2
    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/ser/j;->f(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V

    :cond_3
    return-object v0
.end method

.method public findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
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

    .line 18
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d;->f(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/j;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Null passed for `valueType` of `findValueSerializer()`"

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/l;->reportMappingProblem(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d;->f(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/j;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/l;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method public findValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 13
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d;->g(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/j;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/j;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d;->g(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/j;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/j;->l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/l;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public final getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->f:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNullKeySerializer()Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->j:Lcom/fasterxml/jackson/databind/g;

    return-object v0
.end method

.method public getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

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

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    return-object p1
.end method

.method public final getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    return-object p1
.end method

.method public final getFilterProvider()Lcom/fasterxml/jackson/databind/ser/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getFilterProvider()Lcom/fasterxml/jackson/databind/ser/f;

    move-result-object v0

    return-object v0
.end method

.method public getGenerator()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/l;->g:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
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

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/fasterxml/jackson/databind/ser/e;

    invoke-interface {p1, p0, p2}, Lcom/fasterxml/jackson/databind/ser/e;->createContextual(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
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

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/fasterxml/jackson/databind/ser/e;

    invoke-interface {p1, p0, p2}, Lcom/fasterxml/jackson/databind/ser/e;->createContextual(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final hasSerializationFeatures(I)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->hasSerializationFeatures(I)Z

    move-result p1

    return p1
.end method

.method public abstract includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/k;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract includeFilterSuppressNulls(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation
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
    invoke-virtual {p0, v0, p3}, Lcom/fasterxml/jackson/databind/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {v0, p3, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;

    move-result-object p1

    return-object p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    return p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    return p1
.end method

.method public isUnknownTypeSerializer(Lcom/fasterxml/jackson/databind/g;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->g:Lcom/fasterxml/jackson/databind/g;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected l(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
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
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->n(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->q(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/databind/l;->reportMappingProblem(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v1, p1, v0, p0}, Lcom/fasterxml/jackson/databind/ser/j;->b(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/l;)V

    :cond_0
    return-object v0
.end method

.method protected m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/l;->n(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/g;->q(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/l;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v2, p1, v0, v1, p0}, Lcom/fasterxml/jackson/databind/ser/j;->c(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/l;)V

    :cond_0
    return-object v1
.end method

.method public varargs mappingException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->getGenerator()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method protected n(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
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

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->d:Lcom/fasterxml/jackson/databind/ser/k;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/k;->createSerializer(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method protected final o()Ljava/text/DateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->l:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/l;->l:Ljava/text/DateFormat;

    return-object v0
.end method

.method protected p(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->k:Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d;->g(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->e:Lcom/fasterxml/jackson/databind/ser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/j;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/l;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/l;->isUnknownTypeSerializer(Lcom/fasterxml/jackson/databind/g;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method

.method protected q(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
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
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/i;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/i;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/databind/ser/i;->resolve(Lcom/fasterxml/jackson/databind/l;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/l;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method protected r(Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
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
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/i;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/i;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/databind/ser/i;->resolve(Lcom/fasterxml/jackson/databind/l;)V

    :cond_0
    return-object p1
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

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->getGenerator()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    throw p1
.end method

.method public reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->getGenerator()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public reportBadDefinition(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->getGenerator()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/c;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
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

    const-string p4, "N/A"

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/k;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p4}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p4, v1, v0

    const/4 p4, 0x2

    aput-object p3, v1, p4

    const-string p3, "Invalid definition for property %s (of type %s): %s"

    .line 4
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->getGenerator()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p4

    invoke-static {p4, p3, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/b;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "N/A"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Invalid type definition for type %s: %s"

    .line 3
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->getGenerator()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p3, p2, p1, v0}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportMappingProblem(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/l;->mappingException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public varargs reportMappingProblem(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->getGenerator()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method protected s(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->A0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 4
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Incompatible types: declared root type (%s) vs %s"

    .line 5
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/l;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public abstract serializerInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Ljava/lang/Object;",
            ")",
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
.end method

.method public bridge synthetic setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/l;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/l;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/l;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/l;->f:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;->withPerCallAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/l;->f:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    return-object p0
.end method

.method public setDefaultKeySerializer(Lcom/fasterxml/jackson/databind/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/l;->h:Lcom/fasterxml/jackson/databind/g;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pass null JsonSerializer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNullKeySerializer(Lcom/fasterxml/jackson/databind/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/l;->j:Lcom/fasterxml/jackson/databind/g;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pass null JsonSerializer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNullValueSerializer(Lcom/fasterxml/jackson/databind/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/l;->i:Lcom/fasterxml/jackson/databind/g;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pass null JsonSerializer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected varargs t(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/l;->getGenerator()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/c;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    return-object p1
.end method
