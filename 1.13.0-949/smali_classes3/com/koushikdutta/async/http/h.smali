.class public final synthetic Lcom/koushikdutta/async/http/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field public final synthetic b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/h;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/h;->c:Landroid/net/Uri;

    iput p4, p0, Lcom/koushikdutta/async/http/h;->d:I

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/koushikdutta/async/http/h;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/h;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, p0, Lcom/koushikdutta/async/http/h;->c:Landroid/net/Uri;

    iget v3, p0, Lcom/koushikdutta/async/http/h;->d:I

    move-object v5, p2

    check-cast v5, Lcom/koushikdutta/async/AsyncSocket;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->l(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method
