.class public Lcom/fasterxml/jackson/core/d;
.super Lcom/fasterxml/jackson/core/k;
.source "JsonFactoryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/k<",
        "Lcom/fasterxml/jackson/core/JsonFactory;",
        "Lcom/fasterxml/jackson/core/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected i:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field protected j:Lcom/fasterxml/jackson/core/j;

.field protected k:I

.field protected l:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/k;-><init>()V

    const/16 v0, 0x22

    .line 2
    iput-char v0, p0, Lcom/fasterxml/jackson/core/d;->l:C

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/j;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/d;->j:Lcom/fasterxml/jackson/core/j;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/fasterxml/jackson/core/d;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/k;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    const/16 v0, 0x22

    .line 6
    iput-char v0, p0, Lcom/fasterxml/jackson/core/d;->l:C

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory;->getCharacterEscapes()Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/d;->i:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 8
    iget-object v0, p1, Lcom/fasterxml/jackson/core/JsonFactory;->k:Lcom/fasterxml/jackson/core/j;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/d;->j:Lcom/fasterxml/jackson/core/j;

    .line 9
    iget p1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->l:I

    iput p1, p0, Lcom/fasterxml/jackson/core/d;->k:I

    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/d;->T(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic B(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/d;->U(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic C(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/d;->V(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic D(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/d;->W(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    return-object p1
.end method

.method public L(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/d;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/d;->i:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-object p0
.end method

.method public M()Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/d;->i:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-object v0
.end method

.method public N(Lcom/fasterxml/jackson/core/json/JsonReadFeature;Z)Lcom/fasterxml/jackson/core/d;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/d;->T(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/d;->P(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public O(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;Z)Lcom/fasterxml/jackson/core/d;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/d;->V(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/d;->R(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public P(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/d;
    .locals 0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->c(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    return-object p0
.end method

.method public varargs Q(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/d;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->c(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    .line 2
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/k;->e(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public R(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/d;
    .locals 0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->b(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    return-object p0
.end method

.method public varargs S(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/d;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->b(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 2
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/k;->b(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public T(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/d;
    .locals 0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->e(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    return-object p0
.end method

.method public varargs U(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/d;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/k;->e(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/d;->T(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/d;

    .line 3
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/k;->e(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public V(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/d;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->d(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    :cond_0
    return-object p0
.end method

.method public varargs W(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/d;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->d(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 2
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/k;->d(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public X()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/d;->k:I

    return v0
.end method

.method public Y(I)Lcom/fasterxml/jackson/core/d;
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/fasterxml/jackson/core/d;->k:I

    return-object p0
.end method

.method public Z()C
    .locals 1

    iget-char v0, p0, Lcom/fasterxml/jackson/core/d;->l:C

    return v0
.end method

.method public a0(C)Lcom/fasterxml/jackson/core/d;
    .locals 1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 1
    iput-char p1, p0, Lcom/fasterxml/jackson/core/d;->l:C

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use Unicode characters up to 0x7F as quote characters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b0(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/core/d;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/d;->j:Lcom/fasterxml/jackson/core/j;

    return-object p0
.end method

.method public c0(Ljava/lang/String;)Lcom/fasterxml/jackson/core/d;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/core/d;->j:Lcom/fasterxml/jackson/core/j;

    return-object p0
.end method

.method public d0()Lcom/fasterxml/jackson/core/j;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/d;->j:Lcom/fasterxml/jackson/core/j;

    return-object v0
.end method

.method public g()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/d;)V

    return-object v0
.end method

.method public bridge synthetic k(Lcom/fasterxml/jackson/core/json/JsonReadFeature;Z)Lcom/fasterxml/jackson/core/k;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/d;->N(Lcom/fasterxml/jackson/core/json/JsonReadFeature;Z)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;Z)Lcom/fasterxml/jackson/core/k;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/d;->O(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;Z)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/d;->P(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic s(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/d;->Q(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic t(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/d;->R(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/d;->S(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/d;

    move-result-object p1

    return-object p1
.end method
