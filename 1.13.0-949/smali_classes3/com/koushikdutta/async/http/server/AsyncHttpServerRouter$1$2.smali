.class Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$2;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;->b(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

.field final synthetic b:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$2;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 0

    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$2;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->j()V

    return-void
.end method
