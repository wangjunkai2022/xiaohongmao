.class public Lcom/fasterxml/jackson/databind/util/q;
.super Ljava/lang/Object;
.source "RawValue.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/f;


# instance fields
.field protected a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/j;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/f;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/core/j;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/fasterxml/jackson/core/j;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->C1(Lcom/fasterxml/jackson/core/j;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->D1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/f;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->o1(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/q;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/util/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/fasterxml/jackson/databind/util/q;

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/f;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/fasterxml/jackson/databind/f;

    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/f;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/q;->a(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :goto_0
    return-void
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/f;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/fasterxml/jackson/databind/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/f;->serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p3, v0, Lcom/fasterxml/jackson/core/j;

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/q;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/q;->a:Ljava/lang/Object;

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/g;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[RawValue of type %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
