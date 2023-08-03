.class public final synthetic Lcom/koushikdutta/async/http/server/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

.field public final synthetic b:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/i;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/i;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/i;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;

    invoke-static {v0, v1, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->c(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;Ljava/lang/Exception;)V

    return-void
.end method
