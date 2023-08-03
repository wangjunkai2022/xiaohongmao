.class public final synthetic Lcom/koushikdutta/async/http/server/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/e;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-boolean p2, p0, Lcom/koushikdutta/async/http/server/e;->b:Z

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/e;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-boolean v1, p0, Lcom/koushikdutta/async/http/server/e;->b:Z

    invoke-static {v0, v1, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->n(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;ZLjava/lang/Exception;)V

    return-void
.end method
