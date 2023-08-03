.class public final Lcom/fasterxml/jackson/databind/util/t$b;
.super Lcom/fasterxml/jackson/core/base/c;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation


# instance fields
.field protected E2:Lcom/fasterxml/jackson/databind/util/t$c;

.field protected F2:I

.field protected G2:Lcom/fasterxml/jackson/databind/util/u;

.field protected H2:Z

.field protected transient I2:Lcom/fasterxml/jackson/core/util/c;

.field protected J2:Lcom/fasterxml/jackson/core/JsonLocation;

.field protected g2:Lcom/fasterxml/jackson/core/h;

.field protected final p2:Z

.field protected final x2:Z

.field protected final y2:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/t$c;Lcom/fasterxml/jackson/core/h;ZZ)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/t$b;-><init>(Lcom/fasterxml/jackson/databind/util/t$c;Lcom/fasterxml/jackson/core/h;ZZLcom/fasterxml/jackson/core/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/t$c;Lcom/fasterxml/jackson/core/h;ZZLcom/fasterxml/jackson/core/f;)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/base/c;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->J2:Lcom/fasterxml/jackson/core/JsonLocation;

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->E2:Lcom/fasterxml/jackson/databind/util/t$c;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->F2:I

    .line 6
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/t$b;->g2:Lcom/fasterxml/jackson/core/h;

    .line 7
    invoke-static {p5}, Lcom/fasterxml/jackson/databind/util/u;->u(Lcom/fasterxml/jackson/core/f;)Lcom/fasterxml/jackson/databind/util/u;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    .line 8
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/util/t$b;->p2:Z

    .line 9
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/util/t$b;->x2:Z

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 10
    :cond_1
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->y2:Z

    return-void
.end method

.method private final E2(Ljava/lang/Number;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/lang/Byte;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final F2(Ljava/lang/Number;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/lang/Byte;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public A0()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->D2()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->e()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    .line 4
    :cond_1
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/util/u;

    if-eqz v1, :cond_2

    .line 5
    :try_start_0
    check-cast v0, Lcom/fasterxml/jackson/databind/util/u;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/u;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method protected final A2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JacksonException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not numeric, cannot use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->k(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method protected B2(Ljava/lang/Number;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v2, p1

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->t2()V

    :cond_0
    return p1

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    .line 5
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    .line 6
    sget-object v1, Lcom/fasterxml/jackson/core/base/c;->Q:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/base/c;->R:Ljava/math/BigInteger;

    .line 7
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_7

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->t2()V

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_6

    .line 11
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    .line 12
    sget-object v1, Lcom/fasterxml/jackson/core/base/c;->W:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_5

    sget-object v1, Lcom/fasterxml/jackson/core/base/c;->b1:Ljava/math/BigDecimal;

    .line 13
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_7

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->t2()V

    goto :goto_0

    .line 15
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    .line 16
    :cond_7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 17
    :cond_8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_9

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double p1, v0, v2

    if-lez p1, :cond_a

    .line 18
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->t2()V

    :cond_a
    double-to-int p1, v0

    return p1
.end method

.method public C0()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->K0()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method protected C2(Ljava/lang/Number;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    .line 3
    sget-object v1, Lcom/fasterxml/jackson/core/base/c;->S:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/base/c;->T:Ljava/math/BigInteger;

    .line 4
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_5

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->w2()V

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    .line 8
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    .line 9
    sget-object v1, Lcom/fasterxml/jackson/core/base/c;->U:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_3

    sget-object v1, Lcom/fasterxml/jackson/core/base/c;->V:Ljava/math/BigDecimal;

    .line 10
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_5

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->w2()V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    .line 13
    :cond_5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 14
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_7

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double p1, v0, v2

    if-lez p1, :cond_8

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->w2()V

    :cond_8
    double-to-long v0, v0

    return-wide v0
.end method

.method public D1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/t$b;->p0(Lcom/fasterxml/jackson/core/Base64Variant;)[B

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

.method protected final D2()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->E2:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->F2:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/t$c;->j(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public F0()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->D2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->K0()Ljava/lang/Number;

    move-result-object v0

    .line 3
    :goto_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/t$b;->E2(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t$b;->B2(Ljava/lang/Number;)I

    move-result v0

    return v0

    .line 5
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->x2:Z

    return v0
.end method

.method public G2()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->H2:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->E2:Lcom/fasterxml/jackson/databind/util/t$c;

    .line 3
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/t$b;->F2:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/t$c;->l()Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/util/t$c;->r(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->p2:Z

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
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->D2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->K0()Ljava/lang/Number;

    move-result-object v0

    .line 3
    :goto_0
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/t$b;->F2(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/t$b;->C2(Ljava/lang/Number;)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public H2(Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->J2:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method public J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->K0()Ljava/lang/Number;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 4
    :cond_1
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 5
    :cond_2
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 6
    :cond_3
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_4

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 7
    :cond_4
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 8
    :cond_5
    instance-of v0, v0, Ljava/lang/Short;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public final K0()Ljava/lang/Number;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->A2()V

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->D2()Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 5
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2e

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 8
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error: entry should be a Number, but is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public M()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/u;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/u;->e()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public M0()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->E2:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->F2:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/t$c;->h(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public N0()Lcom/fasterxml/jackson/core/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    return-object v0
.end method

.method public N1(Lcom/fasterxml/jackson/core/h;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->g2:Lcom/fasterxml/jackson/core/h;

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

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/databind/util/t$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->D2()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->m0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->D2()Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 7
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 8
    :cond_4
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->m0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T0()[C
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->S0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public U0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->S0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public V0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public W0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->t0()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public X0()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->E2:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->F2:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/t$c;->i(I)Ljava/lang/Object;

    move-result-object v0

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
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->H2:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->H2:Z

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->H2:Z

    return v0
.end method

.method public j1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n0()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->K0()Ljava/lang/Number;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v1, v2, :cond_1

    .line 5
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public p0(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 3
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->D2()Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, [B

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->S0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->I2:Lcom/fasterxml/jackson/core/util/c;

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Lcom/fasterxml/jackson/core/util/c;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/core/util/c;-><init>(I)V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->I2:Lcom/fasterxml/jackson/core/util/c;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/c;->y()V

    .line 10
    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/fasterxml/jackson/core/base/c;->Y1(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/c;Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 11
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/c;->E()[B

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current token ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), cannot access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->k(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1
.end method

.method public r1()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->D2()Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/Double;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Ljava/lang/Double;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 6
    :cond_2
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 7
    check-cast v0, Ljava/lang/Float;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public s0()Lcom/fasterxml/jackson/core/h;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->g2:Lcom/fasterxml/jackson/core/h;

    return-object v0
.end method

.method public t0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->J2:Lcom/fasterxml/jackson/core/JsonLocation;

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    :cond_0
    return-object v0
.end method

.method public t1()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->H2:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->E2:Lcom/fasterxml/jackson/databind/util/t$c;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/t$b;->F2:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    .line 3
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/util/t$c;->r(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_2

    .line 4
    iput v2, p0, Lcom/fasterxml/jackson/databind/util/t$b;->F2:I

    .line 5
    iput-object v3, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->E2:Lcom/fasterxml/jackson/databind/util/t$c;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/util/t$c;->j(I)Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/u;->w(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->M()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public u0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/e;->a:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public y0()Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->K0()Ljava/lang/Number;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/math/BigDecimal;

    return-object v0

    .line 4
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/util/t$a;->b:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v1

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public y1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->H2:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->E2:Lcom/fasterxml/jackson/databind/util/t$c;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/t$b;->F2:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/t$b;->F2:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lcom/fasterxml/jackson/databind/util/t$b;->F2:I

    .line 4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/t$c;->l()Lcom/fasterxml/jackson/databind/util/t$c;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->E2:Lcom/fasterxml/jackson/databind/util/t$c;

    if-nez v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->E2:Lcom/fasterxml/jackson/databind/util/t$c;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->F2:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/t$c;->r(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->D2()Ljava/lang/Object;

    move-result-object v0

    .line 8
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/u;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_3
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/u;->t()Lcom/fasterxml/jackson/databind/util/u;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    goto :goto_2

    .line 12
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    .line 13
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/u;->s()Lcom/fasterxml/jackson/databind/util/u;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    goto :goto_2

    .line 14
    :cond_5
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_6

    goto :goto_1

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/u;->x()V

    goto :goto_2

    .line 16
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/u;->v()Lcom/fasterxml/jackson/databind/util/u;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/t$b;->G2:Lcom/fasterxml/jackson/databind/util/u;

    .line 17
    :goto_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_8
    :goto_3
    return-object v1
.end method

.method public z0()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/t$b;->K0()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
