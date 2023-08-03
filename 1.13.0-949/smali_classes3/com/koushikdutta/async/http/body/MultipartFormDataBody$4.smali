.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;
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

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->a:Lcom/koushikdutta/async/http/body/Part;

    iput-object p3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->b:Lcom/koushikdutta/async/DataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->a:Lcom/koushikdutta/async/http/body/Part;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/body/Part;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->c:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget v2, p1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->p:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->p:I

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->a:Lcom/koushikdutta/async/http/body/Part;

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;->b:Lcom/koushikdutta/async/DataSink;

    invoke-virtual {p1, v0, p2}, Lcom/koushikdutta/async/http/body/Part;->h(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
