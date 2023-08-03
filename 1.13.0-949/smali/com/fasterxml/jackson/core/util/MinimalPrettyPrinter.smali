.class public Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;
.super Ljava/lang/Object;
.source "MinimalPrettyPrinter.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/i;
.implements Ljava/io/Serializable;


# static fields
.field private static final c:J = 0x1L


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/fasterxml/jackson/core/util/Separators;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/i;->Z:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SerializedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->a:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/fasterxml/jackson/core/i;->Y:Lcom/fasterxml/jackson/core/util/Separators;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->b:Lcom/fasterxml/jackson/core/util/Separators;

    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setRootValueSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->a:Ljava/lang/String;

    return-void
.end method

.method public setSeparators(Lcom/fasterxml/jackson/core/util/Separators;)Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->b:Lcom/fasterxml/jackson/core/util/Separators;

    return-object p0
.end method

.method public writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->b:Lcom/fasterxml/jackson/core/util/Separators;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/Separators;->getArrayValueSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->w1(C)V

    return-void
.end method

.method public writeEndArray(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->w1(C)V

    return-void
.end method

.method public writeEndObject(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->w1(C)V

    return-void
.end method

.method public writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->b:Lcom/fasterxml/jackson/core/util/Separators;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/Separators;->getObjectEntrySeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->w1(C)V

    return-void
.end method

.method public writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->b:Lcom/fasterxml/jackson/core/util/Separators;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/Separators;->getObjectFieldValueSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->w1(C)V

    return-void
.end method

.method public writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->y1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->w1(C)V

    return-void
.end method

.method public writeStartObject(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->w1(C)V

    return-void
.end method
