.class public Lcom/fasterxml/jackson/databind/introspect/d;
.super Ljava/lang/Object;
.source "AnnotatedClassResolver.java"


# static fields
.field private static final i:Lcom/fasterxml/jackson/databind/util/a;

.field private static final j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field private final c:Lcom/fasterxml/jackson/databind/introspect/l$a;

.field private final d:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field private final e:Lcom/fasterxml/jackson/databind/JavaType;

.field private final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->d()Lcom/fasterxml/jackson/databind/util/a;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/d;->i:Lcom/fasterxml/jackson/databind/util/a;

    .line 2
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/d;->j:Ljava/lang/Class;

    .line 3
    const-class v0, Ljava/lang/Enum;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/d;->k:Ljava/lang/Class;

    .line 4
    const-class v0, Ljava/util/List;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/d;->l:Ljava/lang/Class;

    .line 5
    const-class v0, Ljava/util/Map;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/d;->m:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/JavaType;

    .line 4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Ljava/lang/Class;

    .line 5
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/d;->c:Lcom/fasterxml/jackson/databind/introspect/l$a;

    .line 6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->d:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez p3, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p3, v0}, Lcom/fasterxml/jackson/databind/introspect/l$a;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/d;->g:Ljava/lang/Class;

    if-eqz p1, :cond_3

    .line 10
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->Y(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->h:Z

    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/l$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/JavaType;

    .line 14
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Ljava/lang/Class;

    .line 15
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/d;->c:Lcom/fasterxml/jackson/databind/introspect/l$a;

    .line 16
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->d:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    if-nez p1, :cond_0

    .line 17
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 18
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->g:Ljava/lang/Class;

    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez p3, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    invoke-interface {p3, p2}, Lcom/fasterxml/jackson/databind/introspect/l$a;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->g:Ljava/lang/Class;

    .line 22
    :goto_2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->h:Z

    return-void
.end method

.method private a(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 4

    if-eqz p2, :cond_1

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->h(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 4
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-direct {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/d;->c(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private b(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/g;->r(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/d;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p3, p2, v0}, Lcom/fasterxml/jackson/databind/util/g;->z(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    .line 3
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/g;->r(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/fasterxml/jackson/databind/introspect/d;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private c(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->r(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 2
    instance-of v3, v2, Ljava/lang/annotation/Target;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/annotation/Retention;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->h(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 5
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-direct {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/d;->c(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static d(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 2
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/d;->f(Ljava/util/List;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/d;->l:Ljava/lang/Class;

    if-eq v0, p2, :cond_1

    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/d;->m:Ljava/lang/Class;

    if-ne v0, p2, :cond_2

    :cond_1
    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getInterfaces()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v0, 0x1

    .line 6
    invoke-static {p2, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/d;->d(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static e(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/d;->j:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/d;->k:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/d;->f(Ljava/util/List;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getInterfaces()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;

    .line 6
    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/d;->d(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Z)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getSuperClass()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 8
    invoke-static {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/d;->e(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static f(Ljava/util/List;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    new-instance p0, Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/c;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method static h(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/c;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static i(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/d;->p(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/d;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/d;->k()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p0

    return-object p0
.end method

.method private j(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/util/a;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    .line 2
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/d;->i:Lcom/fasterxml/jackson/databind/util/a;

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->c:Lcom/fasterxml/jackson/databind/introspect/l$a;

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->hasMixIns()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 5
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/introspect/d;->h:Z

    if-nez v2, :cond_3

    .line 6
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/d;->i:Lcom/fasterxml/jackson/databind/util/a;

    return-object p1

    .line 7
    :cond_3
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->e()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/d;->g:Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 9
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Ljava/lang/Class;

    invoke-direct {p0, v2, v4, v3}, Lcom/fasterxml/jackson/databind/introspect/d;->b(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v2

    .line 10
    :cond_4
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/introspect/d;->h:Z

    if-eqz v3, :cond_5

    .line 11
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Ljava/lang/Class;

    .line 12
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/g;->r(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 13
    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/d;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v2

    .line 14
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    .line 16
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/d;->c:Lcom/fasterxml/jackson/databind/introspect/l$a;

    .line 17
    invoke-interface {v5, v4}, Lcom/fasterxml/jackson/databind/introspect/l$a;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 18
    invoke-direct {p0, v2, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/d;->b(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v2

    .line 19
    :cond_7
    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/introspect/d;->h:Z

    if-eqz v4, :cond_6

    .line 20
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/g;->r(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 21
    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/d;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v2

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    .line 22
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->c:Lcom/fasterxml/jackson/databind/introspect/l$a;

    .line 23
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/l$a;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 24
    invoke-direct {p0, v2, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/d;->b(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v2

    .line 25
    :cond_9
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->c()Lcom/fasterxml/jackson/databind/util/a;

    move-result-object p1

    return-object p1
.end method

.method public static m(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/d;->p(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/d;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/d;->l()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    invoke-static {p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/d;->o(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/d;->p(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/d;->g(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/d;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/l$a;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/d;->l()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p0

    return-object p0
.end method

.method private static p(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/l$a;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method k()Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 12

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/JavaType;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {v0, v3, v1}, Lcom/fasterxml/jackson/databind/introspect/d;->d(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {v0, v3, v1}, Lcom/fasterxml/jackson/databind/introspect/d;->e(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Z)V

    .line 6
    :cond_1
    :goto_0
    new-instance v11, Lcom/fasterxml/jackson/databind/introspect/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/d;->e:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Ljava/lang/Class;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/d;->g:Ljava/lang/Class;

    .line 7
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/d;->j(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/a;

    move-result-object v5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/d;->d:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/d;->c:Lcom/fasterxml/jackson/databind/introspect/l$a;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v9

    iget-boolean v10, p0, Lcom/fasterxml/jackson/databind/introspect/d;->h:Z

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/fasterxml/jackson/databind/introspect/c;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/type/TypeFactory;Z)V

    return-object v11
.end method

.method l()Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 12

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 2
    new-instance v11, Lcom/fasterxml/jackson/databind/introspect/c;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/d;->f:Ljava/lang/Class;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/d;->g:Ljava/lang/Class;

    .line 3
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/d;->j(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/a;

    move-result-object v5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/d;->d:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/d;->b:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/d;->c:Lcom/fasterxml/jackson/databind/introspect/l$a;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/d;->a:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v9

    iget-boolean v10, p0, Lcom/fasterxml/jackson/databind/introspect/d;->h:Z

    const/4 v1, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/fasterxml/jackson/databind/introspect/c;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/type/TypeFactory;Z)V

    return-object v11
.end method
