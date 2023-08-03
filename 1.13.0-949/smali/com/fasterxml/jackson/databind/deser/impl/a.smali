.class public final Lcom/fasterxml/jackson/databind/deser/impl/a;
.super Ljava/lang/Object;
.source "CreatorCandidate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/a$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected final c:I

.field protected final d:[Lcom/fasterxml/jackson/databind/deser/impl/a$a;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/impl/a$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lcom/fasterxml/jackson/databind/deser/impl/a$a;

    .line 5
    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->c:I

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/k;)Lcom/fasterxml/jackson/databind/deser/impl/a;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v0

    .line 2
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/deser/impl/a$a;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v3

    .line 4
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v4

    .line 5
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/impl/a$a;

    if-nez p2, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    aget-object v6, p2, v2

    :goto_1
    invoke-direct {v5, v3, v6, v4}, Lcom/fasterxml/jackson/databind/deser/impl/a$a;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Lcom/fasterxml/jackson/databind/deser/impl/a;

    invoke-direct {p2, p0, p1, v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/a;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/impl/a$a;I)V

    return-object p2
.end method


# virtual methods
.method public b()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public c(I)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lcom/fasterxml/jackson/databind/deser/impl/a$a;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->b:Lcom/fasterxml/jackson/databind/introspect/k;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/k;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/k;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->a:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lcom/fasterxml/jackson/databind/deser/impl/a$a;

    aget-object p1, v1, p1

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->a:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->c:I

    if-ge v1, v3, :cond_2

    .line 2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lcom/fasterxml/jackson/databind/deser/impl/a$a;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->c:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    if-nez v3, :cond_1

    if-ltz v2, :cond_0

    return v0

    :cond_0
    move v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public f(I)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lcom/fasterxml/jackson/databind/deser/impl/a$a;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->c:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    return-object p1
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->c:I

    return v0
.end method

.method public h(I)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lcom/fasterxml/jackson/databind/deser/impl/a$a;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->b:Lcom/fasterxml/jackson/databind/introspect/k;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/k;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lcom/fasterxml/jackson/databind/deser/impl/a$a;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->a:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    return-object p1
.end method

.method public j(I)Lcom/fasterxml/jackson/databind/introspect/k;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->d:[Lcom/fasterxml/jackson/databind/deser/impl/a$a;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->b:Lcom/fasterxml/jackson/databind/introspect/k;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
