.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->q(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/body/Part;

.field final synthetic b:Lcom/koushikdutta/async/DataSink;

.field final synthetic c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->a:Lcom/koushikdutta/async/http/body/Part;

    iput-object p3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->b:Lcom/koushikdutta/async/DataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->a:Lcom/koushikdutta/async/http/body/Part;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/body/Part;->d()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->y0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->b:Lcom/koushikdutta/async/DataSink;

    invoke-static {v0, p1, p2}, Lcom/koushikdutta/async/Util;->n(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 3
    iget-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget v0, p2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->p:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->p:I

    return-void
.end method
