.class Lcom/fasterxml/jackson/databind/introspect/m;
.super Ljava/lang/Object;
.source "CollectorBase.java"


# static fields
.field protected static final b:[Lcom/fasterxml/jackson/databind/introspect/i;

.field protected static final c:[Ljava/lang/annotation/Annotation;


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/introspect/i;

    .line 1
    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/m;->b:[Lcom/fasterxml/jackson/databind/introspect/i;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    .line 2
    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/m;->c:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/m;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    return-void
.end method

.method static a()Lcom/fasterxml/jackson/databind/introspect/i;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/i;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/i;-><init>()V

    return-object v0
.end method

.method static b(I)[Lcom/fasterxml/jackson/databind/introspect/i;
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/fasterxml/jackson/databind/introspect/m;->b:[Lcom/fasterxml/jackson/databind/introspect/i;

    return-object p0

    .line 2
    :cond_0
    new-array v0, p0, [Lcom/fasterxml/jackson/databind/introspect/i;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/m;->a()Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected static final c(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/annotation/Target;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/lang/annotation/Retention;

    if-eqz p0, :cond_0

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
.method protected final d(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    aget-object v2, p2, v1

    .line 3
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 4
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/m;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/m;->h(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method protected final e([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 5

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->e()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    aget-object v3, p1, v2

    .line 4
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 5
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/m;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/databind/introspect/m;->h(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected final f(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    aget-object v2, p2, v1

    .line 3
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->h(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 5
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/m;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/m;->g(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method protected final g(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->r(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    aget-object v2, p2, v1

    .line 4
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/introspect/m;->c(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->h(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 7
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/m;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/m;->h(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method protected final h(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/g;->r(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    aget-object v2, p2, v1

    .line 4
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/introspect/m;->c(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/m;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->h(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/m;->h(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method
