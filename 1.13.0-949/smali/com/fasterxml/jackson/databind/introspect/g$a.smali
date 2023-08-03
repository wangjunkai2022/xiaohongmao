.class final Lcom/fasterxml/jackson/databind/introspect/g$a;
.super Ljava/lang/Object;
.source "AnnotatedMethodCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/fasterxml/jackson/databind/introspect/t;

.field public b:Ljava/lang/reflect/Method;

.field public c:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/g$a;->a:Lcom/fasterxml/jackson/databind/introspect/t;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/g$a;->b:Ljava/lang/reflect/Method;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/g$a;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    return-void
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/g$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/g$a;->a:Lcom/fasterxml/jackson/databind/introspect/t;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/g$a;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->b()Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/i;[Lcom/fasterxml/jackson/databind/introspect/i;)V

    return-object v2
.end method
