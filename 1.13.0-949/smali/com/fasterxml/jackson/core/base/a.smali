.class public abstract Lcom/fasterxml/jackson/core/base/a;
.super Lcom/fasterxml/jackson/core/JsonGenerator;
.source "GeneratorBase.java"


# static fields
.field public static final j:I = 0xd800

.field public static final k:I = 0xdbff

.field public static final l:I = 0xdc00

.field public static final m:I = 0xdfff

.field protected static final n:I

.field protected static final o:Ljava/lang/String; = "write a binary value"

.field protected static final p:Ljava/lang/String; = "write a boolean value"

.field protected static final q:Ljava/lang/String; = "write a null"

.field protected static final r:Ljava/lang/String; = "write a number"

.field protected static final s:Ljava/lang/String; = "write a raw (unencoded) value"

.field protected static final t:Ljava/lang/String; = "write a string"

.field protected static final u:I = 0x270f


# instance fields
.field protected e:Lcom/fasterxml/jackson/core/h;

.field protected f:I

.field protected g:Z

.field protected h:Lcom/fasterxml/jackson/core/json/e;

.field protected i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/fasterxml/jackson/core/base/a;->n:I

    return-void
.end method

.method protected constructor <init>(ILcom/fasterxml/jackson/core/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/core/base/a;->e:Lcom/fasterxml/jackson/core/h;

    .line 4
    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/b;->f(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/json/b;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-static {p2}, Lcom/fasterxml/jackson/core/json/e;->z(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/e;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    .line 7
    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/base/a;->g:Z

    return-void
.end method

.method protected constructor <init>(ILcom/fasterxml/jackson/core/h;Lcom/fasterxml/jackson/core/json/e;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V

    .line 9
    iput p1, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    .line 10
    iput-object p2, p0, Lcom/fasterxml/jackson/core/base/a;->e:Lcom/fasterxml/jackson/core/h;

    .line 11
    iput-object p3, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    .line 12
    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/base/a;->g:Z

    return-void
.end method


# virtual methods
.method public C0()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->n0()Lcom/fasterxml/jackson/core/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/a;->Z1()Lcom/fasterxml/jackson/core/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->z0(Lcom/fasterxml/jackson/core/i;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public C1(Lcom/fasterxml/jackson/core/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write raw value"

    .line 1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/a;->c2(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->x1(Lcom/fasterxml/jackson/core/j;)V

    return-void
.end method

.method public D1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write raw value"

    .line 1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/a;->c2(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->y1(Ljava/lang/String;)V

    return-void
.end method

.method public E1(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write raw value"

    .line 1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/a;->c2(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->z1(Ljava/lang/String;II)V

    return-void
.end method

.method public F1([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write raw value"

    .line 1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/a;->c2(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->A1([CII)V

    return-void
.end method

.method public I0(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    const/4 p1, 0x0

    return p1
.end method

.method public J(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    .line 3
    sget v1, Lcom/fasterxml/jackson/core/base/a;->n:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/base/a;->g:Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->y0(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/json/e;->E(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/e;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public K(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    .line 3
    sget v1, Lcom/fasterxml/jackson/core/base/a;->n:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/base/a;->g:Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x7f

    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->y0(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/e;->A()Lcom/fasterxml/jackson/core/json/b;

    move-result-object p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/b;->f(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/json/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/json/e;->E(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/e;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public L1(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->K1()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/a;->w0(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public M()Lcom/fasterxml/jackson/core/h;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/a;->e:Lcom/fasterxml/jackson/core/h;

    return-object v0
.end method

.method public N1(Lcom/fasterxml/jackson/core/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->P1(Ljava/lang/String;)V

    return-void
.end method

.method public S1(Lcom/fasterxml/jackson/core/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/a;->e:Lcom/fasterxml/jackson/core/h;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/h;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No ObjectCodec defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public U0(Lcom/fasterxml/jackson/core/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->V0(Ljava/lang/String;)V

    return-void
.end method

.method public W()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/e;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public X()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    return v0
.end method

.method protected X1(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    iget v1, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x270f

    const/16 v2, 0x270f

    if-lt v0, v1, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]"

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->b(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected Y1(II)V
    .locals 2

    .line 1
    sget v0, Lcom/fasterxml/jackson/core/base/a;->n:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/a;->g:Z

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7f

    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->y0(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->y0(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 7
    :cond_2
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/e;->A()Lcom/fasterxml/jackson/core/json/b;

    move-result-object p1

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/b;->f(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/json/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/e;->E(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/e;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/e;->E(Lcom/fasterxml/jackson/core/json/b;)Lcom/fasterxml/jackson/core/json/e;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    :cond_4
    :goto_1
    return-void
.end method

.method protected Z1()Lcom/fasterxml/jackson/core/i;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>()V

    return-object v0
.end method

.method protected final a2(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xdc00

    if-lt p2, v0, :cond_0

    const v1, 0xdfff

    if-le p2, v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Incomplete surrogate pair: first char 0x%04X, second 0x%04X"

    .line 2
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b(Ljava/lang/String;)V

    :cond_1
    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v1

    sub-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method protected abstract b2()V
.end method

.method protected abstract c2(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/a;->i:Z

    return-void
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public h0()Lcom/fasterxml/jackson/core/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/a;->i:Z

    return v0
.end method

.method public o1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->W0()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/a;->e:Lcom/fasterxml/jackson/core/h;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/h;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->k(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final q0(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public t0(II)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    xor-int p2, v0, p1

    if-eqz p2, :cond_0

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/a;->Y1(II)V

    :cond_0
    return-object p0
.end method

.method public v0(Lcom/fasterxml/jackson/core/h;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->e:Lcom/fasterxml/jackson/core/h;

    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/json/f;->a:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public w0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/e;->p(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public x0(I)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    xor-int/2addr v0, p1

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/core/base/a;->f:I

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/a;->Y1(II)V

    :cond_0
    return-object p0
.end method
