.class public Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;
.source "MapDeserializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/c;
.implements Lcom/fasterxml/jackson/databind/deser/m;


# annotations
.annotation runtime Lc2/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$a;,
        Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase<",
        "Ljava/util/Map<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/fasterxml/jackson/databind/deser/c;",
        "Lcom/fasterxml/jackson/databind/deser/m;"
    }
.end annotation


# static fields
.field private static final u:J = 0x1L


# instance fields
.field protected final j:Lcom/fasterxml/jackson/databind/h;

.field protected k:Z

.field protected final l:Lcom/fasterxml/jackson/databind/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final m:Lcom/fasterxml/jackson/databind/jsontype/b;

.field protected final n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

.field protected o:Lcom/fasterxml/jackson/databind/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/fasterxml/jackson/databind/deser/impl/g;

.field protected final q:Z

.field protected r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            "Lcom/fasterxml/jackson/databind/h;",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/l;Ljava/lang/Boolean;)V

    .line 2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->j:Lcom/fasterxml/jackson/databind/h;

    .line 3
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    .line 4
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 5
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result p2

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->q:Z

    .line 7
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->o:Lcom/fasterxml/jackson/databind/d;

    .line 8
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->p:Lcom/fasterxml/jackson/databind/deser/impl/g;

    .line 9
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->E0(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/h;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->k:Z

    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;)V

    .line 12
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->j:Lcom/fasterxml/jackson/databind/h;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->j:Lcom/fasterxml/jackson/databind/h;

    .line 13
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    .line 14
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 15
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 16
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->p:Lcom/fasterxml/jackson/databind/deser/impl/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->p:Lcom/fasterxml/jackson/databind/deser/impl/g;

    .line 17
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->o:Lcom/fasterxml/jackson/databind/d;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->o:Lcom/fasterxml/jackson/databind/d;

    .line 18
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->q:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->q:Z

    .line 19
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->r:Ljava/util/Set;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->r:Ljava/util/Set;

    .line 20
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->s:Ljava/util/Set;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->s:Ljava/util/Set;

    .line 21
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    .line 22
    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->k:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->k:Z

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/l;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;",
            "Lcom/fasterxml/jackson/databind/h;",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/deser/l;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/l;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/l;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;",
            "Lcom/fasterxml/jackson/databind/h;",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/deser/l;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->i:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p5, v0}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;Lcom/fasterxml/jackson/databind/deser/l;Ljava/lang/Boolean;)V

    .line 25
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->j:Lcom/fasterxml/jackson/databind/h;

    .line 26
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    .line 27
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 28
    iget-object p3, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 29
    iget-object p3, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->p:Lcom/fasterxml/jackson/databind/deser/impl/g;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->p:Lcom/fasterxml/jackson/databind/deser/impl/g;

    .line 30
    iget-object p3, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->o:Lcom/fasterxml/jackson/databind/d;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->o:Lcom/fasterxml/jackson/databind/d;

    .line 31
    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->q:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->q:Z

    .line 32
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->r:Ljava/util/Set;

    .line 33
    iput-object p7, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->s:Ljava/util/Set;

    .line 34
    invoke-static {p6, p7}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    .line 35
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->E0(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/h;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->k:Z

    return-void
.end method

.method private J0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$b;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unresolved forward reference but no identity info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-virtual {p2, p4, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$b;->a(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/impl/j$a;

    move-result-object p1

    .line 3
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->getRoid()Lcom/fasterxml/jackson/databind/deser/impl/j;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/j;->a(Lcom/fasterxml/jackson/databind/deser/impl/j$a;)V

    return-void
.end method


# virtual methods
.method protected final E0(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/h;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 3
    const-class v1, Ljava/lang/String;

    if-eq p1, v1, :cond_2

    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_3

    .line 4
    :cond_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->B0(Lcom/fasterxml/jackson/databind/h;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final F0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->j:Lcom/fasterxml/jackson/databind/h;

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/d;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 5
    new-instance v6, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$b;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, v7, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$b;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    move-object v6, v5

    .line 6
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->q1()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    .line 9
    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v8, :cond_4

    .line 10
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v9, :cond_3

    return-void

    :cond_3
    new-array v4, v4, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, p0, v8, v5, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->M()Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_a

    .line 13
    invoke-virtual {v0, v4, p2}, Lcom/fasterxml/jackson/databind/h;->deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    .line 15
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    if-eqz v8, :cond_5

    invoke-virtual {v8, v4}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->shouldIgnore(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_4

    .line 17
    :cond_5
    :try_start_0
    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_7

    .line 18
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->h:Z

    if-eqz v7, :cond_6

    goto :goto_4

    .line 19
    :cond_6
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->g:Lcom/fasterxml/jackson/databind/deser/l;

    invoke-interface {v7, p2}, Lcom/fasterxml/jackson/databind/deser/l;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_3

    :cond_7
    if-nez v2, :cond_8

    .line 20
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_3

    .line 21
    :cond_8
    invoke-virtual {v1, p1, p2, v2}, Lcom/fasterxml/jackson/databind/d;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;)Ljava/lang/Object;

    move-result-object v7

    :goto_3
    if-eqz v3, :cond_9

    .line 22
    invoke-virtual {v6, v5, v7}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 23
    :cond_9
    invoke-interface {p3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 24
    invoke-virtual {p0, p2, v5, p3, v4}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->C0(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4

    :catch_1
    move-exception v4

    .line 25
    invoke-direct {p0, p2, v6, v5, v4}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->J0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$b;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;)V

    .line 26
    :goto_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_a
    return-void
.end method

.method protected final G0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/d;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 4
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$b;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, v6, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$b;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 5
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->q1()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    .line 8
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_3

    return-void

    .line 9
    :cond_3
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v7, :cond_4

    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p2, p0, v7, v4, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->M()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_a

    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 13
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    if-eqz v6, :cond_5

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->shouldIgnore(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_4

    .line 15
    :cond_5
    :try_start_0
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v6, :cond_7

    .line 16
    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->h:Z

    if-eqz v4, :cond_6

    goto :goto_4

    .line 17
    :cond_6
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->g:Lcom/fasterxml/jackson/databind/deser/l;

    invoke-interface {v4, p2}, Lcom/fasterxml/jackson/databind/deser/l;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_7
    if-nez v1, :cond_8

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    .line 19
    :cond_8
    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/d;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;)Ljava/lang/Object;

    move-result-object v4

    :goto_3
    if-eqz v2, :cond_9

    .line 20
    invoke-virtual {v5, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 21
    :cond_9
    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    .line 22
    invoke-virtual {p0, p2, v4, p3, v3}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->C0(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4

    :catch_1
    move-exception v4

    .line 23
    invoke-direct {p0, p2, v5, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->J0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$b;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;)V

    .line 24
    :goto_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_a
    return-void
.end method

.method protected final H0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->j:Lcom/fasterxml/jackson/databind/h;

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->q1()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_1

    return-void

    .line 8
    :cond_1
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_2

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p2, p0, v4, v3, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->M()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_a

    .line 11
    invoke-virtual {v0, v3, p2}, Lcom/fasterxml/jackson/databind/h;->deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    .line 13
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    if-eqz v6, :cond_3

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->shouldIgnore(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 15
    :cond_3
    :try_start_0
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_5

    .line 16
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->h:Z

    if-eqz v5, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->g:Lcom/fasterxml/jackson/databind/deser/l;

    invoke-interface {v5, p2}, Lcom/fasterxml/jackson/databind/deser/l;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_5
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    if-nez v2, :cond_6

    .line 19
    invoke-virtual {v1, p1, p2, v5}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 20
    :cond_6
    invoke-virtual {v1, p1, p2, v2, v5}, Lcom/fasterxml/jackson/databind/d;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_7
    if-nez v2, :cond_8

    .line 21
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 22
    :cond_8
    invoke-virtual {v1, p1, p2, v2}, Lcom/fasterxml/jackson/databind/d;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;)Ljava/lang/Object;

    move-result-object v6

    :goto_1
    if-eq v6, v5, :cond_9

    .line 23
    invoke-interface {p3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 24
    invoke-virtual {p0, p2, v4, p3, v3}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->C0(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_a
    return-void
.end method

.method protected final I0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->q1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_1

    return-void

    .line 7
    :cond_1
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, p0, v3, v2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->M()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_a

    .line 10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 11
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->shouldIgnore(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 13
    :cond_3
    :try_start_0
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_5

    .line 14
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->h:Z

    if-eqz v3, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->g:Lcom/fasterxml/jackson/databind/deser/l;

    invoke-interface {v3, p2}, Lcom/fasterxml/jackson/databind/deser/l;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_5
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    if-nez v1, :cond_6

    .line 17
    invoke-virtual {v0, p1, p2, v3}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/fasterxml/jackson/databind/d;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 20
    :cond_8
    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/d;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    if-eq v4, v3, :cond_9

    .line 21
    invoke-interface {p3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 22
    invoke-virtual {p0, p2, v3, p3, v2}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->C0(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_a
    return-void
.end method

.method protected K0(Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/deser/l;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/h;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/deser/l;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;"
        }
    .end annotation

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->s:Ljava/util/Set;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->L0(Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/deser/l;Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;

    move-result-object p1

    return-object p1
.end method

.method protected L0(Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/deser/l;Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/h;",
            "Lcom/fasterxml/jackson/databind/jsontype/b;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/deser/l;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->j:Lcom/fasterxml/jackson/databind/h;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->g:Lcom/fasterxml/jackson/databind/deser/l;

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->r:Ljava/util/Set;

    if-ne v0, p5, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->s:Ljava/util/Set;

    if-ne v0, p6, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/deser/l;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public _deserializeUsingCreator(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->p:Lcom/fasterxml/jackson/databind/deser/impl/g;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/g;->h(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/i;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    .line 4
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->q1()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 7
    :cond_0
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/core/JsonParser;->k1(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->M()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v1

    :goto_0
    if-eqz v5, :cond_8

    .line 9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    .line 10
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v5}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->shouldIgnore(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/g;->f(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 13
    invoke-virtual {v7, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lcom/fasterxml/jackson/databind/deser/impl/i;->b(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    .line 15
    :try_start_0
    invoke-virtual {v0, p2, v2}, Lcom/fasterxml/jackson/databind/deser/impl/g;->a(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->F0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 17
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0, v5}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->C0(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 18
    :cond_3
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->j:Lcom/fasterxml/jackson/databind/h;

    invoke-virtual {v7, v5, p2}, Lcom/fasterxml/jackson/databind/h;->deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    .line 19
    :try_start_1
    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v8, :cond_5

    .line 20
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->h:Z

    if-eqz v6, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->g:Lcom/fasterxml/jackson/databind/deser/l;

    invoke-interface {v6, p2}, Lcom/fasterxml/jackson/databind/deser/l;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    .line 22
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {v3, p1, p2, v4}, Lcom/fasterxml/jackson/databind/d;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    :goto_1
    invoke-virtual {v2, v7, v5}, Lcom/fasterxml/jackson/databind/deser/impl/i;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->t1()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catch_1
    move-exception p1

    .line 26
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0, v5}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->C0(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 27
    :cond_8
    :try_start_2
    invoke-virtual {v0, p2, v2}, Lcom/fasterxml/jackson/databind/deser/impl/g;->a(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 28
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0, v5}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->C0(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->j:Lcom/fasterxml/jackson/databind/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/h;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/deser/d;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/fasterxml/jackson/databind/deser/d;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/d;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/h;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v2, v0

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->t0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1, v0, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/b;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/b;

    move-result-object v0

    :cond_4
    move-object v3, v0

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->r:Ljava/util/Set;

    .line 13
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->s:Ljava/util/Set;

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v5

    .line 15
    invoke-static {v5, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 16
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 17
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v7

    .line 18
    invoke-virtual {v5, v7, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIgnoralByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 19
    invoke-virtual {v8}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForDeserialization()Ljava/util/Set;

    move-result-object v8

    .line 20
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    if-nez v0, :cond_5

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_2

    :cond_5
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v9

    .line 22
    :goto_2
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 23
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {v5, v7, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusionByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 25
    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 26
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    if-nez v1, :cond_7

    .line 27
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    .line 28
    :cond_7
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 29
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 30
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    :goto_5
    move-object v7, v6

    move-object v6, v0

    goto :goto_6

    :cond_a
    move-object v6, v0

    move-object v7, v1

    .line 31
    :goto_6
    invoke-virtual {p0, p1, p2, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->r0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/deser/l;

    move-result-object v5

    move-object v1, p0

    .line 32
    invoke-virtual/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->L0(Lcom/fasterxml/jackson/databind/h;Lcom/fasterxml/jackson/databind/jsontype/b;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/deser/l;Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JacksonException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JacksonException;
        }
    .end annotation

    .line 2
    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->p:Lcom/fasterxml/jackson/databind/deser/impl/g;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_deserializeUsingCreator(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->o:Lcom/fasterxml/jackson/databind/d;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->q:Z

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v3

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const-string v5, "no default constructor found"

    move-object v1, p2

    move-object v4, p1

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->X()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 14
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueType(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 15
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->t(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 16
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->q(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 18
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->k:Z

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->G0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V

    return-object v0

    .line 20
    :cond_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->F0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/core/JsonParser;->O1(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->k:Z

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->I0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V

    return-object p3

    .line 27
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->H0(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V

    return-object p3
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/b;->deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentDeserializer()Lcom/fasterxml/jackson/databind/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    return-object v0
.end method

.method public final getMapClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    return-object v0
.end method

.method public getValueType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public isCachable()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->l:Lcom/fasterxml/jackson/databind/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->j:Lcom/fasterxml/jackson/databind/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->m:Lcom/fasterxml/jackson/databind/jsontype/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->r:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->s:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Map:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    .line 5
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {p0, p1, v0, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->u0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->o:Lcom/fasterxml/jackson/databind/d;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingArrayDelegate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getArrayDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for \'canCreateUsingArrayDelegate()\', but null for \'getArrayDelegateType()\'"

    .line 11
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    :cond_2
    invoke-virtual {p0, p1, v0, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->u0(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->o:Lcom/fasterxml/jackson/databind/d;

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromObjectWith()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->n:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 16
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    .line 17
    invoke-static {p1, v1, v0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/g;->d(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Z)Lcom/fasterxml/jackson/databind/deser/impl/g;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->p:Lcom/fasterxml/jackson/databind/deser/impl/g;

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->j:Lcom/fasterxml/jackson/databind/h;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->E0(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/h;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->k:Z

    return-void
.end method

.method public setIgnorableProperties(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->r:Ljava/util/Set;

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->s:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    return-void
.end method

.method public setIgnorableProperties([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/b;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->r:Ljava/util/Set;

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->s:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    return-void
.end method

.method public setIncludableProperties(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->s:Ljava/util/Set;

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->r:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->t:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    return-void
.end method
