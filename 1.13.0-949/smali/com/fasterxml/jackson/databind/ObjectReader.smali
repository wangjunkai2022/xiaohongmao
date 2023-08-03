.class public Lcom/fasterxml/jackson/databind/ObjectReader;
.super Lcom/fasterxml/jackson/core/h;
.source "ObjectReader.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/n;
.implements Ljava/io/Serializable;


# static fields
.field private static final n:J = 0x2L


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

.field protected final b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

.field protected final c:Lcom/fasterxml/jackson/core/JsonFactory;

.field protected final d:Z

.field private final e:Lcom/fasterxml/jackson/core/filter/TokenFilter;

.field protected final f:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final g:Lcom/fasterxml/jackson/databind/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final h:Ljava/lang/Object;

.field protected final i:Lcom/fasterxml/jackson/core/c;

.field protected final j:Lcom/fasterxml/jackson/databind/InjectableValues;

.field protected final k:Lcom/fasterxml/jackson/databind/deser/e;

.field protected final l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected transient m:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/databind/InjectableValues;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/databind/InjectableValues;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/h;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 4
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->l:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 5
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->a:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 7
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    .line 8
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    .line 9
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    .line 10
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    .line 11
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->useRootWrapping()Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->d:Z

    .line 12
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ObjectReader;->z(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    .line 14
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/h;-><init>()V

    .line 42
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 43
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonFactory;->requiresPropertyOrdering()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 44
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 45
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 47
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    .line 48
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    .line 49
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    .line 50
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    .line 51
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    .line 52
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->d:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->d:Z

    .line 53
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    .line 54
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/filter/TokenFilter;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/h;-><init>()V

    .line 56
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 57
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 58
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 60
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    .line 61
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    .line 62
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    .line 63
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    .line 64
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    .line 65
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->d:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->d:Z

    .line 66
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    .line 67
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/h;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 30
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 31
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 33
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    .line 34
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    .line 35
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    .line 36
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    .line 37
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    .line 38
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->useRootWrapping()Z

    move-result p2

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->d:Z

    .line 39
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    .line 40
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/databind/InjectableValues;Lcom/fasterxml/jackson/databind/deser/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ObjectReader;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/c;",
            "Lcom/fasterxml/jackson/databind/InjectableValues;",
            "Lcom/fasterxml/jackson/databind/deser/e;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/h;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 17
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 18
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 20
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    .line 21
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    .line 22
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    .line 23
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    .line 24
    iput-object p7, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    .line 25
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->useRootWrapping()Z

    move-result p2

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->d:Z

    .line 26
    iput-object p8, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    .line 27
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void
.end method


# virtual methods
.method protected A(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/exc/StreamReadException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot use source of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with format auto-detection: must be byte- not char-based"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method protected B(Lcom/fasterxml/jackson/databind/deser/e;Lcom/fasterxml/jackson/databind/deser/e$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot detect format from input, does not look like any of detectable formats "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method protected final C(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/g;->p0(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object p3

    if-nez p3, :cond_0

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 5
    :cond_0
    invoke-virtual {p2, p3, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportTrailingTokens(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected D(Lcom/fasterxml/jackson/core/c;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->canUseSchema(Lcom/fasterxml/jackson/core/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot use FormatSchema of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for format "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->w(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/e;->e(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->withFormatDetection(Lcom/fasterxml/jackson/databind/deser/e;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected F(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    invoke-virtual {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->createInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    return-object p1
.end method

.method protected G()Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->b:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->createDummyInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "argument \"%s\" is null"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public at(Lcom/fasterxml/jackson/core/e;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 2

    const-string v0, "pointer"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    new-instance v1, Lcom/fasterxml/jackson/core/filter/c;

    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/core/filter/c;-><init>(Lcom/fasterxml/jackson/core/e;)V

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/filter/TokenFilter;)V

    return-object v0
.end method

.method public at(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 2

    const-string v0, "pointerExpr"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    new-instance v1, Lcom/fasterxml/jackson/core/filter/c;

    invoke-direct {v1, p1}, Lcom/fasterxml/jackson/core/filter/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/filter/TokenFilter;)V

    return-object v0
.end method

.method protected b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->F(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->r(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->o(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/d;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->o(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->readRootValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->J()V

    .line 8
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_TRAILING_TOKENS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->C(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)V

    :cond_3
    return-object p2
.end method

.method protected c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->F(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->r(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->o(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/d;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->o(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->readRootValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    .line 9
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_TRAILING_TOKENS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, p1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->C(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    :cond_5
    return-object v1

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_6

    .line 13
    :try_start_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw v1
.end method

.method public bridge synthetic createArrayNode()Lcom/fasterxml/jackson/core/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->createArrayNode()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    return-object v0
.end method

.method public createArrayNode()Lcom/fasterxml/jackson/databind/e;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public createNonBlockingByteArrayParser()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createNonBlockingByteArrayParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createObjectNode()Lcom/fasterxml/jackson/core/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->createObjectNode()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    return-object v0
.end method

.method public createObjectNode()Lcom/fasterxml/jackson/databind/e;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public createParser(Ljava/io/DataInput;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "content"

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/DataInput;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "src"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "in"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "r"

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "content"

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "src"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser([B)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "content"

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([B)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "content"

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser([C)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "content"

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([C)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createParser([CII)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "content"

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([CII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method protected final d(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->h(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 4
    :try_start_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method protected e(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->F(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->q(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->o(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->y(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;Z)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public forType(Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/b<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/type/b;->b()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 10

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->z(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v5

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/e;->j(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/e;

    move-result-object v0

    :cond_1
    move-object v9, v0

    .line 5
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/ObjectReader;->x(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/databind/InjectableValues;Lcom/fasterxml/jackson/databind/deser/e;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getAttributes()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object v0
.end method

.method public getFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    return-object v0
.end method

.method public getInjectableValues()Lcom/fasterxml/jackson/databind/InjectableValues;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    return-object v0
.end method

.method public getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method protected final h(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->T1(Lcom/fasterxml/jackson/core/c;)V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->missingNode()Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->F(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_3

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->u()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->p(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->readRootValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/e;

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->J()V

    .line 14
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_TRAILING_TOKENS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->u()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->C(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)V

    :cond_4
    return-object v0
.end method

.method protected final i(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->T1(Lcom/fasterxml/jackson/core/c;)V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->F(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    .line 9
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_3

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->u()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->p(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v3

    invoke-virtual {v2, p1, v0, v3, v1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->readRootValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/e;

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->J()V

    .line 13
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_TRAILING_TOKENS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->u()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->C(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)V

    :cond_4
    return-object v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;Lcom/fasterxml/jackson/core/JsonFactory;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/StreamReadFeature;)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;Lcom/fasterxml/jackson/core/JsonFactory;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    return p1
.end method

.method protected j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-eqz v0, :cond_1

    const-class v0, Lcom/fasterxml/jackson/core/filter/b;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/filter/b;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->e:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    sget-object v2, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/fasterxml/jackson/core/filter/b;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/filter/TokenFilter;Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;Z)V

    move-object p1, v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected k(Lcom/fasterxml/jackson/databind/deser/e$b;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->B(Lcom/fasterxml/jackson/databind/deser/e;Lcom/fasterxml/jackson/databind/deser/e$b;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->a()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 4
    sget-object p2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/JsonParser;->h0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->e()Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected l([BII)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/e;->d([BII)Lcom/fasterxml/jackson/databind/deser/e$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->f()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->B(Lcom/fasterxml/jackson/databind/deser/e;Lcom/fasterxml/jackson/databind/deser/e$b;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->a()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->e()Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected m(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/e;->b(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/e$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->B(Lcom/fasterxml/jackson/databind/deser/e;Lcom/fasterxml/jackson/databind/deser/e$b;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->a()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonParser;->h0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->e()Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->d(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic missingNode()Lcom/fasterxml/jackson/core/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->missingNode()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    return-object v0
.end method

.method public missingNode()Lcom/fasterxml/jackson/databind/e;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->missingNode()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    return-object v0
.end method

.method protected n(Lcom/fasterxml/jackson/databind/deser/e$b;Z)Lcom/fasterxml/jackson/databind/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/deser/e$b;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->B(Lcom/fasterxml/jackson/databind/deser/e;Lcom/fasterxml/jackson/databind/deser/e$b;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->a()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 4
    sget-object p2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/JsonParser;->h0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/e$b;->e()Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->e(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic nullNode()Lcom/fasterxml/jackson/core/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->nullNode()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    return-object v0
.end method

.method public nullNode()Lcom/fasterxml/jackson/databind/e;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method protected o(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/DatabindException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    const-string v2, "No value type configured for ObjectReader"

    .line 3
    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/d;

    if-eqz v1, :cond_2

    return-object v1

    .line 5
    :cond_2
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v1

    if-nez v1, :cond_3

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find a deserializer for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method protected p(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/DatabindException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->u()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/d;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find a deserializer for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method protected q(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    return-void
.end method

.method protected r(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/core/JsonParser;

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No content to map due to end-of-input"

    invoke-virtual {p1, p2, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/fasterxml/jackson/core/m;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "p"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->i(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1
.end method

.method public readTree(Ljava/io/DataInput;)Lcom/fasterxml/jackson/databind/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/io/DataInput;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->d(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1
.end method

.method public readTree(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->m(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->d(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1
.end method

.method public readTree(Ljava/io/Reader;)Lcom/fasterxml/jackson/databind/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->d(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1
.end method

.method public readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->d(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 13
    throw p1
.end method

.method public readTree([B)Lcom/fasterxml/jackson/databind/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "json"

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser([B)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->d(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1
.end method

.method public readTree([BII)Lcom/fasterxml/jackson/databind/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->d(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/e;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "p"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/core/type/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "p"

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    check-cast p2, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/core/type/b<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "p"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    const-string v0, "p"

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

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

    const-string v0, "p"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/fasterxml/jackson/databind/e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/e;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "content"

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeAsTokens(Lcom/fasterxml/jackson/core/m;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Lcom/fasterxml/jackson/databind/e;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
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

    .line 45
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Lcom/fasterxml/jackson/databind/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/DataInput;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/io/DataInput;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/DataInput;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/DataInput;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->s(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/e;->b(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/e$b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->k(Lcom/fasterxml/jackson/databind/deser/e$b;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/e;->b(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/e$b;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->k(Lcom/fasterxml/jackson/databind/deser/e$b;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 23
    throw p1
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/net/URL;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->t(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/e;->b(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/e$b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->k(Lcom/fasterxml/jackson/databind/deser/e$b;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/net/URL;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue([B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 26
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->l([BII)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser([B)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue([BII)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectReader;->l([BII)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->c(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue([BIILjava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue([BII)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValue([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "p"

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->F(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->o(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->y(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;Z)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Ljava/io/DataInput;)Lcom/fasterxml/jackson/databind/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/DataInput;",
            ")",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/io/DataInput;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->e(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Ljava/io/File;)Lcom/fasterxml/jackson/databind/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->s(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/e;->b(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/e$b;

    move-result-object p1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->n(Lcom/fasterxml/jackson/databind/deser/e$b;Z)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->e(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/e;->b(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/e$b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->n(Lcom/fasterxml/jackson/databind/deser/e$b;Z)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->e(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Ljava/io/Reader;)Lcom/fasterxml/jackson/databind/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            ")",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->F(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v1

    .line 19
    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->q(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 20
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 21
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->o(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->y(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;Z)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->A(Ljava/lang/Object;)V

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->F(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v1

    .line 26
    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->q(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 27
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 28
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->o(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->y(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;Z)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Ljava/net/URL;)Lcom/fasterxml/jackson/databind/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            ")",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->t(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/e;->b(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/e$b;

    move-result-object p1

    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->n(Lcom/fasterxml/jackson/databind/deser/e$b;Z)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->e(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public final readValues([B)Lcom/fasterxml/jackson/databind/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "src"

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValues([BII)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public readValues([BII)Lcom/fasterxml/jackson/databind/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII)",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/e;->d([BII)Lcom/fasterxml/jackson/databind/deser/e$b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->n(Lcom/fasterxml/jackson/databind/deser/e$b;Z)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectReader;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->j(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->e(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/a;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/core/type/a;",
            ")",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "p"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    check-cast p2, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/b;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/core/type/b<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "p"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValues(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "p"

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValues(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method public readValues(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "p"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValues(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/i;

    move-result-object p1

    return-object p1
.end method

.method protected s(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p1

    return-object p1
.end method

.method protected t(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public treeAsTokens(Lcom/fasterxml/jackson/core/m;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2

    const-string v0, "n"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->withValueToUpdate(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/fasterxml/jackson/databind/node/e;

    check-cast p1, Lcom/fasterxml/jackson/databind/e;

    invoke-direct {v1, p1, v0}, Lcom/fasterxml/jackson/databind/node/e;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/core/h;)V

    return-object v1
.end method

.method public treeToValue(Lcom/fasterxml/jackson/core/m;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/m;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    const-string v0, "n"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeAsTokens(Lcom/fasterxml/jackson/core/m;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 8
    throw p1
.end method

.method public treeToValue(Lcom/fasterxml/jackson/core/m;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/m;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    const-string v0, "n"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeAsTokens(Lcom/fasterxml/jackson/core/m;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 4
    throw p1
.end method

.method protected final u()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->m:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->m:Lcom/fasterxml/jackson/databind/JavaType;

    :cond_0
    return-object v0
.end method

.method protected v(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/JsonFactory;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/JsonFactory;)V

    return-object v0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/e;->a:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method protected w(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonFactory;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->c:Lcom/fasterxml/jackson/core/JsonFactory;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->v(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/JsonFactory;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory;->getCodec()Lcom/fasterxml/jackson/core/h;

    move-result-object v1

    if-nez v1, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->setCodec(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonFactory;

    :cond_1
    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 10

    .line 14
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->D(Lcom/fasterxml/jackson/core/c;)V

    .line 16
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    move-object v1, p0

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/ObjectReader;->x(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/databind/InjectableValues;Lcom/fasterxml/jackson/databind/deser/e;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs with(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 10

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    move-object v1, p0

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/ObjectReader;->x(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/databind/InjectableValues;Lcom/fasterxml/jackson/databind/deser/e;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->withAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->withAttributes(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withFormatDetection(Lcom/fasterxml/jackson/databind/deser/e;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 9

    .line 2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v0, p0

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/ObjectReader;->x(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/databind/InjectableValues;Lcom/fasterxml/jackson/databind/deser/e;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFormatDetection([Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/e;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/deser/e;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->withFormatDetection(Lcom/fasterxml/jackson/databind/deser/e;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withHandler(Lcom/fasterxml/jackson/databind/deser/f;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withHandler(Lcom/fasterxml/jackson/databind/deser/f;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withType(Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/b<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/type/b;->b()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withValueToUpdate(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/ObjectReader;->x(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/databind/InjectableValues;Lcom/fasterxml/jackson/databind/deser/e;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :cond_2
    move-object v4, v0

    .line 5
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->g:Lcom/fasterxml/jackson/databind/d;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->i:Lcom/fasterxml/jackson/core/c;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->j:Lcom/fasterxml/jackson/databind/InjectableValues;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->k:Lcom/fasterxml/jackson/databind/deser/e;

    move-object v1, p0

    move-object v2, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/ObjectReader;->x(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/databind/InjectableValues;Lcom/fasterxml/jackson/databind/deser/e;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without(Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs without(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withoutAttribute(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->withoutAttribute(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withoutFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withoutFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withoutFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public withoutRootName()Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/PropertyName;->NO_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->E(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public writeTree(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/m;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented for ObjectReader"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected x(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/databind/InjectableValues;Lcom/fasterxml/jackson/databind/deser/e;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ObjectReader;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/c;",
            "Lcom/fasterxml/jackson/databind/InjectableValues;",
            "Lcom/fasterxml/jackson/databind/deser/e;",
            ")",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    new-instance v9, Lcom/fasterxml/jackson/databind/ObjectReader;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/databind/InjectableValues;Lcom/fasterxml/jackson/databind/deser/e;)V

    return-object v9
.end method

.method protected y(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;Z)Lcom/fasterxml/jackson/databind/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;Z)",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v7, Lcom/fasterxml/jackson/databind/i;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->h:Ljava/lang/Object;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/i;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;ZLjava/lang/Object;)V

    return-object v7
.end method

.method protected z(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;
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

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->EAGER_DESERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/d;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->G()Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JacksonException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
