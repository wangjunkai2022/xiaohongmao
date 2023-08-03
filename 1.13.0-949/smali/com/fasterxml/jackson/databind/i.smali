.class public Lcom/fasterxml/jackson/databind/i;
.super Ljava/lang/Object;
.source "MappingIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field protected static final i:Lcom/fasterxml/jackson/databind/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/i<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final j:I = 0x0

.field protected static final k:I = 0x1

.field protected static final l:I = 0x2

.field protected static final m:I = 0x3


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final b:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field protected final c:Lcom/fasterxml/jackson/databind/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final d:Lcom/fasterxml/jackson/core/JsonParser;

.field protected final e:Lcom/fasterxml/jackson/core/f;

.field protected final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final g:Z

.field protected h:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Lcom/fasterxml/jackson/databind/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/i;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;ZLjava/lang/Object;)V

    sput-object v7, Lcom/fasterxml/jackson/databind/i;->i:Lcom/fasterxml/jackson/databind/i;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/d;ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/i;->a:Lcom/fasterxml/jackson/databind/JavaType;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/i;->c:Lcom/fasterxml/jackson/databind/d;

    .line 6
    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/i;->g:Z

    const/4 p1, 0x0

    if-nez p6, :cond_0

    .line 7
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/i;->f:Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/i;->f:Ljava/lang/Object;

    :goto_0
    if-nez p2, :cond_1

    .line 9
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/i;->e:Lcom/fasterxml/jackson/core/f;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/fasterxml/jackson/databind/i;->h:I

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->N0()Lcom/fasterxml/jackson/core/f;

    move-result-object p1

    if-eqz p5, :cond_2

    .line 12
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->p1()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->J()V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p2

    .line 15
    sget-object p3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p2, p3, :cond_3

    sget-object p3, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p2, p3, :cond_4

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->e()Lcom/fasterxml/jackson/core/f;

    move-result-object p1

    .line 17
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/i;->e:Lcom/fasterxml/jackson/core/f;

    const/4 p1, 0x2

    .line 18
    iput p1, p0, Lcom/fasterxml/jackson/databind/i;->h:I

    :goto_2
    return-void
.end method

.method public static i()Lcom/fasterxml/jackson/databind/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/fasterxml/jackson/databind/i<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/i;->i:Lcom/fasterxml/jackson/databind/i;

    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/i;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public D(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List<",
            "-TT;>;>(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->s()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected a(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/IOException;",
            ")TR;"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected b(Lcom/fasterxml/jackson/databind/JsonMappingException;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;",
            ")TR;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonMappingException;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/i;->h:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/fasterxml/jackson/databind/i;->h:I

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->N0()Lcom/fasterxml/jackson/core/f;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/i;->e:Lcom/fasterxml/jackson/core/f;

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->U1()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 7
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->N0()Lcom/fasterxml/jackson/core/f;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/i;->e:Lcom/fasterxml/jackson/core/f;

    if-ne v1, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->J()V

    return-void
.end method

.method protected h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->r()Z

    move-result v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/i;->a(Ljava/io/IOException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_1
    move-exception v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/i;->b(Lcom/fasterxml/jackson/databind/JsonMappingException;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->t0()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->s()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/i;->a(Ljava/io/IOException;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/i;->b(Lcom/fasterxml/jackson/databind/JsonMappingException;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    return-object v0
.end method

.method public q()Lcom/fasterxml/jackson/core/c;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->P0()Lcom/fasterxml/jackson/core/c;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/i;->h:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->d()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_5

    .line 7
    :cond_3
    iput v1, p0, Lcom/fasterxml/jackson/databind/i;->h:I

    .line 8
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/i;->g:Z

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    :cond_4
    return v1

    :cond_5
    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lcom/fasterxml/jackson/databind/i;->h:I

    return v2

    :cond_6
    return v1
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public s()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/i;->h:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/i;->f:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/i;->c:Lcom/fasterxml/jackson/databind/d;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0, v3, v4}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/i;->c:Lcom/fasterxml/jackson/databind/d;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/i;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v3, v4, v5, v0}, Lcom/fasterxml/jackson/databind/d;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/i;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_1
    iput v1, p0, Lcom/fasterxml/jackson/databind/i;->h:I

    .line 9
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->J()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    iput v2, p0, Lcom/fasterxml/jackson/databind/i;->h:I

    .line 11
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/i;->d:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->J()V

    .line 12
    throw v0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "-TT;>;>(TC;)TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/i;->s()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method
