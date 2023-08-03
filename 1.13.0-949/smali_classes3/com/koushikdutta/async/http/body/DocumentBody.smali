.class public Lcom/koushikdutta/async/http/body/DocumentBody;
.super Ljava/lang/Object;
.source "DocumentBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Lorg/w3c/dom/Document;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "application/xml"


# instance fields
.field a:Ljava/io/ByteArrayOutputStream;

.field b:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/body/DocumentBody;-><init>(Lorg/w3c/dom/Document;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->b:Lorg/w3c/dom/Document;

    return-void
.end method

.method private b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->a:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->b:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 3
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->a:Ljava/io/ByteArrayOutputStream;

    .line 6
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->a:Ljava/io/ByteArrayOutputStream;

    sget-object v4, Lcom/koushikdutta/async/util/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 7
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 8
    invoke-virtual {v1, v0, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public K(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/parser/DocumentParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/DocumentParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/DocumentParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/http/body/DocumentBody$1;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/body/DocumentBody$1;-><init>(Lcom/koushikdutta/async/http/body/DocumentBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-void
.end method

.method public a()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->b:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/DocumentBody;->a()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/xml"

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/DocumentBody;->b()V

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public q(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/DocumentBody;->b()V

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 3
    invoke-static {p2, p1, p3}, Lcom/koushikdutta/async/Util;->n(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public t0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
