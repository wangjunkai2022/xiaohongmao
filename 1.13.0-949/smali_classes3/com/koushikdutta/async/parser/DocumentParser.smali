.class public Lcom/koushikdutta/async/parser/DocumentParser;
.super Ljava/lang/Object;
.source "DocumentParser.java"

# interfaces
.implements Lcom/koushikdutta/async/parser/AsyncParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/parser/AsyncParser<",
        "Lorg/w3c/dom/Document;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/koushikdutta/async/ByteBufferList;)Lorg/w3c/dom/Document;
    .locals 0

    invoke-static {p0}, Lcom/koushikdutta/async/parser/DocumentParser;->e(Lcom/koushikdutta/async/ByteBufferList;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Lcom/koushikdutta/async/ByteBufferList;)Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;-><init>(Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/DataEmitter;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/ByteBufferListParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    sget-object v0, Lcom/koushikdutta/async/parser/a;->a:Lcom/koushikdutta/async/parser/a;

    .line 2
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->F(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "text/xml"

    return-object v0
.end method

.method public bridge synthetic c(Lcom/koushikdutta/async/DataSink;Ljava/lang/Object;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    check-cast p2, Lorg/w3c/dom/Document;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/parser/DocumentParser;->f(Lcom/koushikdutta/async/DataSink;Lorg/w3c/dom/Document;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public f(Lcom/koushikdutta/async/DataSink;Lorg/w3c/dom/Document;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/http/body/DocumentBody;

    invoke-direct {v0, p2}, Lcom/koushikdutta/async/http/body/DocumentBody;-><init>(Lorg/w3c/dom/Document;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, p3}, Lcom/koushikdutta/async/http/body/DocumentBody;->q(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    const-class v0, Lorg/w3c/dom/Document;

    return-object v0
.end method
