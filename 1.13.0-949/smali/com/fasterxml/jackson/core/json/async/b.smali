.class public abstract Lcom/fasterxml/jackson/core/json/async/b;
.super Lcom/fasterxml/jackson/core/base/b;
.source "NonBlockingJsonParserBase.java"


# static fields
.field protected static final A3:I = 0x1

.field protected static final B3:I = 0x2

.field protected static final C3:I = 0x3

.field protected static final D3:I = 0x4

.field protected static final E3:I = 0x5

.field protected static final F3:I = 0x7

.field protected static final G3:I = 0x8

.field protected static final H3:I = 0x9

.field protected static final I3:I = 0xa

.field protected static final J3:I = 0xc

.field protected static final K3:I = 0xd

.field protected static final L3:I = 0xe

.field protected static final M3:I = 0xf

.field protected static final N3:I = 0x10

.field protected static final O3:I = 0x11

.field protected static final P3:I = 0x12

.field protected static final Q3:I = 0x13

.field protected static final R3:I = 0x17

.field protected static final S3:I = 0x18

.field protected static final T3:I = 0x19

.field protected static final U3:I = 0x1a

.field protected static final V3:I = 0x1e

.field protected static final W3:I = 0x1f

.field protected static final X3:I = 0x20

.field protected static final Y3:I = 0x28

.field protected static final Z3:I = 0x29

.field protected static final a4:I = 0x2a

.field protected static final b4:I = 0x2b

.field protected static final c4:I = 0x2c

.field protected static final d4:I = 0x2d

.field protected static final e4:I = 0x32

.field protected static final f4:I = 0x33

.field protected static final g4:I = 0x34

.field protected static final h4:I = 0x35

.field protected static final i4:I = 0x36

.field protected static final j4:I = 0x37

.field protected static final k4:I = 0x0

.field protected static final l4:I = 0x1

.field protected static final m4:I = 0x2

.field protected static final n4:I = 0x3

.field protected static final o4:[Ljava/lang/String;

.field protected static final p4:[D

.field protected static final s3:I = 0x0

.field protected static final t3:I = 0x1

.field protected static final u3:I = 0x2

.field protected static final v3:I = 0x3

.field protected static final w3:I = 0x4

.field protected static final x3:I = 0x5

.field protected static final y3:I = 0x6

.field protected static final z3:I = 0x7


# instance fields
.field protected final c3:Lcom/fasterxml/jackson/core/sym/a;

.field protected d3:[I

.field protected e3:I

.field protected f3:I

.field protected g3:I

.field protected h3:I

.field protected i3:I

.field protected j3:I

.field protected k3:I

.field protected l3:I

.field protected m3:I

.field protected n3:I

.field protected o3:Z

.field protected p3:I

.field protected q3:I

.field protected r3:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "NaN"

    const-string v1, "Infinity"

    const-string v2, "+Infinity"

    const-string v3, "-Infinity"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/async/b;->o4:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [D

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/fasterxml/jackson/core/json/async/b;->p4:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x7ff8000000000000L    # Double.NaN
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        -0x10000000000000L    # Double.NEGATIVE_INFINITY
    .end array-data
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/sym/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/b;-><init>(Lcom/fasterxml/jackson/core/io/d;I)V

    const/16 p1, 0x8

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/b;->d3:[I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/async/b;->o3:Z

    .line 4
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/b;->q3:I

    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/b;->r3:I

    .line 6
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/async/b;->c3:Lcom/fasterxml/jackson/core/sym/a;

    const/4 p3, 0x0

    .line 7
    iput-object p3, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 8
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/b;->k3:I

    .line 9
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/b;->l3:I

    return-void
.end method

.method protected static final y3(II)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    shl-int/lit8 p1, p1, 0x3

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public A0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected A3(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    return-void
.end method

.method protected B2()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->q3:I

    .line 2
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    return-void
.end method

.method protected B3(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    return-void
.end method

.method protected C3(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    iput p2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/b;->B3(I)V

    return-void
.end method

.method public D1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/b;->p0(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p1

    .line 2
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 3
    array-length p1, p1

    return p1
.end method

.method protected final D3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcom/fasterxml/jackson/core/json/d;->u(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->k3:I

    const/4 v0, 0x6

    .line 3
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->l3:I

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public E()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public E0()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final E3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcom/fasterxml/jackson/core/json/d;->v(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->k3:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->l3:I

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected final F3()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/b;->r3:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    .line 4
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/base/b;->E2:J

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/b;->q3:I

    sub-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/fasterxml/jackson/core/base/b;->H2:J

    return-void
.end method

.method protected final G3(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->l3:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->k3:I

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method protected final H3(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/util/j;->G(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iput p2, p0, Lcom/fasterxml/jackson/core/base/b;->Y2:I

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    .line 4
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    .line 5
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/b;->l3:I

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/b;->k3:I

    .line 6
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 7
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method protected final I3(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/b;->o4:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/j;->G(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonParser;->m1(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Non-standard token \'%s\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/base/c;->f2(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->Y2:I

    const/16 v0, 0x8

    .line 6
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    .line 7
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/b;->p4:[D

    aget-wide v1, v0, p1

    iput-wide v1, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    .line 8
    iget p1, p0, Lcom/fasterxml/jackson/core/json/async/b;->l3:I

    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/b;->k3:I

    .line 9
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method protected J3()Lcom/fasterxml/jackson/core/sym/a;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->c3:Lcom/fasterxml/jackson/core/sym/a;

    return-object v0
.end method

.method public abstract K1(Ljava/io/OutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public N1(Lcom/fasterxml/jackson/core/h;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can not use ObjectMapper with non-blocking parser"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    sget-object v0, Lcom/fasterxml/jackson/core/base/b;->b3:Lcom/fasterxml/jackson/core/util/f;

    return-object v0
.end method

.method protected Q2()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/b;->Q2()V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->c3:Lcom/fasterxml/jackson/core/sym/a;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/a;->N()V

    return-void
.end method

.method public R0(Ljava/io/Writer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/j;->m(Ljava/io/Writer;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_1
    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/j;->m(Ljava/io/Writer;)I

    move-result p1

    return p1

    .line 10
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    const-string v1, "Current token not available: can not call this method"

    .line 11
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write([C)V

    .line 14
    array-length p1, v0

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public S0()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/b;->w3(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T0()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->x()[C

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->O2:Z

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    if-nez v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->g2:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/d;->g(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    goto :goto_0

    .line 10
    :cond_2
    array-length v2, v2

    if-ge v2, v1, :cond_3

    .line 11
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    .line 12
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->O2:Z

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public U0()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->K()I

    move-result v0

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public V0()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->y()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public W0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->C2()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v1

    iget-wide v2, p0, Lcom/fasterxml/jackson/core/base/b;->H2:J

    iget v6, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v7, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    const-wide/16 v4, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v8
.end method

.method public g1()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->u0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-super {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->h1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->u0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->h1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->z()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->O2:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final o3([III)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    shl-int/lit8 v4, v2, 0x2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    const/4 v7, 0x3

    if-ge v3, v5, :cond_0

    add-int/lit8 v8, v2, -0x1

    .line 1
    aget v9, v1, v8

    rsub-int/lit8 v10, v3, 0x4

    shl-int/2addr v10, v7

    shl-int v10, v9, v10

    .line 2
    aput v10, v1, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 3
    :goto_0
    iget-object v8, v0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/j;->n()[C

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v4, :cond_d

    shr-int/lit8 v12, v10, 0x2

    .line 4
    aget v12, v1, v12

    and-int/lit8 v13, v10, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/2addr v13, v7

    shr-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x7f

    if-le v12, v13, :cond_b

    and-int/lit16 v13, v12, 0xe0

    const/16 v14, 0xc0

    const/4 v5, 0x1

    if-ne v13, v14, :cond_1

    and-int/lit8 v12, v12, 0x1f

    :goto_2
    const/4 v13, 0x1

    goto :goto_3

    :cond_1
    and-int/lit16 v13, v12, 0xf0

    const/16 v14, 0xe0

    if-ne v13, v14, :cond_2

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x2

    goto :goto_3

    :cond_2
    and-int/lit16 v13, v12, 0xf8

    const/16 v14, 0xf0

    if-ne v13, v14, :cond_3

    and-int/lit8 v12, v12, 0x7

    const/4 v13, 0x3

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/core/json/async/b;->A3(I)V

    const/4 v12, 0x1

    goto :goto_2

    :goto_3
    add-int v14, v10, v13

    if-le v14, v4, :cond_4

    .line 6
    sget-object v14, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v6, " in field name"

    invoke-virtual {v0, v6, v14}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    :cond_4
    shr-int/lit8 v6, v10, 0x2

    .line 7
    aget v6, v1, v6

    and-int/lit8 v14, v10, 0x3

    rsub-int/lit8 v14, v14, 0x3

    shl-int/2addr v14, v7

    shr-int/2addr v6, v14

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v14, v6, 0xc0

    const/16 v15, 0x80

    if-eq v14, v15, :cond_5

    .line 8
    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/core/json/async/b;->B3(I)V

    :cond_5
    shl-int/lit8 v12, v12, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v12

    if-le v13, v5, :cond_9

    shr-int/lit8 v5, v10, 0x2

    .line 9
    aget v5, v1, v5

    and-int/lit8 v12, v10, 0x3

    rsub-int/lit8 v12, v12, 0x3

    shl-int/2addr v12, v7

    shr-int/2addr v5, v12

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v12, v5, 0xc0

    if-eq v12, v15, :cond_6

    .line 10
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/core/json/async/b;->B3(I)V

    :cond_6
    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    const/4 v6, 0x2

    if-le v13, v6, :cond_8

    shr-int/lit8 v6, v10, 0x2

    .line 11
    aget v6, v1, v6

    and-int/lit8 v12, v10, 0x3

    rsub-int/lit8 v12, v12, 0x3

    shl-int/2addr v12, v7

    shr-int/2addr v6, v12

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v12, v6, 0xc0

    if-eq v12, v15, :cond_7

    and-int/lit16 v12, v6, 0xff

    .line 12
    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/core/json/async/b;->B3(I)V

    :cond_7
    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    :cond_8
    move v12, v5

    goto :goto_4

    :cond_9
    move v12, v6

    :goto_4
    const/4 v5, 0x2

    if-le v13, v5, :cond_b

    const/high16 v5, 0x10000

    sub-int/2addr v12, v5

    .line 13
    array-length v5, v8

    if-lt v11, v5, :cond_a

    .line 14
    iget-object v5, v0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->q()[C

    move-result-object v5

    move-object v8, v5

    :cond_a
    add-int/lit8 v5, v11, 0x1

    const v6, 0xd800

    shr-int/lit8 v13, v12, 0xa

    add-int/2addr v13, v6

    int-to-char v6, v13

    .line 15
    aput-char v6, v8, v11

    const v6, 0xdc00

    and-int/lit16 v11, v12, 0x3ff

    or-int v12, v11, v6

    move v11, v5

    .line 16
    :cond_b
    array-length v5, v8

    if-lt v11, v5, :cond_c

    .line 17
    iget-object v5, v0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/j;->q()[C

    move-result-object v5

    move-object v8, v5

    :cond_c
    add-int/lit8 v5, v11, 0x1

    int-to-char v6, v12

    .line 18
    aput-char v6, v8, v11

    move v11, v5

    const/4 v5, 0x4

    goto/16 :goto_1

    .line 19
    :cond_d
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v8, v5, v11}, Ljava/lang/String;-><init>([CII)V

    const/4 v5, 0x4

    if-ge v3, v5, :cond_e

    add-int/lit8 v3, v2, -0x1

    .line 20
    aput v9, v1, v3

    .line 21
    :cond_e
    iget-object v3, v0, Lcom/fasterxml/jackson/core/json/async/b;->c3:Lcom/fasterxml/jackson/core/sym/a;

    invoke-virtual {v3, v4, v1, v2}, Lcom/fasterxml/jackson/core/sym/a;->s(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public p0(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    const-string v1, "Current token (%s) not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/base/c;->f2(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->I2()Lcom/fasterxml/jackson/core/util/c;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/b;->S0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/base/c;->Y1(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/c;Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->E()[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    return-object p1
.end method

.method protected final p3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5d

    const/16 v1, 0x7d

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/b;->R2(IC)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->A()Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 7
    :goto_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->k3:I

    .line 8
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->l3:I

    .line 9
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected final q3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x7d

    const/16 v1, 0x5d

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/b;->R2(IC)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->A()Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 7
    :goto_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->k3:I

    .line 8
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->l3:I

    .line 9
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected final r3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 1
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->k3:I

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->a2()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->close()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public s0()Lcom/fasterxml/jackson/core/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final s3(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->k3:I

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/d;->C(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method public t0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/b;->r3:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->C2()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v2

    iget-wide v3, p0, Lcom/fasterxml/jackson/core/base/b;->E2:J

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/b;->q3:I

    sub-int/2addr v1, v5

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v0
.end method

.method protected final t3(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/json/async/b;->y3(II)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->c3:Lcom/fasterxml/jackson/core/sym/a;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/sym/a;->A(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->d3:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lcom/fasterxml/jackson/core/json/async/b;->o3([III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final u3(III)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/json/async/b;->y3(II)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->c3:Lcom/fasterxml/jackson/core/sym/a;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/a;->B(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->d3:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 4
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/core/json/async/b;->o3([III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final v3(IIII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-static {p3, p4}, Lcom/fasterxml/jackson/core/json/async/b;->y3(II)I

    move-result p3

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->c3:Lcom/fasterxml/jackson/core/sym/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/a;->C(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/b;->d3:[I

    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 5
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 6
    invoke-static {p3, p4}, Lcom/fasterxml/jackson/core/json/async/b;->y3(II)I

    move-result p2

    aput p2, v0, p1

    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, v0, p1, p4}, Lcom/fasterxml/jackson/core/json/async/b;->o3([III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final w3(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/d;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method protected final x3(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/json/async/b;->o4:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected z3(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->q2(I)V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/b;->A3(I)V

    return-void
.end method
