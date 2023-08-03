.class public Lcom/koushikdutta/async/http/body/StringBody;
.super Ljava/lang/Object;
.source "StringBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "text/plain"


# instance fields
.field a:[B

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/StringBody;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/StringBody;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public K(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/StringParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/http/body/StringBody$1;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/body/StringBody$1;-><init>(Lcom/koushikdutta/async/http/body/StringBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/StringBody;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/StringBody;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "text/plain"

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    array-length v0, v0

    return v0
.end method

.method public q(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/StringBody;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/StringBody;->a:[B

    invoke-static {p2, p1, p3}, Lcom/koushikdutta/async/Util;->n(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public t0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody;->b:Ljava/lang/String;

    return-object v0
.end method
