.class public Lcom/koushikdutta/async/http/server/UnknownRequestBody;
.super Ljava/lang/Object;
.source "UnknownRequestBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field private b:Ljava/lang/String;

.field c:Lcom/koushikdutta/async/DataEmitter;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->b:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->c:Lcom/koushikdutta/async/DataEmitter;

    .line 7
    iput p3, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->a:I

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public K(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->c:Lcom/koushikdutta/async/DataEmitter;

    .line 2
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 3
    new-instance p2, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {p2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method public a()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->c:Lcom/koushikdutta/async/DataEmitter;

    return-object v0
.end method

.method public c(Lcom/koushikdutta/async/callback/DataCallback;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->c:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0, p2}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 2
    iget-object p2, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->c:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->b:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->a:I

    return v0
.end method

.method public q(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->c:Lcom/koushikdutta/async/DataEmitter;

    invoke-static {p1, p2, p3}, Lcom/koushikdutta/async/Util;->f(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->c:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;->c:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p1}, Lcom/koushikdutta/async/DataEmitter;->k()V

    :cond_0
    return-void
.end method

.method public t0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
