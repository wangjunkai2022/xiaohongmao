.class Lcom/fasterxml/jackson/databind/introspect/s$d;
.super Ljava/lang/Object;
.source "POJOPropertyBuilder.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/introspect/s$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/introspect/s;->d()Lcom/fasterxml/jackson/databind/introspect/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/databind/introspect/s$i<",
        "Lcom/fasterxml/jackson/databind/introspect/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fasterxml/jackson/databind/introspect/s;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/introspect/s;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s$d;->a:Lcom/fasterxml/jackson/databind/introspect/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s$d;->b(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$d;->a:Lcom/fasterxml/jackson/databind/introspect/s;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/s$d;->a:Lcom/fasterxml/jackson/databind/introspect/s;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/a;Lcom/fasterxml/jackson/databind/introspect/p;)Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object v0

    :cond_0
    return-object v0
.end method
