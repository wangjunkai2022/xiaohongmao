.class Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.source "AnnotationCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;->c:Ljava/lang/Class;

    .line 3
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;->d:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;->c:Ljava/lang/Class;

    if-ne v2, v4, :cond_0

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;->d:Ljava/lang/annotation/Annotation;

    return-object p0

    .line 4
    :cond_0
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$b;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;->d:Ljava/lang/annotation/Annotation;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$b;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public b()Lcom/fasterxml/jackson/databind/introspect/i;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;->c:Ljava/lang/Class;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;->d:Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/i;->f(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/fasterxml/jackson/databind/util/a;
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;->c:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;->d:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public h(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;->c:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
