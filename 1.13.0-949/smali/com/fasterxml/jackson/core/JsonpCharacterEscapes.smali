.class public Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;
.super Lcom/fasterxml/jackson/core/io/CharacterEscapes;
.source "JsonpCharacterEscapes.java"


# static fields
.field private static final a:J = 0x1L

.field private static final b:[I

.field private static final c:Lcom/fasterxml/jackson/core/io/SerializedString;

.field private static final d:Lcom/fasterxml/jackson/core/io/SerializedString;

.field private static final e:Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;->standardAsciiEscapesForJSON()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->b:[I

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    const-string v1, "\\u2028"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->c:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    const-string v1, "\\u2029"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->d:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->e:Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/CharacterEscapes;-><init>()V

    return-void
.end method

.method public static instance()Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->e:Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;

    return-object v0
.end method


# virtual methods
.method public getEscapeCodesForAscii()[I
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->b:[I

    return-object v0
.end method

.method public getEscapeSequence(I)Lcom/fasterxml/jackson/core/j;
    .locals 1

    const/16 v0, 0x2028

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2029

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->d:Lcom/fasterxml/jackson/core/io/SerializedString;

    return-object p1

    .line 2
    :cond_1
    sget-object p1, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->c:Lcom/fasterxml/jackson/core/io/SerializedString;

    return-object p1
.end method
