.class public abstract Lcom/squareup/moshi/q;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field a:I

.field b:[I

.field c:[Ljava/lang/String;

.field d:[I

.field e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:Z

.field i:I

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/squareup/moshi/q;->a:I

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/squareup/moshi/q;->b:[I

    new-array v1, v0, [Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/squareup/moshi/q;->c:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/squareup/moshi/q;->d:[I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/squareup/moshi/q;->i:I

    return-void
.end method

.method public static E(Lokio/BufferedSink;)Lcom/squareup/moshi/q;
    .locals 1
    .annotation runtime Lr7/c;
    .end annotation

    new-instance v0, Lcom/squareup/moshi/m;

    invoke-direct {v0, p0}, Lcom/squareup/moshi/m;-><init>(Lokio/BufferedSink;)V

    return-object v0
.end method


# virtual methods
.method public abstract A(Ljava/lang/String;)Lcom/squareup/moshi/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract D()Lcom/squareup/moshi/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final G()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/squareup/moshi/q;->a:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/squareup/moshi/q;->b:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/squareup/moshi/q;->G()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/squareup/moshi/q;->h:Z

    return-void
.end method

.method final I(I)V
    .locals 3

    iget-object v0, p0, Lcom/squareup/moshi/q;->b:[I

    iget v1, p0, Lcom/squareup/moshi/q;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/moshi/q;->a:I

    aput p1, v0, v1

    return-void
.end method

.method final J(I)V
    .locals 2

    iget-object v0, p0, Lcom/squareup/moshi/q;->b:[I

    iget v1, p0, Lcom/squareup/moshi/q;->a:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/squareup/moshi/q;->e:Ljava/lang/String;

    return-void
.end method

.method public final L(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/moshi/q;->f:Z

    return-void
.end method

.method public final M(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/moshi/q;->g:Z

    return-void
.end method

.method public final W(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/squareup/moshi/q;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/q;->j:Ljava/util/Map;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/squareup/moshi/q;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag value must be of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final X(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lr7/c;
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/q;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Lcom/squareup/moshi/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b()I
    .locals 2
    .annotation runtime Lr7/c;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/squareup/moshi/q;->G()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget v0, p0, Lcom/squareup/moshi/q;->i:I

    .line 4
    iget v1, p0, Lcom/squareup/moshi/q;->a:I

    iput v1, p0, Lcom/squareup/moshi/q;->i:I

    return v0
.end method

.method public abstract b0(D)Lcom/squareup/moshi/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d()Lcom/squareup/moshi/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d0(J)Lcom/squareup/moshi/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g0(Ljava/lang/Boolean;)Lcom/squareup/moshi/q;
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getPath()Ljava/lang/String;
    .locals 4
    .annotation runtime Lr7/c;
    .end annotation

    iget v0, p0, Lcom/squareup/moshi/q;->a:I

    iget-object v1, p0, Lcom/squareup/moshi/q;->b:[I

    iget-object v2, p0, Lcom/squareup/moshi/q;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/moshi/q;->d:[I

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/moshi/k;->a(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final h()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/moshi/q;->a:I

    iget-object v1, p0, Lcom/squareup/moshi/q;->b:[I

    array-length v2, v1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v2, 0x100

    if-eq v0, v2, :cond_2

    .line 2
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/q;->b:[I

    .line 3
    iget-object v0, p0, Lcom/squareup/moshi/q;->c:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/moshi/q;->c:[Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/squareup/moshi/q;->d:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/q;->d:[I

    .line 5
    instance-of v0, p0, Lcom/squareup/moshi/p;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, p0

    check-cast v0, Lcom/squareup/moshi/p;

    iget-object v1, v0, Lcom/squareup/moshi/p;->k:[Ljava/lang/Object;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    .line 7
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/moshi/p;->k:[Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 8
    :cond_2
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting too deep at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/q;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": circular reference?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract h0(Ljava/lang/Number;)Lcom/squareup/moshi/q;
    .param p1    # Ljava/lang/Number;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i()Lcom/squareup/moshi/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lcom/squareup/moshi/q;->i:I

    return-void
.end method

.method public abstract l0(Ljava/lang/String;)Lcom/squareup/moshi/q;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final n0(Lokio/BufferedSource;)Lcom/squareup/moshi/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/squareup/moshi/q;->h:Z

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/squareup/moshi/q;->p0()Lokio/BufferedSink;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-interface {p1, v0}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lokio/Sink;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 5
    :try_start_1
    invoke-interface {v0}, Lokio/Sink;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BufferedSource cannot be used as a map key in JSON at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lcom/squareup/moshi/q;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract o0(Z)Lcom/squareup/moshi/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract p()Lcom/squareup/moshi/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract p0()Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lr7/c;
    .end annotation
.end method

.method public final q()Ljava/lang/String;
    .locals 1
    .annotation runtime Lr7/c;
    .end annotation

    iget-object v0, p0, Lcom/squareup/moshi/q;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final r()Z
    .locals 1
    .annotation runtime Lr7/c;
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/moshi/q;->g:Z

    return v0
.end method

.method public final s()Z
    .locals 1
    .annotation runtime Lr7/c;
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/moshi/q;->f:Z

    return v0
.end method

.method public final y(Ljava/lang/Object;)Lcom/squareup/moshi/q;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/squareup/moshi/q;->d()Lcom/squareup/moshi/q;

    .line 3
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_0

    const-string v0, "Map keys must be non-null"

    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Map keys must be of type String: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/q;->A(Ljava/lang/String;)Lcom/squareup/moshi/q;

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/q;->y(Ljava/lang/Object;)Lcom/squareup/moshi/q;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/moshi/q;->p()Lcom/squareup/moshi/q;

    goto :goto_3

    .line 11
    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/squareup/moshi/q;->a()Lcom/squareup/moshi/q;

    .line 13
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/squareup/moshi/q;->y(Ljava/lang/Object;)Lcom/squareup/moshi/q;

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/squareup/moshi/q;->i()Lcom/squareup/moshi/q;

    goto :goto_3

    .line 16
    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/q;->l0(Ljava/lang/String;)Lcom/squareup/moshi/q;

    goto :goto_3

    .line 18
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/q;->o0(Z)Lcom/squareup/moshi/q;

    goto :goto_3

    .line 20
    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 21
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/q;->b0(D)Lcom/squareup/moshi/q;

    goto :goto_3

    .line 22
    :cond_8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 23
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/q;->d0(J)Lcom/squareup/moshi/q;

    goto :goto_3

    .line 24
    :cond_9
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_a

    .line 25
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/q;->h0(Ljava/lang/Number;)Lcom/squareup/moshi/q;

    goto :goto_3

    :cond_a
    if-nez p1, :cond_b

    .line 26
    invoke-virtual {p0}, Lcom/squareup/moshi/q;->D()Lcom/squareup/moshi/q;

    :goto_3
    return-object p0

    .line 27
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
