.class public abstract Lcom/fasterxml/jackson/core/k;
.super Ljava/lang/Object;
.source "TSFBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/fasterxml/jackson/core/JsonFactory;",
        "B:",
        "Lcom/fasterxml/jackson/core/k<",
        "TF;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final f:I

.field protected static final g:I

.field protected static final h:I


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:Lcom/fasterxml/jackson/core/io/InputDecorator;

.field protected e:Lcom/fasterxml/jackson/core/io/OutputDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/k;->f:I

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/k;->g:I

    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/k;->h:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/fasterxml/jackson/core/k;->f:I

    iput v0, p0, Lcom/fasterxml/jackson/core/k;->a:I

    .line 3
    sget v0, Lcom/fasterxml/jackson/core/k;->g:I

    iput v0, p0, Lcom/fasterxml/jackson/core/k;->b:I

    .line 4
    sget v0, Lcom/fasterxml/jackson/core/k;->h:I

    iput v0, p0, Lcom/fasterxml/jackson/core/k;->c:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/core/k;->d:Lcom/fasterxml/jackson/core/io/InputDecorator;

    .line 6
    iput-object v0, p0, Lcom/fasterxml/jackson/core/k;->e:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/fasterxml/jackson/core/k;->a:I

    .line 10
    iput p2, p0, Lcom/fasterxml/jackson/core/k;->b:I

    .line 11
    iput p3, p0, Lcom/fasterxml/jackson/core/k;->c:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 2

    .line 7
    iget v0, p1, Lcom/fasterxml/jackson/core/JsonFactory;->d:I

    iget v1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->e:I

    iget p1, p1, Lcom/fasterxml/jackson/core/JsonFactory;->f:I

    invoke-direct {p0, v0, v1, p1}, Lcom/fasterxml/jackson/core/k;-><init>(III)V

    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported for non-JSON backend"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/k;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public varargs B(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/k;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public C(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/k;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public varargs D(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/k;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/k;->a:I

    return v0
.end method

.method public F(Lcom/fasterxml/jackson/core/io/InputDecorator;)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/io/InputDecorator;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/core/k;->d:Lcom/fasterxml/jackson/core/io/InputDecorator;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public G()Lcom/fasterxml/jackson/core/io/InputDecorator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/k;->d:Lcom/fasterxml/jackson/core/io/InputDecorator;

    return-object v0
.end method

.method public H(Lcom/fasterxml/jackson/core/io/OutputDecorator;)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/io/OutputDecorator;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fasterxml/jackson/core/k;->e:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public I()Lcom/fasterxml/jackson/core/io/OutputDecorator;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/k;->e:Lcom/fasterxml/jackson/core/io/OutputDecorator;

    return-object v0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/k;->b:I

    return v0
.end method

.method public K()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/k;->c:I

    return v0
.end method

.method protected b(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/k;->c:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->c:I

    :cond_0
    return-void
.end method

.method protected c(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/k;->b:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->b:I

    :cond_0
    return-void
.end method

.method protected d(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/k;->c:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->c:I

    :cond_0
    return-void
.end method

.method protected e(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/k;->b:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->b:I

    :cond_0
    return-void
.end method

.method protected final f()Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    return-object p0
.end method

.method public abstract g()Lcom/fasterxml/jackson/core/JsonFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method

.method public h(Lcom/fasterxml/jackson/core/JsonFactory$Feature;Z)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonFactory$Feature;",
            "Z)TB;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->v(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->m(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public i(Lcom/fasterxml/jackson/core/StreamReadFeature;Z)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "Z)TB;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->w(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->n(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public j(Lcom/fasterxml/jackson/core/StreamWriteFeature;Z)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "Z)TB;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->y(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/k;->p(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public k(Lcom/fasterxml/jackson/core/json/JsonReadFeature;Z)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            "Z)TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/k;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;Z)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            "Z)TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/k;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public m(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonFactory$Feature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/k;->a:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->a:I

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/k;->b:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->b:I

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public varargs o(Lcom/fasterxml/jackson/core/StreamReadFeature;[Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/k;->b:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->b:I

    .line 2
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 3
    iget v2, p0, Lcom/fasterxml/jackson/core/k;->b:I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/k;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/k;->c:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->c:I

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public varargs q(Lcom/fasterxml/jackson/core/StreamWriteFeature;[Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/k;->c:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->c:I

    .line 2
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 3
    iget v2, p0, Lcom/fasterxml/jackson/core/k;->c:I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/k;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/k;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public varargs s(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonReadFeature;",
            ")TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/k;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/k;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public varargs u(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
            ")TB;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/k;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public v(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Lcom/fasterxml/jackson/core/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonFactory$Feature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/k;->a:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->a:I

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/k;->b:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->b:I

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public varargs x(Lcom/fasterxml/jackson/core/StreamReadFeature;[Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/k;->b:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->b:I

    .line 2
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 3
    iget v2, p0, Lcom/fasterxml/jackson/core/k;->b:I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/k;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public y(Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/k;->c:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->c:I

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method

.method public varargs z(Lcom/fasterxml/jackson/core/StreamWriteFeature;[Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/core/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "[",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/k;->c:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/k;->c:I

    .line 2
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 3
    iget v2, p0, Lcom/fasterxml/jackson/core/k;->c:I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/core/k;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/k;->f()Lcom/fasterxml/jackson/core/k;

    move-result-object p1

    return-object p1
.end method
