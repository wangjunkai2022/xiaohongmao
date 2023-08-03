.class public abstract Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.super Ljava/lang/Object;
.source "AnnotationCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;,
        Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneAnnotation;,
        Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;,
        Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$b;,
        Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$c;,
        Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$a;
    }
.end annotation


# static fields
.field protected static final b:Lcom/fasterxml/jackson/databind/util/a;


# instance fields
.field protected final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$NoAnnotations;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->b:Lcom/fasterxml/jackson/databind/util/a;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->a:Ljava/lang/Object;

    return-void
.end method

.method public static d()Lcom/fasterxml/jackson/databind/util/a;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->b:Lcom/fasterxml/jackson/databind/util/a;

    return-object v0
.end method

.method public static e()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$a;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$a;

    return-object v0
.end method

.method public static f(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$a;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.end method

.method public abstract b()Lcom/fasterxml/jackson/databind/introspect/i;
.end method

.method public abstract c()Lcom/fasterxml/jackson/databind/util/a;
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract h(Ljava/lang/annotation/Annotation;)Z
.end method
