.class public final Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
.super Ljava/lang/Object;
.source "ObjectWriter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ObjectWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prefetch"
.end annotation


# static fields
.field private static final d:J = 0x1L

.field public static final empty:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;


# instance fields
.field private final a:Lcom/fasterxml/jackson/databind/JavaType;

.field private final b:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/fasterxml/jackson/databind/jsontype/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->a:Lcom/fasterxml/jackson/databind/JavaType;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->b:Lcom/fasterxml/jackson/databind/g;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->c:Lcom/fasterxml/jackson/databind/jsontype/f;

    return-void
.end method


# virtual methods
.method public forRootType(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->a:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->b:Lcom/fasterxml/jackson/databind/g;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-direct {p1, v0, v0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    return-object p1

    :cond_1
    :goto_0
    return-object p0

    .line 3
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p0

    .line 4
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->i()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/l;->findTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    new-instance p2, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-direct {p2, v0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    return-object p2

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;

    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;-><init>(Lcom/fasterxml/jackson/databind/JsonMappingException;)V

    throw p2

    .line 9
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->i()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object p1

    const/4 v1, 0x1

    .line 11
    :try_start_1
    invoke-virtual {p1, p2, v1, v0}, Lcom/fasterxml/jackson/databind/l;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    .line 12
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/ser/impl/e;

    if-eqz v1, :cond_5

    .line 13
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/impl/e;

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/impl/e;->a()Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p1

    invoke-direct {v1, p2, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    return-object v1

    .line 15
    :cond_5
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-direct {v1, p2, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    :try_end_1
    .catch Lcom/fasterxml/jackson/databind/DatabindException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 16
    :catch_1
    :cond_6
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->c:Lcom/fasterxml/jackson/databind/jsontype/f;

    invoke-direct {p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    return-object p1
.end method

.method public final getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->c:Lcom/fasterxml/jackson/databind/jsontype/f;

    return-object v0
.end method

.method public final getValueSerializer()Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->b:Lcom/fasterxml/jackson/databind/g;

    return-object v0
.end method

.method public hasSerializer()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->b:Lcom/fasterxml/jackson/databind/g;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->c:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->c:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-eqz v5, :cond_0

    .line 2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->b:Lcom/fasterxml/jackson/databind/g;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializePolymorphic(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->b:Lcom/fasterxml/jackson/databind/g;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p3, p1, p2, v1, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->a:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p3, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
