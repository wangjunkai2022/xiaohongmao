.class public final Lcom/fasterxml/jackson/databind/ser/impl/f;
.super Ljava/lang/Object;
.source "WritableObjectId.java"


# instance fields
.field public final a:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;

.field protected c:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->c:Z

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->a:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->a:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->generateId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->b:Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public b(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/ser/impl/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->c:Z

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->b:Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    :goto_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->r1(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p3, Lcom/fasterxml/jackson/databind/ser/impl/b;->b:Lcom/fasterxml/jackson/core/j;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->U0(Lcom/fasterxml/jackson/core/j;)V

    .line 7
    iget-object p3, p3, Lcom/fasterxml/jackson/databind/ser/impl/b;->d:Lcom/fasterxml/jackson/databind/g;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->b:Ljava/lang/Object;

    invoke-virtual {p3, v0, p1, p2}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    :cond_2
    return-void
.end method

.method public c(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/ser/impl/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p3, Lcom/fasterxml/jackson/databind/ser/impl/b;->e:Z

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->b:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->s1(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p3, p3, Lcom/fasterxml/jackson/databind/ser/impl/b;->d:Lcom/fasterxml/jackson/databind/g;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/f;->b:Ljava/lang/Object;

    invoke-virtual {p3, v0, p1, p2}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
