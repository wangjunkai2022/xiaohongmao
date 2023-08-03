.class public final Lcom/fasterxml/jackson/databind/deser/impl/a$a;
.super Ljava/lang/Object;
.source "CreatorCandidate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

.field public final b:Lcom/fasterxml/jackson/databind/introspect/k;

.field public final c:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/introspect/k;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->a:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->b:Lcom/fasterxml/jackson/databind/introspect/k;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->c:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    return-void
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->b:Lcom/fasterxml/jackson/databind/introspect/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/k;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/a$a;->b:Lcom/fasterxml/jackson/databind/introspect/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/k;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v0

    return v0
.end method
