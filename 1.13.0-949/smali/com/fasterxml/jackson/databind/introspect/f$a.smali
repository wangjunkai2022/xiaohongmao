.class final Lcom/fasterxml/jackson/databind/introspect/f$a;
.super Ljava/lang/Object;
.source "AnnotatedFieldCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/introspect/t;

.field public final b:Ljava/lang/reflect/Field;

.field public c:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/f$a;->a:Lcom/fasterxml/jackson/databind/introspect/t;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/f$a;->b:Ljava/lang/reflect/Field;

    .line 4
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->e()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/f$a;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    return-void
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .locals 4

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/f$a;->a:Lcom/fasterxml/jackson/databind/introspect/t;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/f$a;->b:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/f$a;->c:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->b()Lcom/fasterxml/jackson/databind/introspect/i;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;-><init>(Lcom/fasterxml/jackson/databind/introspect/t;Ljava/lang/reflect/Field;Lcom/fasterxml/jackson/databind/introspect/i;)V

    return-object v0
.end method
