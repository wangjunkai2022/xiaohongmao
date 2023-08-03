.class public Lcom/fasterxml/jackson/databind/k;
.super Ljava/lang/Object;
.source "SequenceWriter.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/n;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

.field protected final b:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected final c:Lcom/fasterxml/jackson/core/JsonGenerator;

.field protected final d:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Lcom/fasterxml/jackson/databind/jsontype/f;

.field protected final f:Z

.field protected final g:Z

.field protected final h:Z

.field protected i:Lcom/fasterxml/jackson/databind/ser/impl/c;

.field protected j:Z

.field protected k:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/core/JsonGenerator;ZLcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/k;->a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 4
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/k;->f:Z

    .line 5
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->getValueSerializer()Lcom/fasterxml/jackson/databind/g;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/k;->d:Lcom/fasterxml/jackson/databind/g;

    .line 6
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/f;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/k;->e:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/k;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 8
    sget-object p2, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/k;->g:Z

    .line 9
    sget-object p2, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/k;->h:Z

    .line 10
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/c;->d()Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/k;->i:Lcom/fasterxml/jackson/databind/ser/impl/c;

    return-void
.end method

.method private final a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
    .locals 5
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/k;->e:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/k;->i:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/k;->a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/c;->h(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/k;->i:Lcom/fasterxml/jackson/databind/ser/impl/c;

    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/e;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/k;->a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, p1, v4}, Lcom/fasterxml/jackson/databind/l;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ser/impl/e;-><init>(Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    .line 5
    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->a(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    move-result-object p1

    .line 6
    :goto_0
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->b:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/k;->i:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 7
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1
.end method

.method private final b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .locals 5
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/k;->e:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/k;->i:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/k;->a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/c;->i(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/k;->i:Lcom/fasterxml/jackson/databind/ser/impl/c;

    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/e;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/k;->a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, p1, v4}, Lcom/fasterxml/jackson/databind/l;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ser/impl/e;-><init>(Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;)V

    .line 5
    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->b(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    move-result-object p1

    .line 6
    :goto_0
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->b:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/k;->i:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 7
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/k;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/k;->k:Z

    .line 3
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/k;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/k;->j:Z

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->R0()V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/k;->f:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    :cond_1
    return-void
.end method

.method protected d(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/k;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/k;->d:Lcom/fasterxml/jackson/databind/g;

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/k;->i:Lcom/fasterxml/jackson/databind/ser/impl/c;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/k;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 6
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/k;->a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v3, v4, p1, v1, v2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)V

    .line 7
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/k;->g:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    .line 10
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 11
    :catch_0
    :cond_3
    throw p1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/k;->k:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/k;->i:Lcom/fasterxml/jackson/databind/ser/impl/c;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/k;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/k;->a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)V

    .line 5
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/k;->g:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    const/4 p1, 0x0

    .line 7
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_2

    .line 8
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 9
    :catch_0
    :cond_2
    throw p1
.end method

.method public i(Z)Lcom/fasterxml/jackson/databind/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->G1()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/k;->j:Z

    :cond_0
    return-object p0
.end method

.method public k(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/k;->a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    return-object p0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/k;->h:Z

    if-eqz v1, :cond_1

    instance-of v1, p1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/k;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/k;->d:Lcom/fasterxml/jackson/databind/g;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/k;->i:Lcom/fasterxml/jackson/databind/ser/impl/c;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/ser/impl/c;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v2

    if-nez v2, :cond_2

    .line 7
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/k;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 8
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/k;->a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)V

    .line 9
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/k;->g:Z

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    :cond_4
    return-object p0
.end method

.method public p(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/k;->a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    return-object p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/k;->h:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/k;->h(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/k;->i:Lcom/fasterxml/jackson/databind/ser/impl/c;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/c;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/k;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/k;->a:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)V

    .line 7
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/k;->g:Z

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/k;->c:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    :cond_3
    return-object p0
.end method

.method public q(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/k;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/k;->k(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/k;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public r(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "*>;>(TC;)",
            "Lcom/fasterxml/jackson/databind/k;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/k;->k(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/k;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public s([Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/k;->k(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/k;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/e;->a:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
