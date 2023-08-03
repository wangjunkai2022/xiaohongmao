.class public Lcom/fasterxml/jackson/databind/introspect/s;
.super Lcom/fasterxml/jackson/databind/introspect/k;
.source "POJOPropertyBuilder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/s$g;,
        Lcom/fasterxml/jackson/databind/introspect/s$h;,
        Lcom/fasterxml/jackson/databind/introspect/s$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/introspect/k;",
        "Ljava/lang/Comparable<",
        "Lcom/fasterxml/jackson/databind/introspect/s;",
        ">;"
    }
.end annotation


# static fields
.field private static final m:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;


# instance fields
.field protected final b:Z

.field protected final c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;"
        }
    .end annotation
.end field

.field protected final d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final e:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected final f:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected g:Lcom/fasterxml/jackson/databind/introspect/s$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lcom/fasterxml/jackson/databind/introspect/s$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/fasterxml/jackson/databind/introspect/s$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lcom/fasterxml/jackson/databind/introspect/s$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected transient k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

.field protected transient l:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->f(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/s;->m:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;ZLcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Z",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/s;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;ZLcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;ZLcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Z",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/k;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 4
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/s;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 6
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/s;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 7
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/s;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/k;-><init>()V

    .line 9
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/s;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 10
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 11
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/s;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 12
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 13
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 14
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 15
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 16
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 17
    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    return-void
.end method

.method private E(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->d:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private F(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private G(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->f:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private I(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->e:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private J(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/i;)Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;",
            "Lcom/fasterxml/jackson/databind/introspect/i;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/i;)Lcom/fasterxml/jackson/databind/introspect/a;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 2
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v1, p2}, Lcom/fasterxml/jackson/databind/introspect/s;->J(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/i;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->d(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    return-object p1
.end method

.method private K(Ljava/util/Collection;Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/s$g;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/databind/introspect/s;",
            ">;",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "*>;)V"
        }
    .end annotation

    move-object v0, p3

    :goto_0
    if-eqz v0, :cond_8

    .line 1
    iget-object v7, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 2
    iget-boolean v1, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->d:Z

    if-eqz v1, :cond_6

    if-nez v7, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/s;

    if-nez v1, :cond_1

    .line 4
    new-instance v8, Lcom/fasterxml/jackson/databind/introspect/s;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/s;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    move-object v1, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/introspect/s;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;ZLcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 5
    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-ne p3, v2, :cond_2

    .line 7
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v2

    iput-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_2

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-ne p3, v2, :cond_3

    .line 9
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v2

    iput-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_2

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-ne p3, v2, :cond_4

    .line 11
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v2

    iput-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_2

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-ne p3, v2, :cond_5

    .line 13
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/s$g;->c(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v2

    iput-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_2

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Internal error: mismatched accessors, property: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_6
    :goto_1
    iget-boolean v1, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->e:Z

    if-nez v1, :cond_7

    .line 16
    :goto_2
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    .line 17
    :cond_7
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conflicting/ambiguous property name definitions (implicit name "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 18
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/g;->g0(Lcom/fasterxml/jackson/databind/PropertyName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): found multiple explicit names: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but also implicit accessor: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    return-void
.end method

.method private L(Lcom/fasterxml/jackson/databind/introspect/s$g;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "+",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_3

    .line 1
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->c:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_2
    :goto_1
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method private M(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/i;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->M(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/i;->e(Lcom/fasterxml/jackson/databind/introspect/i;Lcom/fasterxml/jackson/databind/introspect/i;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private varargs P(I[Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "+",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/introspect/i;"
        }
    .end annotation

    .line 1
    aget-object v0, p2, p1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->M(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    array-length v1, p2

    if-ge p1, v1, :cond_1

    .line 3
    aget-object v1, p2, p1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/s;->P(I[Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/i;->e(Lcom/fasterxml/jackson/databind/introspect/i;Lcom/fasterxml/jackson/databind/introspect/i;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private R(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/s$g;->e()Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    return-object p1
.end method

.method private S(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/s$g;->g()Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    return-object p1
.end method

.method private W(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/s$g;->b()Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    return-object p1
.end method

.method private static o0(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s$g;->a(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->E(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->E(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->E(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->E(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/s$c;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/s$c;-><init>(Lcom/fasterxml/jackson/databind/introspect/s;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->i0(Lcom/fasterxml/jackson/databind/introspect/s$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic C(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/k;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->v0(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/s;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/k;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->w0(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/s;

    move-result-object p1

    return-object p1
.end method

.method protected N(Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_7

    .line 2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v4, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findMergeInfo(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/PropertyMetadata$a;->b(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyMetadata$a;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withMergeInfo(Lcom/fasterxml/jackson/databind/PropertyMetadata$a;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object p1

    :cond_0
    const/4 v3, 0x0

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v4, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSetterInfo(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v2

    .line 8
    invoke-virtual {v4}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    if-nez v4, :cond_6

    .line 9
    :cond_3
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/s;->Q(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Class;

    move-result-object p2

    .line 10
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/s;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v5, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/b;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/b;->getSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object v5

    if-eqz v5, :cond_5

    if-nez v2, :cond_4

    .line 12
    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v2

    :cond_4
    if-nez v4, :cond_5

    .line 13
    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v4

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/b;->getMergeable()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 15
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 16
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/PropertyMetadata$a;->c(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyMetadata$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withMergeInfo(Lcom/fasterxml/jackson/databind/PropertyMetadata$a;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object p1

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move-object v4, v2

    const/4 v1, 0x1

    :cond_8
    :goto_1
    if-nez v1, :cond_9

    if-eqz v2, :cond_9

    if-nez v4, :cond_c

    .line 17
    :cond_9
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object p2

    if-nez v2, :cond_a

    .line 18
    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v2

    :cond_a
    if-nez v4, :cond_b

    .line 19
    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v4

    :cond_b
    if-eqz v1, :cond_c

    .line 20
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultMergeable()Ljava/lang/Boolean;

    move-result-object p2

    .line 21
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz v0, :cond_c

    .line 22
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/PropertyMetadata$a;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyMetadata$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withMergeInfo(Lcom/fasterxml/jackson/databind/PropertyMetadata$a;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object p1

    :cond_c
    if-nez v2, :cond_d

    if-eqz v4, :cond_e

    .line 23
    :cond_d
    invoke-virtual {p1, v2, v4}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withNulls(Lcom/fasterxml/jackson/annotation/Nulls;Lcom/fasterxml/jackson/annotation/Nulls;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object p1

    :cond_e
    return-object p1
.end method

.method protected O(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "is"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method protected Q(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/a;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected T(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p2

    .line 4
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/s;->V(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I

    move-result v0

    .line 6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->V(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I

    move-result v1

    if-eq v0, v1, :cond_3

    if-ge v0, v1, :cond_2

    return-object p2

    :cond_2
    return-object p1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 8
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->resolveSetterConflict(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected U(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p2, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    :goto_0
    if-eqz p2, :cond_2

    .line 5
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v2, p2, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/s;->T(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v1

    .line 6
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v2, p2, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object p1, p2

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_1
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/s$g;->f()Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 13
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object p1

    .line 14
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/r;->a:Lcom/fasterxml/jackson/databind/introspect/r;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string p2, " vs "

    .line 15
    invoke-static {p2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Conflicting setter definitions for property \"%s\": %s"

    .line 18
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected V(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "set"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public X(Lcom/fasterxml/jackson/databind/introspect/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/s;->o0(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/s;->o0(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/s;->o0(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->o0(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    return-void
.end method

.method public Y(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V
    .locals 8

    new-instance v7, Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/introspect/s$g;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    return-void
.end method

.method public Z(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V
    .locals 8

    new-instance v7, Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/introspect/s$g;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public a0(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V
    .locals 8

    new-instance v7, Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/introspect/s$g;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b0(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V
    .locals 8

    new-instance v7, Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/introspect/s$g;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/PropertyName;ZZZ)V

    iput-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    return-void
.end method

.method public c()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public c0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->G(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->G(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->G(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->G(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/s;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->e0(Lcom/fasterxml/jackson/databind/introspect/s;)I

    move-result p1

    return p1
.end method

.method public d()Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/s$d;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/s$d;-><init>(Lcom/fasterxml/jackson/databind/introspect/s;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->i0(Lcom/fasterxml/jackson/databind/introspect/s$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/p;

    return-object v0
.end method

.method public d0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->I(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->I(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->I(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->I(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e0(Lcom/fasterxml/jackson/databind/introspect/s;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/s;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public f()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->l:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/s;->m:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/s$b;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/s$b;-><init>(Lcom/fasterxml/jackson/databind/introspect/s;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->i0(Lcom/fasterxml/jackson/databind/introspect/s$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    if-nez v0, :cond_2

    .line 4
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/s;->m:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->l:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    return-object v0
.end method

.method public f0(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/introspect/s;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/s;->K(Ljava/util/Collection;Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/s$g;)V

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/s;->K(Ljava/util/Collection;Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/s$g;)V

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/s;->K(Ljava/util/Collection;Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/s$g;)V

    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/s;->K(Ljava/util/Collection;Ljava/util/Map;Lcom/fasterxml/jackson/databind/introspect/s$g;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
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

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/s$a;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/s$a;-><init>(Lcom/fasterxml/jackson/databind/introspect/s;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->i0(Lcom/fasterxml/jackson/databind/introspect/s$i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public g0()Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/s$e;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/s$e;-><init>(Lcom/fasterxml/jackson/databind/introspect/s;)V

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/s;->j0(Lcom/fasterxml/jackson/databind/introspect/s$i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    return-object v0
.end method

.method public getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0
.end method

.method public getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->m0()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_2

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 8
    sget-object v1, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    if-nez v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withDescription(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->construct(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 11
    :goto_1
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->N(Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 13
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->k:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->q()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public h0()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/s;->L(Lcom/fasterxml/jackson/databind/introspect/s$g;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->L(Lcom/fasterxml/jackson/databind/introspect/s$g;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->L(Lcom/fasterxml/jackson/databind/introspect/s$g;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->L(Lcom/fasterxml/jackson/databind/introspect/s$g;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v1

    instance-of v1, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    return-object v0

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    return-object v0
.end method

.method protected i0(Lcom/fasterxml/jackson/databind/introspect/s$i;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$i<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method protected j0(Lcom/fasterxml/jackson/databind/introspect/s$i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/s$i<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    return-object v0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    return-object v0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_4

    return-object p1

    :cond_4
    return-object v1

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eq v0, p2, :cond_6

    return-object v0

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_7

    .line 14
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eq v0, p2, :cond_7

    return-object v0

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_8

    .line 16
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eq v0, p2, :cond_8

    return-object v0

    .line 17
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_9

    .line 18
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$i;->a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    if-eq p1, p2, :cond_9

    return-object p1

    :cond_9
    return-object v1
.end method

.method public k()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/databind/util/g;->p()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/s$h;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/s$h;-><init>(Lcom/fasterxml/jackson/databind/introspect/s$g;)V

    return-object v1
.end method

.method protected k0()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    return-object v0
.end method

.method public l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 3
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    :goto_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple fields representing property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method protected l0()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public m()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v1, :cond_1

    .line 3
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    .line 4
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 5
    iget-object v3, v1, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/s;->O(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I

    move-result v2

    .line 9
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/s;->O(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)I

    move-result v3

    if-eq v2, v3, :cond_5

    if-ge v2, v3, :cond_4

    :goto_1
    move-object v0, v1

    .line 10
    :cond_4
    :goto_2
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    .line 11
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflicting getter definitions for property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 12
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " vs "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->f()Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 14
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object v0
.end method

.method protected m0()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0

    :cond_1
    return-object v1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    return-object v0

    :cond_6
    return-object v1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->f:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected n0()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public p0(Z)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz p1, :cond_0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v4

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v1

    invoke-direct {p0, v4, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->P(I[Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->J(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/i;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz p1, :cond_4

    new-array v0, v1, [Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v4

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v2

    invoke-direct {p0, v4, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->P(I[Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->J(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/i;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz p1, :cond_2

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v4

    .line 8
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v1

    invoke-direct {p0, v4, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->P(I[Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->J(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/i;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz p1, :cond_3

    new-array v0, v1, [Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v4

    .line 11
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v2

    invoke-direct {p0, v4, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->P(I[Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->J(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/i;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz p1, :cond_4

    new-array v0, v2, [Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v4

    .line 14
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    aput-object p1, v0, v3

    invoke-direct {p0, v4, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->P(I[Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->J(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/i;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    :cond_4
    :goto_0
    return-void
.end method

.method public q()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/k;->h()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public q0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    return-void
.end method

.method public r()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->m()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/a;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->t()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->m()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_4

    .line 11
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0

    .line 12
    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/a;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public r0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->R(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->R(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->R(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->R(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    return-void
.end method

.method public s()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->r()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public s0(Z)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->t0(ZLcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    move-result-object p1

    return-object p1
.end method

.method public t()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez v1, :cond_1

    .line 3
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 4
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v3, v1, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/s;->T(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v2

    .line 5
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v3, v1, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    if-ne v2, v3, :cond_3

    move-object v0, v1

    .line 7
    :goto_1
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/s;->U(Lcom/fasterxml/jackson/databind/introspect/s$g;Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    return-object v0

    .line 9
    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/s$g;->f()Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 10
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public t0(ZLcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->g0()Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    .line 3
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/s$f;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 p2, 0x2

    if-eq v1, p2, :cond_5

    const/4 p2, 0x3

    if-eq v1, p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/s;->S(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 5
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/s;->S(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-nez p1, :cond_5

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->S(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 8
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;->S(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_1

    .line 9
    :cond_2
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 10
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    if-eqz p1, :cond_5

    .line 11
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/introspect/q;->k(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s;->h0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 14
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/introspect/q;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 16
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 17
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->b:Z

    if-nez p1, :cond_5

    .line 18
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    :cond_5
    :goto_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Property \'"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'; ctors: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", field(s): "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getter(s): "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setter(s): "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->W(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->W(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->W(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->W(Lcom/fasterxml/jackson/databind/introspect/s$g;)Lcom/fasterxml/jackson/databind/introspect/s$g;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    return-void
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v0(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/s;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/s;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;-><init>(Lcom/fasterxml/jackson/databind/introspect/s;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w0(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/s;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s;-><init>(Lcom/fasterxml/jackson/databind/introspect/s;Lcom/fasterxml/jackson/databind/PropertyName;)V

    :goto_0
    return-object v0
.end method

.method public x(Lcom/fasterxml/jackson/databind/PropertyName;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->e:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->g:Lcom/fasterxml/jackson/databind/introspect/s$g;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->F(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->i:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->F(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->j:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->F(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s;->h:Lcom/fasterxml/jackson/databind/introspect/s$g;

    .line 4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/s;->E(Lcom/fasterxml/jackson/databind/introspect/s$g;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
