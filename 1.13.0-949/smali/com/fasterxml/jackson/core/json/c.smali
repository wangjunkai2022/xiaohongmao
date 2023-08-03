.class public abstract Lcom/fasterxml/jackson/core/json/c;
.super Lcom/fasterxml/jackson/core/base/a;
.source "JsonGeneratorImpl.java"


# static fields
.field protected static final B:[I

.field protected static final C:Lcom/fasterxml/jackson/core/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/core/util/f<",
            "Lcom/fasterxml/jackson/core/StreamWriteCapability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected A:Z

.field protected final v:Lcom/fasterxml/jackson/core/io/d;

.field protected w:[I

.field protected x:I

.field protected y:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field protected z:Lcom/fasterxml/jackson/core/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/b;->e()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/c;->B:[I

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator;->c:Lcom/fasterxml/jackson/core/util/f;

    sput-object v0, Lcom/fasterxml/jackson/core/json/c;->C:Lcom/fasterxml/jackson/core/util/f;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILcom/fasterxml/jackson/core/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/base/a;-><init>(ILcom/fasterxml/jackson/core/h;)V

    .line 2
    sget-object p3, Lcom/fasterxml/jackson/core/json/c;->B:[I

    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/c;->w:[I

    .line 3
    sget-object p3, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/c;->z:Lcom/fasterxml/jackson/core/j;

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/c;->v:Lcom/fasterxml/jackson/core/io/d;

    .line 5
    sget-object p1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x7f

    .line 6
    iput p1, p0, Lcom/fasterxml/jackson/core/json/c;->x:I

    .line 7
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/c;->A:Z

    return-void
.end method


# virtual methods
.method public A0(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/c;->z:Lcom/fasterxml/jackson/core/j;

    return-object p0
.end method

.method public J(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/a;->J(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/c;->A:Z

    :cond_0
    return-object p0
.end method

.method public K(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/a;->K(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/c;->A:Z

    :cond_0
    return-object p0
.end method

.method public L()Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/c;->y:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-object v0
.end method

.method protected Y1(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/a;->Y1(II)V

    .line 2
    sget-object p2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledIn(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/c;->A:Z

    return-void
.end method

.method public d0()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/json/c;->x:I

    return v0
.end method

.method protected d2(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->r()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Can not %s, expecting field name (context: %s)"

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected e2(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->h()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/c;->d2(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->a:Lcom/fasterxml/jackson/core/i;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/i;->writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->a:Lcom/fasterxml/jackson/core/i;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/i;->writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->a:Lcom/fasterxml/jackson/core/i;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/i;->writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->a:Lcom/fasterxml/jackson/core/i;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/i;->beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 8
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/a;->h:Lcom/fasterxml/jackson/core/json/e;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->l()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->a:Lcom/fasterxml/jackson/core/i;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/core/i;->beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public p0()Lcom/fasterxml/jackson/core/util/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/core/util/f<",
            "Lcom/fasterxml/jackson/core/StreamWriteCapability;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/json/c;->C:Lcom/fasterxml/jackson/core/util/f;

    return-object v0
.end method

.method public u0(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/c;->y:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/fasterxml/jackson/core/json/c;->B:[I

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/c;->w:[I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->getEscapeCodesForAscii()[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/c;->w:[I

    :goto_0
    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/l;->h(Ljava/lang/Class;)Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public y0(I)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/fasterxml/jackson/core/json/c;->x:I

    return-object p0
.end method
