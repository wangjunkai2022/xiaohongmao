.class public Lcom/fasterxml/jackson/databind/deser/e$b;
.super Ljava/lang/Object;
.source "DataFormatReaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field protected final a:Ljava/io/InputStream;

.field protected final b:[B

.field protected final c:I

.field protected final d:I

.field protected final e:Lcom/fasterxml/jackson/databind/ObjectReader;

.field protected final f:Lcom/fasterxml/jackson/core/format/MatchStrength;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->a:Ljava/io/InputStream;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->b:[B

    .line 4
    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->c:I

    .line 5
    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->d:I

    .line 6
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->e:Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 7
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->f:Lcom/fasterxml/jackson/core/format/MatchStrength;

    return-void
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->e:Lcom/fasterxml/jackson/databind/ObjectReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->a:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->b:[B

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/e$b;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->a:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->b:[B

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->c:I

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->d:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/f;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->a:Ljava/io/InputStream;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->b:[B

    iget v8, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->c:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->d:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/core/io/f;-><init>(Lcom/fasterxml/jackson/core/io/d;Ljava/io/InputStream;[BII)V

    return-object v0
.end method

.method public c()Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->f:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    :cond_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->e:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->e:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/e$b;->e:Lcom/fasterxml/jackson/databind/ObjectReader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
