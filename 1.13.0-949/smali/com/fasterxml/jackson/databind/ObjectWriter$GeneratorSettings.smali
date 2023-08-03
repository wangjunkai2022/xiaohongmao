.class public final Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
.super Ljava/lang/Object;
.source "ObjectWriter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ObjectWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratorSettings"
.end annotation


# static fields
.field private static final a:J = 0x1L

.field public static final empty:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;


# instance fields
.field public final characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field public final prettyPrinter:Lcom/fasterxml/jackson/core/i;

.field public final rootValueSeparator:Lcom/fasterxml/jackson/core/j;

.field public final schema:Lcom/fasterxml/jackson/core/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/j;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/i;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/c;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/j;

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/i;

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/databind/ObjectWriter;->h:Lcom/fasterxml/jackson/core/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->z0(Lcom/fasterxml/jackson/core/i;)Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/fasterxml/jackson/core/util/d;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/fasterxml/jackson/core/util/d;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/d;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/i;

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->z0(Lcom/fasterxml/jackson/core/i;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->u0(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/c;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->B0(Lcom/fasterxml/jackson/core/c;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/j;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->A0(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/core/JsonGenerator;

    :cond_5
    return-void
.end method

.method public with(Lcom/fasterxml/jackson/core/c;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/c;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/i;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/j;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/j;)V

    :goto_0
    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/core/i;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 4

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->h:Lcom/fasterxml/jackson/core/i;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/i;

    if-ne p1, v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/c;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/j;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/j;)V

    :goto_0
    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/i;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/c;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/j;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/j;)V

    :goto_0
    return-object v0
.end method

.method public withRootValueSeparator(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 4

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/j;

    if-nez p1, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/i;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/c;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/j;)V

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/j;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 8
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/i;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/c;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/j;)V

    return-object v0
.end method

.method public withRootValueSeparator(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
    .locals 5

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/j;

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/i;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/c;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/j;)V

    return-object p1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 4
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/i;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/c;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    new-instance v4, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v4, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/c;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/j;)V

    return-object v0
.end method
