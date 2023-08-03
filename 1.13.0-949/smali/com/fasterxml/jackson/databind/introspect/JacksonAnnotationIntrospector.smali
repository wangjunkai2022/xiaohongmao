.class public Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;
.super Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.source "JacksonAnnotationIntrospector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final c:J = 0x1L

.field private static final d:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/fasterxml/jackson/databind/ext/c;


# instance fields
.field protected transient a:Lcom/fasterxml/jackson/databind/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LRUMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/fasterxml/jackson/annotation/b0;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Lcom/fasterxml/jackson/annotation/JsonFormat;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Lcom/fasterxml/jackson/annotation/u;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Lcom/fasterxml/jackson/annotation/z;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-class v2, Lcom/fasterxml/jackson/annotation/g;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-class v2, Lcom/fasterxml/jackson/annotation/q;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->d:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    .line 2
    const-class v1, Lc2/c;

    aput-object v1, v0, v3

    const-class v1, Lcom/fasterxml/jackson/annotation/b0;

    aput-object v1, v0, v4

    const-class v1, Lcom/fasterxml/jackson/annotation/JsonFormat;

    aput-object v1, v0, v5

    const-class v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    aput-object v1, v0, v6

    const-class v1, Lcom/fasterxml/jackson/annotation/z;

    aput-object v1, v0, v7

    const-class v1, Lcom/fasterxml/jackson/annotation/g;

    aput-object v1, v0, v8

    const-class v1, Lcom/fasterxml/jackson/annotation/q;

    aput-object v1, v0, v9

    const-class v1, Lcom/fasterxml/jackson/annotation/r;

    aput-object v1, v0, v10

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->e:[Ljava/lang/Class;

    .line 3
    :try_start_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/ext/c;->d()Lcom/fasterxml/jackson/databind/ext/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->f:Lcom/fasterxml/jackson/databind/ext/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;-><init>()V

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x30

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->b:Z

    return-void
.end method

.method private l(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0
.end method

.method private m(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final o(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/t;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/t;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/t;->alphabetic()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private r(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->n0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->n0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private s(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->n0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->n0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method private u(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz p1, :cond_4

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector$a;->a:[I

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->include()Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object p2
.end method


# virtual methods
.method protected d(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->T(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lc2/b;

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lc2/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lc2/b;->prepend()Z

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0}, Lc2/b;->attrs()[Lc2/b$a;

    move-result-object v3

    .line 4
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    if-nez v2, :cond_1

    .line 5
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 6
    :cond_1
    aget-object v7, v3, v6

    invoke-virtual {p0, v7, p1, p2, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->j(Lc2/b$a;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v7

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {p3, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-interface {v0}, Lc2/b;->props()[Lc2/b$b;

    move-result-object v0

    .line 10
    array-length v2, v0

    :goto_2
    if-ge v5, v2, :cond_5

    .line 11
    aget-object v3, v0, v5

    invoke-virtual {p0, v3, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->k(Lc2/b$b;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v3

    if-eqz v1, :cond_4

    .line 12
    invoke-interface {p3, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 13
    :cond_4
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public findClassDescription(Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/h;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/h;->value()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lc2/c;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc2/c;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lc2/c;->contentUsing()Ljava/lang/Class;

    move-result-object p1

    .line 3
    const-class v0, Lcom/fasterxml/jackson/databind/d$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentUsing()Ljava/lang/Class;

    move-result-object p1

    .line 3
    const-class v0, Lcom/fasterxml/jackson/databind/g$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            ")",
            "Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonCreator;->mode()Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 4
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    instance-of p1, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz p1, :cond_1

    .line 6
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->f:Lcom/fasterxml/jackson/databind/ext/c;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/ext/c;->c(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findCreatorBinding(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonCreator;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonCreator;->mode()Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findDefaultEnumValue(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/annotation/i;

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/g;->x(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public findDeserializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lc2/c;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc2/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lc2/c;->contentConverter()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/fasterxml/jackson/databind/util/h$a;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lc2/c;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc2/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lc2/c;->converter()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/fasterxml/jackson/databind/util/h$a;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lc2/c;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc2/c;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lc2/c;->using()Ljava/lang/Class;

    move-result-object p1

    .line 3
    const-class v0, Lcom/fasterxml/jackson/databind/d$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findEnumAliases(Ljava/lang/Class;[Ljava/lang/Enum;[[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Enum<",
            "*>;[[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    const-class v4, Lcom/fasterxml/jackson/annotation/d;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/annotation/d;

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {v4}, Lcom/fasterxml/jackson/annotation/d;->value()[Ljava/lang/String;

    move-result-object v4

    .line 5
    array-length v5, v4

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7
    array-length v5, p2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 8
    aget-object v7, p2, v6

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9
    aput-object v4, p3, v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 5
    :catch_0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findEnumValues(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Enum<",
            "*>;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    .line 2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    const-class v5, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-nez v5, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {v5}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7
    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_6

    .line 8
    array-length p1, p2

    :goto_2
    if-ge v1, p1, :cond_6

    .line 9
    aget-object v0, p2, v1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 11
    aput-object v0, p3, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-object p3
.end method

.method public findFilterId(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/j;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/j;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/j;->value()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFormat(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonFormat;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->from(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->n(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .locals 3

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JacksonInject;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JacksonInject;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->from(Lcom/fasterxml/jackson/annotation/JacksonInject;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->hasId()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/a;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 7
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/a;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->withId(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->getId()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lc2/c;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc2/c;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lc2/c;->keyUsing()Ljava/lang/Class;

    move-result-object p1

    .line 3
    const-class v0, Lcom/fasterxml/jackson/databind/h$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->keyUsing()Ljava/lang/Class;

    move-result-object p1

    .line 3
    const-class v0, Lcom/fasterxml/jackson/databind/g$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findMergeInfo(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/r;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/r;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/r;->value()Lcom/fasterxml/jackson/annotation/OptBoolean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/OptBoolean;->asBoolean()Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 3

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonSetter;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonSetter;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonSetter;->value()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->namespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p1

    .line 8
    :goto_1
    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v0, :cond_5

    .line 9
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->e:[Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->c(Lcom/fasterxml/jackson/databind/introspect/a;[Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v2

    .line 10
    :cond_5
    :goto_2
    sget-object p1, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object p1
.end method

.method public findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 3

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/k;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/k;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/k;->value()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->namespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p1

    .line 8
    :goto_1
    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v0, :cond_5

    .line 9
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->d:[Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->c(Lcom/fasterxml/jackson/databind/introspect/a;[Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v2

    .line 10
    :cond_5
    :goto_2
    sget-object p1, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object p1
.end method

.method public findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lc2/d;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc2/d;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lc2/d;->value()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->nullsUsing()Ljava/lang/Class;

    move-result-object p1

    .line 3
    const-class v0, Lcom/fasterxml/jackson/databind/g$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 4

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/l;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/l;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/l;->generator()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$None;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/l;->property()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/l;->scope()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/l;->generator()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/l;->resolver()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/fasterxml/jackson/databind/introspect/p;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/introspect/p;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/m;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/m;

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/p;->a()Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p2

    .line 3
    :cond_1
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/m;->alwaysAsId()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/introspect/p;->g(Z)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p1

    return-object p1
.end method

.method public findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lc2/c;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc2/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lc2/c;->builder()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/c;)Lc2/e$a;
    .locals 1

    .line 1
    const-class v0, Lc2/e;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc2/e;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lc2/e$a;

    invoke-direct {v0, p1}, Lc2/e$a;-><init>(Lc2/e;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->access()Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPropertyAliases(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/d;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/d;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/d;->value()[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v0, p1

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/e<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->p(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Must call method with a container or reference type (got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->defaultValue()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/s;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/s;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/s;->value()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findPropertyIgnoralByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            ")",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;"
        }
    .end annotation

    .line 1
    const-class p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->from(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p1

    return-object p1
.end method

.method public findPropertyIgnorals(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findPropertyIgnoralByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object p1

    return-object p1
.end method

.method public findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 3

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->from(Lcom/fasterxml/jackson/annotation/JsonInclude;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v1, v2, :cond_1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->u(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public findPropertyInclusionByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            ")",
            "Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;"
        }
    .end annotation

    .line 1
    const-class p1, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties;

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->all()Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->from(Lcom/fasterxml/jackson/annotation/JsonIncludeProperties;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object p1

    return-object p1
.end method

.method public findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Integer;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->index()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/e<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/type/a;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->p(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findReferenceType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/q;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/q;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->f(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/annotation/g;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/g;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/g;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findRenameByField(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ")",
            "Lcom/fasterxml/jackson/databind/PropertyName;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findRootName(Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 3

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/v;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/v;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/v;->namespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 4
    :goto_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/v;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    return-object p1
.end method

.method public findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentConverter()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/fasterxml/jackson/databind/util/h$a;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->converter()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/fasterxml/jackson/databind/util/h$a;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findSerializationKeyType(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/c;)[Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/t;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/t;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/t;->value()[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->o(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public findSerializationType(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->typing()Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->using()Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-class v1, Lcom/fasterxml/jackson/databind/g$a;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/annotation/u;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/u;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/u;->value()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/a;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findSetterInfo(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonSetter;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonSetter;

    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->from(Lcom/fasterxml/jackson/annotation/JsonSetter;)Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object p1

    return-object p1
.end method

.method public findSubtypes(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/w;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/w;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/w;->value()[Lcom/fasterxml/jackson/annotation/w$a;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 5
    new-instance v5, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-interface {v4}, Lcom/fasterxml/jackson/annotation/w$a;->value()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4}, Lcom/fasterxml/jackson/annotation/w$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v4}, Lcom/fasterxml/jackson/annotation/w$a;->names()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 7
    new-instance v9, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-interface {v4}, Lcom/fasterxml/jackson/annotation/w$a;->value()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public findTypeName(Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/y;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/y;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/y;->value()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/e<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->p(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p1

    return-object p1
.end method

.method public findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/z;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/z;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/z;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/z;->prefix()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/z;->suffix()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->simpleTransformer(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lc2/h;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc2/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lc2/h;->value()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findViews(Lcom/fasterxml/jackson/databind/introspect/a;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/b0;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/b0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/b0;->value()[Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected h()Lcom/fasterxml/jackson/databind/jsontype/impl/h;
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;->noTypeInfoBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    move-result-object v0

    return-object v0
.end method

.method public hasAnyGetter(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/e;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/e;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/e;->enabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public hasAnyGetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/annotation/e;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->b(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public hasAnySetter(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/f;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/f;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/f;->enabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public hasAnySetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/annotation/f;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->b(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public hasAsKey(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    const-class p1, Lcom/fasterxml/jackson/annotation/p;

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/p;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/p;->value()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public hasAsValue(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/a0;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/a0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/a0;->value()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public hasAsValueAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/a0;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/a0;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/a0;->value()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/a;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonCreator;->mode()Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object p1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->b:Z

    if-eqz v0, :cond_2

    .line 4
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->f:Lcom/fasterxml/jackson/databind/ext/c;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ext/c;->c(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->q(Lcom/fasterxml/jackson/databind/introspect/a;)Z

    move-result p1

    return p1
.end method

.method public hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->required()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected i()Lcom/fasterxml/jackson/databind/jsontype/impl/h;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/h;-><init>()V

    return-object v0
.end method

.method public isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/fasterxml/jackson/annotation/c;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/o;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/o;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/o;->value()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public isTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/annotation/x;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->b(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected j(Lc2/b$a;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc2/b$a;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc2/b$a;->required()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 2
    :goto_0
    invoke-interface {p1}, Lc2/b$a;->value()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Lc2/b$a;->propName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lc2/b$a;->propNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .line 6
    :cond_1
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/c;->getRawType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p3, v4, v1, p4}, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/Class;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 7
    invoke-interface {p1}, Lc2/b$a;->include()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object p1

    .line 8
    invoke-static {p2, v3, v2, v0, p1}, Lcom/fasterxml/jackson/databind/util/r;->G(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/util/r;

    move-result-object p1

    .line 9
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/c;->n()Lcom/fasterxml/jackson/databind/util/a;

    move-result-object p2

    .line 10
    invoke-static {v1, p1, p2, p4}, Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;->construct(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;

    move-result-object p1

    return-object p1
.end method

.method protected k(Lc2/b$b;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc2/b$b;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc2/b$b;->required()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 2
    :goto_0
    invoke-interface {p1}, Lc2/b$b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lc2/b$b;->namespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Lc2/b$b;->type()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/c;->getRawType()Ljava/lang/Class;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p3, v4, v5, v2}, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/Class;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 6
    invoke-interface {p1}, Lc2/b$b;->include()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v4

    .line 7
    invoke-static {p2, v3, v1, v0, v4}, Lcom/fasterxml/jackson/databind/util/r;->G(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/util/r;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Lc2/b$b;->value()Ljava/lang/Class;

    move-result-object p1

    .line 9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/c;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1, p2, p1}, Lcom/fasterxml/jackson/databind/cfg/c;->l(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 11
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v1

    .line 12
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/g;->n(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;

    .line 13
    :cond_2
    invoke-virtual {v1, p2, p3, v0, v2}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->withConfig(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;

    move-result-object p1

    return-object p1
.end method

.method protected n(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->f:Lcom/fasterxml/jackson/databind/ext/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ext/c;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected p(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/e<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    .line 2
    const-class v1, Lc2/g;

    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lc2/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-interface {v1}, Lc2/g;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->typeResolverBuilderInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    return-object v2

    .line 4
    :cond_2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->use()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    move-result-object v1

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-ne v1, v3, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->h()Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->i()Lcom/fasterxml/jackson/databind/jsontype/impl/h;

    move-result-object v1

    .line 7
    :goto_0
    const-class v3, Lc2/f;

    invoke-virtual {p0, p2, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lc2/f;

    if-nez v3, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-interface {v3}, Lc2/f;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->typeIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/c;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    .line 9
    invoke-interface {v2, p3}, Lcom/fasterxml/jackson/databind/jsontype/c;->c(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 10
    :cond_5
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->use()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Lcom/fasterxml/jackson/databind/jsontype/e;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/c;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p1

    .line 11
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->include()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object p3

    .line 12
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    if-ne p3, v1, :cond_6

    instance-of p2, p2, Lcom/fasterxml/jackson/databind/introspect/c;

    if-eqz p2, :cond_6

    .line 13
    sget-object p3, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 14
    :cond_6
    invoke-interface {p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/e;->inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p1

    .line 15
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->property()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/e;->typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p1

    .line 16
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->defaultImpl()Ljava/lang/Class;

    move-result-object p2

    .line 17
    const-class p3, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$a;

    if-eq p2, p3, :cond_7

    invoke-virtual {p2}, Ljava/lang/Class;->isAnnotation()Z

    move-result p3

    if-nez p3, :cond_7

    .line 18
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/e;->defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p1

    .line 19
    :cond_7
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->visible()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/e;->typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object p1

    return-object p1
.end method

.method protected q(Lcom/fasterxml/jackson/databind/introspect/a;)Z
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/annotation/n;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/n;->value()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->f:Lcom/fasterxml/jackson/databind/ext/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ext/c;->b(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    .line 2
    const-class v0, Lc2/c;

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lc2/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lc2/c;->as()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 5
    invoke-direct {p0, p3, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->r(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p1, p3, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p3, v0, v6

    .line 7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v5

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "Failed to narrow type %s with annotation (value %s), from \'%s\': %s"

    .line 8
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->m(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v8, v1

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {v0}, Lc2/c;->keyAs()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_3

    .line 13
    invoke-direct {p0, v2, v8}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->r(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 14
    :try_start_1
    invoke-virtual {p1, v2, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 15
    move-object v9, p3

    check-cast v9, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    invoke-virtual {v9, v2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p3, v0, v6

    .line 16
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v5

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "Failed to narrow key type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    .line 17
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->m(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 19
    :cond_3
    :goto_3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    goto :goto_4

    .line 20
    :cond_4
    invoke-interface {v0}, Lc2/c;->contentAs()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_5

    .line 21
    invoke-direct {p0, v2, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->r(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 22
    :try_start_2
    invoke-virtual {p1, v2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    .line 23
    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p3, v0, v6

    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v5

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "Failed to narrow value type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    .line 25
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->m(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_5
    return-object p3
.end method

.method public refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->as()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    .line 4
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    .line 7
    :try_start_0
    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 8
    invoke-virtual {p1, p3, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 10
    invoke-virtual {p1, p3, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    goto :goto_1

    .line 11
    :cond_3
    invoke-direct {p0, v8, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->s(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 12
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    goto :goto_1

    :cond_4
    const-string p1, "Cannot refine serialization type %s into %s; types not related"

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p3, v0, v7

    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 14
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->l(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p3, v0, v7

    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v6

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "Failed to widen type %s with annotation (value %s), from \'%s\': %s"

    .line 17
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->m(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 19
    :cond_5
    :goto_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 20
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    if-nez v0, :cond_6

    move-object v8, v1

    goto :goto_2

    .line 21
    :cond_6
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->keyAs()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_b

    .line 22
    invoke-virtual {v2, v8}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 23
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    goto :goto_3

    .line 24
    :cond_7
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v9

    .line 25
    :try_start_1
    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 26
    invoke-virtual {p1, v2, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    goto :goto_3

    .line 27
    :cond_8
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 28
    invoke-virtual {p1, v2, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    goto :goto_3

    .line 29
    :cond_9
    invoke-direct {p0, v9, v8}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->s(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 30
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    :goto_3
    check-cast p3, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object p3

    goto :goto_4

    :cond_a
    :try_start_2
    const-string p1, "Cannot refine serialization key type %s into %s; types not related"

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v2, v0, v7

    .line 32
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 33
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->l(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p3, v0, v7

    .line 35
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v6

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "Failed to widen key type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    .line 36
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->m(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 38
    :cond_b
    :goto_4
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    if-eqz v2, :cond_11

    if-nez v0, :cond_c

    goto :goto_5

    .line 39
    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentAs()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_11

    .line 40
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 41
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    goto :goto_6

    .line 42
    :cond_d
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 43
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 44
    invoke-virtual {p1, v2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    goto :goto_6

    .line 45
    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 46
    invoke-virtual {p1, v2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    goto :goto_6

    .line 47
    :cond_f
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->s(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 48
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 49
    :goto_6
    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    goto :goto_7

    :cond_10
    :try_start_4
    const-string p1, "Cannot refine serialization content type %s into %s; types not related"

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v2, v0, v7

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 51
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->l(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p3, v0, v7

    .line 53
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v6

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "Internal error: failed to refine value type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    .line 54
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->m(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_11
    :goto_7
    return-object p3
.end method

.method public resolveSetterConflict(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    .line 1
    const-class p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object v3

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p3

    :cond_2
    if-ne v1, p1, :cond_3

    if-eq v0, p1, :cond_4

    return-object p2

    :cond_3
    if-ne v0, p1, :cond_4

    return-object p3

    :cond_4
    return-object v3
.end method

.method public setConstructorPropertiesImpliesCreator(Z)Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;
    .locals 0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->b:Z

    return-object p0
.end method

.method protected t(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    return-object p1
.end method

.method protected v()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x30

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    :cond_0
    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/e;->a:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
