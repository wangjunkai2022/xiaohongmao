.class public final synthetic Lcom/koushikdutta/async/http/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/FailCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field public final synthetic b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/g;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/g;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/g;->c:Landroid/net/Uri;

    iput p4, p0, Lcom/koushikdutta/async/http/g;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/koushikdutta/async/http/g;->a:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/g;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, p0, Lcom/koushikdutta/async/http/g;->c:Landroid/net/Uri;

    iget v3, p0, Lcom/koushikdutta/async/http/g;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->j(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;ILjava/lang/Exception;)V

    return-void
.end method
