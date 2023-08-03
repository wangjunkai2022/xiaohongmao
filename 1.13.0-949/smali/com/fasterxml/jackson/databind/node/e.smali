.class public Lcom/fasterxml/jackson/databind/node/e;
.super Lcom/fasterxml/jackson/core/base/c;
.source "TreeTraversingParser.java"


# instance fields
.field protected g2:Lcom/fasterxml/jackson/core/h;

.field protected p2:Lcom/fasterxml/jackson/databind/node/c;

.field protected x2:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/e;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/core/h;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/core/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/base/c;-><init>(I)V

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/e;->g2:Lcom/fasterxml/jackson/core/h;

    .line 4
    new-instance p2, Lcom/fasterxml/jackson/databind/node/c$c;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/databind/node/c$c;-><init>(Lcom/fasterxml/jackson/databind/e;Lcom/fasterxml/jackson/databind/node/c;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    return-void
.end method


# virtual methods
.method public A0()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/e;->x2:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->A2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isPojo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/fasterxml/jackson/databind/node/POJONode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/POJONode;->getPojo()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/fasterxml/jackson/databind/node/BinaryNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/BinaryNode;->binaryValue()[B

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/c;->t()Lcom/fasterxml/jackson/databind/node/c;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/c;->w(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected A2()Lcom/fasterxml/jackson/databind/e;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/e;->x2:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/c;->s()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected B2()Lcom/fasterxml/jackson/databind/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JacksonException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->A2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isNumber()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_2
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/m;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not numeric, cannot use numeric value accessors"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->k(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public C0()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->B2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public D1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/e;->p0(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 3
    array-length p1, p1

    return p1

    :cond_0
    return v0
.end method

.method public F0()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->B2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/NumericNode;

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->canConvertToInt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->t2()V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->intValue()I

    move-result v0

    return v0
.end method

.method public H0()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->B2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/NumericNode;

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->canConvertToLong()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->w2()V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->B2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/m;->numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public K0()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->B2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->numberValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public N0()Lcom/fasterxml/jackson/core/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    return-object v0
.end method

.method public N1(Lcom/fasterxml/jackson/core/h;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/e;->g2:Lcom/fasterxml/jackson/core/h;

    return-void
.end method

.method public O0()Lcom/fasterxml/jackson/core/util/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/core/util/f<",
            "Lcom/fasterxml/jackson/core/StreamReadCapability;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser;->g:Lcom/fasterxml/jackson/core/util/f;

    return-object v0
.end method

.method public S0()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/node/e$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->A2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->asText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->A2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->numberValue()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->A2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->textValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :pswitch_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public T0()[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->S0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public U0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->S0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public U1()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/c;->t()Lcom/fasterxml/jackson/databind/node/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/c;->t()Lcom/fasterxml/jackson/databind/node/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    .line 6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public V0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public W0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-object v0
.end method

.method protected a2()V
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/e;->x2:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/e;->x2:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    .line 4
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/e;->x2:Z

    return v0
.end method

.method public j1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n0()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->B2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public p0(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->A2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/TextNode;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/fasterxml/jackson/databind/node/TextNode;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/TextNode;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->binaryValue()[B

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public r1()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/e;->x2:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->A2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/NumericNode;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/fasterxml/jackson/databind/node/NumericNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NumericNode;->isNaN()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s0()Lcom/fasterxml/jackson/core/h;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->g2:Lcom/fasterxml/jackson/core/h;

    return-object v0
.end method

.method public t0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/c;->t()Lcom/fasterxml/jackson/databind/node/c;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/c;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/e;->a:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public y0()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->B2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public y1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/c;->v()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/e;->x2:Z

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/databind/node/e$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/c;->t()Lcom/fasterxml/jackson/databind/node/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/c;->x()Lcom/fasterxml/jackson/databind/node/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/c;->y()Lcom/fasterxml/jackson/databind/node/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/e;->p2:Lcom/fasterxml/jackson/databind/node/c;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public z0()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/e;->B2()Lcom/fasterxml/jackson/databind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/e;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
