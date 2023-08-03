.class final Lcom/fasterxml/jackson/databind/node/a;
.super Ljava/lang/Object;
.source "InternalNodeMapper.java"


# static fields
.field private static final a:Lcom/fasterxml/jackson/databind/json/JsonMapper;

.field private static final b:Lcom/fasterxml/jackson/databind/ObjectWriter;

.field private static final c:Lcom/fasterxml/jackson/databind/ObjectWriter;

.field private static final d:Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/a;->a:Lcom/fasterxml/jackson/databind/json/JsonMapper;

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writer()Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/node/a;->b:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writer()Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->withDefaultPrettyPrinter()Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/node/a;->c:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 5
    const-class v1, Lcom/fasterxml/jackson/databind/e;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/node/a;->d:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Lcom/fasterxml/jackson/databind/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/node/a;->d:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/e;

    return-object p0
.end method

.method public static b(Lcom/fasterxml/jackson/databind/e;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/fasterxml/jackson/databind/node/a;->c:Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c(Lcom/fasterxml/jackson/databind/e;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/fasterxml/jackson/databind/node/a;->b:Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/node/a;->a:Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsBytes(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method
