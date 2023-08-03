.class public Lcom/fasterxml/jackson/databind/ser/c;
.super Ljava/lang/Object;
.source "BeanSerializerBuilder.java"


# static fields
.field private static final i:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/b;

.field protected b:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation
.end field

.field protected d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field protected e:Lcom/fasterxml/jackson/databind/ser/a;

.field protected f:Ljava/lang/Object;

.field protected g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field protected h:Lcom/fasterxml/jackson/databind/ser/impl/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/c;->i:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/c;->a:Lcom/fasterxml/jackson/databind/b;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/c;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    .line 6
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/c;->a:Lcom/fasterxml/jackson/databind/b;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->a:Lcom/fasterxml/jackson/databind/b;

    .line 7
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    .line 8
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/c;->d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 9
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/c;->e:Lcom/fasterxml/jackson/databind/ser/a;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->e:Lcom/fasterxml/jackson/databind/ser/a;

    .line 10
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/c;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/c;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/databind/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/c;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->e:Lcom/fasterxml/jackson/databind/ser/a;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/c;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/a;->a(Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 8
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/c;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v3, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 10
    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/c;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->fixAccess(Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->e:Lcom/fasterxml/jackson/databind/ser/a;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->h:Lcom/fasterxml/jackson/databind/ser/impl/b;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 12
    :cond_4
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/c;->i:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 13
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/c;->d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v2, :cond_7

    .line 14
    array-length v2, v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    .line 16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/c;->d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Mismatch between `properties` size (%d), `filteredProperties` (%s): should have as many (or `null` for latter)"

    .line 17
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_7
    :goto_2
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/c;->a:Lcom/fasterxml/jackson/databind/b;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/c;->d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/c;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    return-object v1
.end method

.method public b()Lcom/fasterxml/jackson/databind/ser/BeanSerializer;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->a:Lcom/fasterxml/jackson/databind/b;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/b;->H()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->createDummy(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/c;)Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/fasterxml/jackson/databind/ser/a;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->e:Lcom/fasterxml/jackson/databind/ser/a;

    return-object v0
.end method

.method public d()Lcom/fasterxml/jackson/databind/b;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->a:Lcom/fasterxml/jackson/databind/b;

    return-object v0
.end method

.method public e()Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->a:Lcom/fasterxml/jackson/databind/b;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/b;->A()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public g()[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-object v0
.end method

.method public h()Lcom/fasterxml/jackson/databind/ser/impl/b;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->h:Lcom/fasterxml/jackson/databind/ser/impl/b;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public j()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Lcom/fasterxml/jackson/databind/ser/a;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/c;->e:Lcom/fasterxml/jackson/databind/ser/a;

    return-void
.end method

.method protected m(Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/c;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-void
.end method

.method public n(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public o([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p1, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Trying to set %d filtered properties; must match length of non-filtered `properties` (%d)"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/c;->d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-void
.end method

.method public p(Lcom/fasterxml/jackson/databind/ser/impl/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/c;->h:Lcom/fasterxml/jackson/databind/ser/impl/b;

    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/c;->c:Ljava/util/List;

    return-void
.end method

.method public r(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/c;->g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/c;->g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple type ids specified with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/c;->g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
