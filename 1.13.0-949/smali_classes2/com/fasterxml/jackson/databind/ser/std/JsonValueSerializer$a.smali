.class Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;
.super Lcom/fasterxml/jackson/databind/jsontype/f;
.source "JsonValueSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/jsontype/f;

.field protected final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/f;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/fasterxml/jackson/databind/jsontype/c;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/f;->d()Lcom/fasterxml/jackson/databind/jsontype/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/f;->e()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/f;->i(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/f;->j(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/f;->k(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/f;->l(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    return-void
.end method

.method public m(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/f;->m(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/f;->n(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V

    return-void
.end method

.method public o(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    iput-object v0, p2, Lcom/fasterxml/jackson/core/type/WritableTypeId;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/f;->o(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/f;->p(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public q(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/f;->q(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V

    return-void
.end method

.method public r(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/f;->r(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public s(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/f;->s(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V

    return-void
.end method

.method public t(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/f;->t(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public u(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/f;->u(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V

    return-void
.end method

.method public v(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/f;->v(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/f;->w(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public x(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/f;->x(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public y(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->a:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/f;->y(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
