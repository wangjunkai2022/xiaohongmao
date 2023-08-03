.class Lcom/squareup/moshi/m$a;
.super Ljava/lang/Object;
.source "JsonUtf8Writer.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/m;->p0()Lokio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/moshi/m;


# direct methods
.method constructor <init>(Lcom/squareup/moshi/m;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/moshi/m$a;->a:Lcom/squareup/moshi/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/m$a;->a:Lcom/squareup/moshi/m;

    invoke-virtual {v0}, Lcom/squareup/moshi/q;->G()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/squareup/moshi/m$a;->a:Lcom/squareup/moshi/m;

    iget v1, v0, Lcom/squareup/moshi/q;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/squareup/moshi/q;->a:I

    .line 3
    iget-object v0, v0, Lcom/squareup/moshi/q;->d:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/moshi/m$a;->a:Lcom/squareup/moshi/m;

    invoke-static {v0}, Lcom/squareup/moshi/m;->q0(Lcom/squareup/moshi/m;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/moshi/m$a;->a:Lcom/squareup/moshi/m;

    invoke-static {v0}, Lcom/squareup/moshi/m;->q0(Lcom/squareup/moshi/m;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    return-void
.end method
