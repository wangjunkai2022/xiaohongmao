.class Lcom/fasterxml/jackson/databind/introspect/s$a;
.super Ljava/lang/Object;
.source "POJOPropertyBuilder.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/introspect/s$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/introspect/s;->g()[Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/databind/introspect/s$i<",
        "[",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fasterxml/jackson/databind/introspect/s;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/introspect/s;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s$a;->a:Lcom/fasterxml/jackson/databind/introspect/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/s$a;->b(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)[Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$a;->a:Lcom/fasterxml/jackson/databind/introspect/s;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findViews(Lcom/fasterxml/jackson/databind/introspect/a;)[Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
