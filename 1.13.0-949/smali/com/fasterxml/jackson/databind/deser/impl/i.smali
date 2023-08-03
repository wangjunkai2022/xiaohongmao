.class public Lcom/fasterxml/jackson/databind/deser/impl/i;
.super Ljava/lang/Object;
.source "PropertyValueBuffer.java"


# instance fields
.field protected final a:Lcom/fasterxml/jackson/core/JsonParser;

.field protected final b:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field protected final c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

.field protected final d:[Ljava/lang/Object;

.field protected e:I

.field protected f:I

.field protected final g:Ljava/util/BitSet;

.field protected h:Lcom/fasterxml/jackson/databind/deser/impl/h;

.field protected i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->a:Lcom/fasterxml/jackson/core/JsonParser;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 4
    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->e:I

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 6
    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:[Ljava/lang/Object;

    const/16 p1, 0x20

    if-ge p3, p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->g:Ljava/util/BitSet;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->g:Ljava/util/BitSet;

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->isRequired()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    new-array v4, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Missing required creator property \'%s\' (index %d)"

    .line 6
    invoke-virtual {v0, p1, v5, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    sget-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Missing creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES` enabled"

    .line 10
    invoke-virtual {v0, p1, v1, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getNullValueProvider()Lcom/fasterxml/jackson/databind/deser/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/deser/l;->getAbsentValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/d;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/d;->getAbsentValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/DatabindException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/DatabindException;->prependPath(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :cond_4
    throw v0
.end method

.method public b(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 3
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->g:Ljava/util/BitSet;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 4
    iget p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->f:I

    shl-int p1, v1, p1

    or-int/2addr p1, p2

    if-eq p2, p1, :cond_3

    .line 5
    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->f:I

    .line 6
    iget p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->e:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->e:I

    if-gtz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->i:Ljava/lang/Object;

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 8
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->g:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 10
    iget p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->e:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->e:I

    :cond_3
    return v0
.end method

.method public c(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/h$a;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->h:Lcom/fasterxml/jackson/databind/deser/impl/h;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/h$a;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/h;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->h:Lcom/fasterxml/jackson/databind/deser/impl/h;

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/h$b;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->h:Lcom/fasterxml/jackson/databind/deser/impl/h;

    invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/h$b;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/h;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->h:Lcom/fasterxml/jackson/databind/deser/impl/h;

    return-void
.end method

.method public e(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/h$c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->h:Lcom/fasterxml/jackson/databind/deser/impl/h;

    invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/h$c;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/h;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->h:Lcom/fasterxml/jackson/databind/deser/impl/h;

    return-void
.end method

.method protected f()Lcom/fasterxml/jackson/databind/deser/impl/h;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->h:Lcom/fasterxml/jackson/databind/deser/impl/h;

    return-object v0
.end method

.method public g(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/i;->j(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/i;->a(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Null value for creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES` enabled"

    .line 7
    invoke-virtual {v0, p1, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public h([Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->e:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->g:Ljava/util/BitSet;

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->f:I

    .line 4
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:[Ljava/lang/Object;

    aget-object v5, p1, v3

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/i;->a(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v2, 0x0

    .line 7
    :goto_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->g:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 8
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:[Ljava/lang/Object;

    aget-object v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/i;->a(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 10
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 11
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 12
    aget-object v2, p1, v0

    .line 13
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    aget-object v5, p1, v0

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "Null value for creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES` enabled"

    .line 15
    invoke-virtual {v3, v2, v5, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:[Ljava/lang/Object;

    return-object p1
.end method

.method public i(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->i:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->resolver:Lcom/fasterxml/jackson/annotation/c0;

    invoke-virtual {p1, v1, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/annotation/c0;)Lcom/fasterxml/jackson/databind/deser/impl/j;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/j;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportUnresolvedObjectId(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method

.method public final j(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->g:Ljava/util/BitSet;

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->f:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result p1

    shr-int p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public k()Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->e:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->a:Lcom/fasterxml/jackson/core/JsonParser;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->readObjectReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->i:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
