.class public Lcom/koushikdutta/async/parser/StringParser;
.super Ljava/lang/Object;
.source "StringParser.java"

# interfaces
.implements Lcom/koushikdutta/async/parser/AsyncParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/parser/AsyncParser<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/parser/StringParser;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static synthetic d(Lcom/koushikdutta/async/parser/StringParser;Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/parser/StringParser;->e(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/parser/StringParser;->a:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->L(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/DataEmitter;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->n()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v1}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/parser/ByteBufferListParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v1, Lcom/koushikdutta/async/parser/c;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/parser/c;-><init>(Lcom/koushikdutta/async/parser/StringParser;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, v1}, Lcom/koushikdutta/async/future/Future;->F(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/koushikdutta/async/DataSink;Ljava/lang/Object;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/parser/StringParser;->f(Lcom/koushikdutta/async/DataSink;Ljava/lang/String;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public f(Lcom/koushikdutta/async/DataSink;Ljava/lang/String;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 2

    new-instance v0, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, p1, v1, p3}, Lcom/koushikdutta/async/parser/ByteBufferListParser;->d(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    const-class v0, Ljava/lang/String;

    return-object v0
.end method
