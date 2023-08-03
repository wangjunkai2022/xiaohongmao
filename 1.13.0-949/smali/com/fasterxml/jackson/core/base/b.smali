.class public abstract Lcom/fasterxml/jackson/core/base/b;
.super Lcom/fasterxml/jackson/core/base/c;
.source "ParserBase.java"


# static fields
.field protected static final b3:Lcom/fasterxml/jackson/core/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/core/util/f<",
            "Lcom/fasterxml/jackson/core/StreamReadCapability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected E2:J

.field protected F2:I

.field protected G2:I

.field protected H2:J

.field protected I2:I

.field protected J2:I

.field protected K2:Lcom/fasterxml/jackson/core/json/d;

.field protected L2:Lcom/fasterxml/jackson/core/JsonToken;

.field protected final M2:Lcom/fasterxml/jackson/core/util/j;

.field protected N2:[C

.field protected O2:Z

.field protected P2:Lcom/fasterxml/jackson/core/util/c;

.field protected Q2:[B

.field protected R2:I

.field protected S2:I

.field protected T2:J

.field protected U2:D

.field protected V2:Ljava/math/BigInteger;

.field protected W2:Ljava/math/BigDecimal;

.field protected X2:Z

.field protected Y2:I

.field protected Z2:I

.field protected a3:I

.field protected final g2:Lcom/fasterxml/jackson/core/io/d;

.field protected p2:Z

.field protected x2:I

.field protected y2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser;->g:Lcom/fasterxml/jackson/core/util/f;

    sput-object v0, Lcom/fasterxml/jackson/core/base/b;->b3:Lcom/fasterxml/jackson/core/util/f;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/io/d;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/core/base/c;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    .line 3
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->g2:Lcom/fasterxml/jackson/core/io/d;

    .line 6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/d;->n()Lcom/fasterxml/jackson/core/util/j;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    .line 7
    sget-object p1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->enabledIn(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/b;->g(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/json/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-static {p1}, Lcom/fasterxml/jackson/core/json/d;->x(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    return-void
.end method

.method private O2(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->h()Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    .line 2
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->i()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    const/16 p1, 0x8

    .line 4
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/c;->d2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/base/c;->r2(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private P2(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->Y2:I

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/j;->x()[C

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/j;->y()I

    move-result v3

    .line 5
    iget-boolean v4, p0, Lcom/fasterxml/jackson/core/base/b;->X2:Z

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 6
    :cond_0
    invoke-static {v2, v3, v1, v4}, Lcom/fasterxml/jackson/core/io/g;->b([CIIZ)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    .line 8
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 9
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/b;->S2(ILjava/lang/String;)V

    :cond_3
    const/16 v1, 0x8

    if-eq p1, v1, :cond_5

    const/16 v2, 0x20

    if-ne p1, v2, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    const/4 p1, 0x4

    .line 11
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    goto :goto_1

    .line 12
    :cond_5
    :goto_0
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/g;->i(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    .line 13
    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->d2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/base/c;->r2(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method protected static f3([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-array p0, p1, [I

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->A()Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/d;->C(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected A2(II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/d;->z()Lcom/fasterxml/jackson/core/json/b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/b;->g(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/json/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/d;->D(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/d;->D(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract B2()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public C0()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->z0()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public C1(II)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    xor-int p2, v0, p1

    if-eqz p2, :cond_0

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/b;->A2(II)V

    :cond_0
    return-object p0
.end method

.method protected C2()Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 2

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->INCLUDE_SOURCE_IN_LOCATION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->g2:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/d;->o()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/core/io/ContentReference;->unknown()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    return-object v0
.end method

.method protected final D2(Lcom/fasterxml/jackson/core/Base64Variant;CI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5c

    if-ne p2, v0, :cond_3

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->F2()C

    move-result p2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_0

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x2

    if-lt p3, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/base/b;->i3(Lcom/fasterxml/jackson/core/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return v0

    .line 4
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/base/b;->i3(Lcom/fasterxml/jackson/core/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method protected final E2(Lcom/fasterxml/jackson/core/Base64Variant;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5c

    if-ne p2, v0, :cond_3

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->F2()C

    move-result p2

    const/16 v0, 0x20

    if-gt p2, v0, :cond_0

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/base/b;->i3(Lcom/fasterxml/jackson/core/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return v0

    .line 4
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/base/b;->i3(Lcom/fasterxml/jackson/core/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public F0()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->M2()I

    move-result v0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->Z2()V

    .line 4
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    return v0
.end method

.method protected F2()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final G2()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->a2()V

    const/4 v0, -0x1

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
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/b;->N2(I)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->a3()V

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    return-wide v0
.end method

.method protected H2()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public I2()Lcom/fasterxml/jackson/core/util/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->P2:Lcom/fasterxml/jackson/core/util/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/util/c;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/c;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->P2:Lcom/fasterxml/jackson/core/util/c;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->y()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->P2:Lcom/fasterxml/jackson/core/util/c;

    return-object v0
.end method

.method public J0()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/b;->N2(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 4
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 7
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 8
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0

    .line 10
    :cond_4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method protected J2()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->INCLUDE_SOURCE_IN_LOCATION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    iget v1, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->g2:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/d;->o()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->getRawContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public K0()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/b;->N2(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    .line 4
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 6
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    return-object v0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    .line 9
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    return-object v0

    :cond_5
    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    .line 12
    :cond_6
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method protected K2(Lcom/fasterxml/jackson/core/Base64Variant;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    return-void
.end method

.method public L0()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/b;->N2(I)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 6
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    return-object v0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    .line 9
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    if-nez v0, :cond_5

    const/16 v0, 0x10

    .line 10
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/b;->N2(I)V

    .line 11
    :cond_5
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_6

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    return-object v0

    :cond_6
    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_7

    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    .line 14
    :cond_7
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method protected L2(C)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->m1(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->m1(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized character escape "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/fasterxml/jackson/core/base/c;->Z1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    return p1
.end method

.method protected M2()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->p2:Z

    if-eqz v0, :cond_0

    const-string v0, "Internal error: _parseNumericValue called when parser instance closed"

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->Y2:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/base/b;->X2:Z

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/j;->j(Z)I

    move-result v0

    .line 6
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    .line 7
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    return v0

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/b;->N2(I)V

    .line 9
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->Z2()V

    .line 11
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    return v0
.end method

.method public bridge synthetic N0()Lcom/fasterxml/jackson/core/f;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->b3()Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    return-object v0
.end method

.method protected N2(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->p2:Z

    if-eqz v0, :cond_0

    const-string v0, "Internal error: _parseNumericValue called when parser instance closed"

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    .line 4
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->Y2:I

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-gt v0, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->X2:Z

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/j;->j(Z)I

    move-result p1

    .line 6
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    .line 7
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    return-void

    :cond_1
    const/16 v1, 0x12

    if-gt v0, v1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/base/b;->X2:Z

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/util/j;->k(Z)J

    move-result-wide v3

    const/16 p1, 0xa

    if-ne v0, p1, :cond_3

    .line 9
    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/base/b;->X2:Z

    if-eqz p1, :cond_2

    const-wide/32 v0, -0x80000000

    cmp-long p1, v3, v0

    if-ltz p1, :cond_3

    long-to-int p1, v3

    .line 10
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    .line 11
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    return-void

    :cond_2
    const-wide/32 v0, 0x7fffffff

    cmp-long p1, v3, v0

    if-gtz p1, :cond_3

    long-to-int p1, v3

    .line 12
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    .line 13
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    return-void

    .line 14
    :cond_3
    iput-wide v3, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    const/4 p1, 0x2

    .line 15
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    return-void

    .line 16
    :cond_4
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/base/b;->P2(I)V

    return-void

    .line 17
    :cond_5
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_6

    .line 18
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/base/b;->O2(I)V

    return-void

    :cond_6
    const-string p1, "Current token (%s) not numeric, can not use numeric value accessors"

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/c;->f2(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public O1(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/d;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public P1(I)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/b;->A2(II)V

    :cond_0
    return-object p0
.end method

.method protected Q2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->A()V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->g2:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/d;->u([C)V

    :cond_0
    return-void
.end method

.method protected R2(IC)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->b3()Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    int-to-char p1, p1

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->r()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->C2()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/d;->q(Lcom/fasterxml/jackson/core/io/ContentReference;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "Unexpected close marker \'%s\': expected \'%c\' (for %s starting at %s)"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    return-void
.end method

.method protected S2(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/base/c;->u2(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/base/c;->x2(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected T2(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->m1(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    :cond_0
    int-to-char p1, p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal unquoted character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/fasterxml/jackson/core/base/c;->Z1(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): has to be escaped using backslash to be included in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected U2()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->V2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected V2()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->m1(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(JSON String, Number (or \'NaN\'/\'INF\'/\'+INF\'), Array, Object or token \'null\', \'true\' or \'false\')"

    return-object v0

    :cond_0
    const-string v0, "(JSON String, Number, Array, Object or token \'null\', \'true\' or \'false\')"

    return-object v0
.end method

.method public W0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    .line 1
    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->C2()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->c3()J

    move-result-wide v4

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->e3()I

    move-result v6

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->d3()I

    move-result v7

    const-wide/16 v2, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v8
.end method

.method protected W2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->S0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/g;->f(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 3
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 4
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    .line 7
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    return-void
.end method

.method protected X2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 4
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    .line 7
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    return-void
.end method

.method protected Y2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 4
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    .line 7
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    return-void
.end method

.method protected Z2()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->S0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->W()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/c;->v2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 4
    :cond_0
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    .line 5
    sget-object v0, Lcom/fasterxml/jackson/core/base/c;->Q:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/core/base/c;->R:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    .line 6
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->t2()V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_7

    .line 9
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_5

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v0, v2

    if-lez v4, :cond_6

    .line 10
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->t2()V

    .line 11
    :cond_6
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    double-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    goto :goto_0

    :cond_7
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 12
    sget-object v0, Lcom/fasterxml/jackson/core/base/c;->W:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_8

    sget-object v0, Lcom/fasterxml/jackson/core/base/c;->b1:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    .line 13
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_9

    .line 14
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->t2()V

    .line 15
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    goto :goto_0

    .line 16
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    .line 17
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    return-void
.end method

.method protected a2()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Array"

    goto :goto_0

    :cond_0
    const-string v0, "Object"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->C2()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/json/d;->q(Lcom/fasterxml/jackson/core/io/ContentReference;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, ": expected close marker for %s (start marker at %s)"

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    :cond_1
    return-void
.end method

.method protected a3()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->S2:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/base/c;->S:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/base/c;->T:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    .line 4
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->w2()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_6

    .line 7
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_4

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v4, v0, v2

    if-lez v4, :cond_5

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->w2()V

    .line 9
    :cond_5
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    goto :goto_0

    :cond_6
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 10
    sget-object v0, Lcom/fasterxml/jackson/core/base/c;->U:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_7

    sget-object v0, Lcom/fasterxml/jackson/core/base/c;->V:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    .line 11
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_8

    .line 12
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->w2()V

    .line 13
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->T2:J

    goto :goto_0

    .line 14
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->p2()V

    .line 15
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    return-void
.end method

.method public b3()Lcom/fasterxml/jackson/core/json/d;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    return-object v0
.end method

.method public c3()J
    .locals 2

    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->H2:J

    return-wide v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->p2:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->p2:Z

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->B2()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->Q2()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->Q2()V

    .line 6
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public d3()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public e3()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    return v0
.end method

.method public g0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/json/d;->D(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    :cond_0
    return-object p0
.end method

.method protected g3()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public h0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/d;->z()Lcom/fasterxml/jackson/core/json/b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/b;->g(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/json/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/json/d;->D(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    :cond_0
    return-object p0
.end method

.method protected h3()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->g3()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->i2()V

    :cond_0
    return-void
.end method

.method protected i3(Lcom/fasterxml/jackson/core/Base64Variant;II)Ljava/lang/IllegalArgumentException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/base/b;->j3(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    return-object p1
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->p2:Z

    return v0
.end method

.method public j1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->O2:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected j3(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-gt p2, v1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    add-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Illegal white space character (code 0x%s) as character #%d of 4-char base64 unit: can only used between units"

    .line 2
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected padding character (\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\') as character #"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result p1

    const-string p3, ") in base64 content"

    if-eqz p1, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal character \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' (code 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal character (code 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p4, :cond_4

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method protected final k3(ZIII)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    if-ge p4, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/b;->n3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/core/base/b;->m3(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method protected final l3(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/j;->G(Ljava/lang/String;)V

    .line 2
    iput-wide p2, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    const/16 p1, 0x8

    .line 3
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    .line 4
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method protected final m3(ZIII)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/base/b;->X2:Z

    .line 2
    iput p2, p0, Lcom/fasterxml/jackson/core/base/b;->Y2:I

    .line 3
    iput p3, p0, Lcom/fasterxml/jackson/core/base/b;->Z2:I

    .line 4
    iput p4, p0, Lcom/fasterxml/jackson/core/base/b;->a3:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    .line 6
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method public n0()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/b;->N2(I)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->X2()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->V2:Ljava/math/BigInteger;

    return-object v0
.end method

.method protected final n3(ZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/base/b;->X2:Z

    .line 2
    iput p2, p0, Lcom/fasterxml/jackson/core/base/b;->Y2:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->Z2:I

    .line 4
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->a3:I

    .line 5
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    .line 6
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1
.end method

.method public p0(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not VALUE_STRING, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->I2()Lcom/fasterxml/jackson/core/util/c;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->S0()Ljava/lang/String;

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

.method public r1()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public t0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->C2()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v2

    iget-wide v3, p0, Lcom/fasterxml/jackson/core/base/b;->E2:J

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    int-to-long v5, v1

    add-long/2addr v5, v3

    iget v7, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    const-wide/16 v3, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->A()Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/json/f;->a:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public x0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public y0()Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_1

    const/16 v1, 0x10

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/b;->N2(I)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->W2()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->W2:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public z0()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/b;->N2(I)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->Y2()V

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/b;->U2:D

    return-wide v0
.end method
