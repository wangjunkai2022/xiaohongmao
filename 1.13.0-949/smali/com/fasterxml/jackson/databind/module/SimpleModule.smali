.class public Lcom/fasterxml/jackson/databind/module/SimpleModule;
.super Lcom/fasterxml/jackson/databind/j;
.source "SimpleModule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final o:J = 0x1L

.field private static final p:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/fasterxml/jackson/core/Version;

.field protected final c:Z

.field protected d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

.field protected e:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

.field protected f:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

.field protected g:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

.field protected h:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

.field protected i:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

.field protected j:Lcom/fasterxml/jackson/databind/deser/b;

.field protected k:Lcom/fasterxml/jackson/databind/ser/d;

.field protected l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected m:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 3
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->e:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    .line 4
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->f:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->g:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    .line 6
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->h:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    .line 7
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->i:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    .line 8
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->j:Lcom/fasterxml/jackson/databind/deser/b;

    .line 9
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->k:Lcom/fasterxml/jackson/databind/ser/d;

    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->l:Ljava/util/HashMap;

    .line 11
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    .line 12
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->n:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleModule-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->b:Lcom/fasterxml/jackson/core/Version;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/Version;)V
    .locals 1

    .line 19
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Version;->getArtifactId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/j;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 22
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->e:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    .line 23
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->f:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 24
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->g:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    .line 25
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->h:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    .line 26
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->i:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    .line 27
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->j:Lcom/fasterxml/jackson/databind/deser/b;

    .line 28
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->k:Lcom/fasterxml/jackson/databind/ser/d;

    .line 29
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->l:Ljava/util/HashMap;

    .line 30
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    .line 31
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->n:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 32
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->b:Lcom/fasterxml/jackson/core/Version;

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/Version;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/Version;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/Version;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;>;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/j;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 39
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->e:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    .line 40
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->f:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 41
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->g:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    .line 42
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->h:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    .line 43
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->i:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    .line 44
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->j:Lcom/fasterxml/jackson/databind/deser/b;

    .line 45
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->k:Lcom/fasterxml/jackson/databind/ser/d;

    .line 46
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->l:Ljava/util/HashMap;

    .line 47
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    .line 48
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->n:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 49
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->c:Z

    .line 51
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->b:Lcom/fasterxml/jackson/core/Version;

    if-eqz p3, :cond_0

    .line 52
    new-instance p1, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    invoke-direct {p1, p3}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->e:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    :cond_0
    if-eqz p4, :cond_1

    .line 53
    new-instance p1, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-direct {p1, p4}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Cannot pass `null` as %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAbstractTypeMapping(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    const-string v0, "abstract type to map"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "concrete type to map to"

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->h:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->h:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->h:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;->addMapping(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->h:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    return-object p0
.end method

.method public addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/fasterxml/jackson/databind/d<",
            "+TT;>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    const-string v0, "type to register deserializer for"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->e:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->e:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->e:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)V

    return-object p0
.end method

.method public addKeyDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/h;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/h;",
            ")",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    const-string v0, "type to register key deserializer for"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key deserializer"

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->g:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->g:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->g:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/h;)Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    return-object p0
.end method

.method public addKeySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    const-string v0, "type to register key serializer for"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key serializer"

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->f:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->f:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->f:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V

    return-object p0
.end method

.method public addSerializer(Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    const-string v0, "serializer"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->addSerializer(Lcom/fasterxml/jackson/databind/g;)V

    return-object p0
.end method

.method public addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    const-string v0, "type to register serializer for"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    .line 6
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V

    return-object p0
.end method

.method public addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            ")",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    const-string v0, "class to register value instantiator for"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value instantiator"

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->i:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->i:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->i:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->i:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    return-object p0
.end method

.method protected b(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->n:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/j;->getTypeId()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public registerSubtypes(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "subtype to register"

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    new-instance v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-direct {v2, v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public varargs registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    .line 8
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "subtype to register"

    .line 9
    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "subtype to register"

    .line 4
    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    new-instance v4, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-direct {v4, v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setAbstractTypes(Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->h:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    return-void
.end method

.method public setDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/b;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->j:Lcom/fasterxml/jackson/databind/deser/b;

    return-object p0
.end method

.method public setDeserializers(Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->e:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    return-void
.end method

.method public setKeyDeserializers(Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->g:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    return-void
.end method

.method public setKeySerializers(Lcom/fasterxml/jackson/databind/module/SimpleSerializers;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->f:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    return-void
.end method

.method public setMixInAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    const-string v0, "target type"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mixin class"

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->l:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->l:Ljava/util/HashMap;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSerializerModifier(Lcom/fasterxml/jackson/databind/ser/d;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->k:Lcom/fasterxml/jackson/databind/ser/d;

    return-object p0
.end method

.method public setSerializers(Lcom/fasterxml/jackson/databind/module/SimpleSerializers;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    return-void
.end method

.method public setValueInstantiators(Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->i:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    return-void
.end method

.method public setupModule(Lcom/fasterxml/jackson/databind/j$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->d:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/j$a;->b(Lcom/fasterxml/jackson/databind/ser/l;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->e:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/j$a;->c(Lcom/fasterxml/jackson/databind/deser/i;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->f:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/j$a;->j(Lcom/fasterxml/jackson/databind/ser/l;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->g:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/j$a;->e(Lcom/fasterxml/jackson/databind/deser/j;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->h:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/j$a;->a(Lcom/fasterxml/jackson/databind/a;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->i:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/j$a;->f(Lcom/fasterxml/jackson/databind/deser/o;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->j:Lcom/fasterxml/jackson/databind/deser/b;

    if-eqz v0, :cond_6

    .line 14
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/j$a;->v(Lcom/fasterxml/jackson/databind/deser/b;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->k:Lcom/fasterxml/jackson/databind/ser/d;

    if-eqz v0, :cond_7

    .line 16
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/j$a;->s(Lcom/fasterxml/jackson/databind/ser/d;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 18
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/j$a;->g([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->n:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    if-eqz v0, :cond_9

    .line 20
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/j$a;->x(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {p1, v2, v1}, Lcom/fasterxml/jackson/databind/j$a;->p(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->b:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
