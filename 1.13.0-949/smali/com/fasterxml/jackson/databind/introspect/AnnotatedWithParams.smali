.class public abstract Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.source "AnnotatedWithParams.java"


# static fields
.field private static final e:J = 0x1L


# instance fields
.field protected final d:[Lcom/fasterxml/jackson/databind/introspect/i;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/i;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    .line 4
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->d:[Lcom/fasterxml/jackson/databind/introspect/i;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/t;Lcom/fasterxml/jackson/databind/introspect/i;[Lcom/fasterxml/jackson/databind/introspect/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Lcom/fasterxml/jackson/databind/introspect/i;)V

    .line 2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->d:[Lcom/fasterxml/jackson/databind/introspect/i;

    return-void
.end method


# virtual methods
.method public final addOrOverrideParam(ILjava/lang/annotation/Annotation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->d:[Lcom/fasterxml/jackson/databind/introspect/i;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/i;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/i;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->d:[Lcom/fasterxml/jackson/databind/introspect/i;

    aput-object v0, v1, p1

    .line 4
    :cond_0
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/i;->b(Ljava/lang/annotation/Annotation;)Z

    return-void
.end method

.method protected b(ILcom/fasterxml/jackson/databind/introspect/i;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->d:[Lcom/fasterxml/jackson/databind/introspect/i;

    aput-object p2, v0, p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object p1

    return-object p1
.end method

.method public abstract call()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract call([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract call1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final getAnnotationCount()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->b:Lcom/fasterxml/jackson/databind/introspect/i;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/i;->size()I

    move-result v0

    return v0
.end method

.method public abstract getGenericParameterType(I)Ljava/lang/reflect/Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 7

    .line 1
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->a:Lcom/fasterxml/jackson/databind/introspect/t;

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterAnnotations(I)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v4

    move-object v0, v6

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/t;Lcom/fasterxml/jackson/databind/introspect/i;I)V

    return-object v6
.end method

.method public final getParameterAnnotations(I)Lcom/fasterxml/jackson/databind/introspect/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->d:[Lcom/fasterxml/jackson/databind/introspect/i;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getParameterCount()I
.end method

.method public abstract getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;
.end method

.method public abstract getRawParameterType(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
