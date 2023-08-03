.class public abstract Lcom/fasterxml/jackson/databind/introspect/k;
.super Ljava/lang/Object;
.source "BeanPropertyDefinition.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/util/n;


# static fields
.field protected static final a:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/k;->a:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->z()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract C(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/k;
.end method

.method public abstract D(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/k;
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract c()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
.end method

.method public d()Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->f()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
.end method

.method public abstract getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
.end method

.method public h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->m()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
.end method

.method public isRequired()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->isRequired()Z

    move-result v0

    return v0
.end method

.method public k()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/fasterxml/jackson/databind/util/g;->p()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
.end method

.method public abstract m()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->t()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public p()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->t()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract q()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public abstract r()Lcom/fasterxml/jackson/databind/JavaType;
.end method

.method public abstract s()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract t()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method

.method public abstract u()Z
.end method

.method public abstract v()Z
.end method

.method public abstract w()Z
.end method

.method public x(Lcom/fasterxml/jackson/databind/PropertyName;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract y()Z
.end method

.method public abstract z()Z
.end method
