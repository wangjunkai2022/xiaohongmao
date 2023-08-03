.class Lcom/koushikdutta/async/http/body/JSONObjectBody$1;
.super Ljava/lang/Object;
.source "JSONObjectBody.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/JSONObjectBody;->K(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic b:Lcom/koushikdutta/async/http/body/JSONObjectBody;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/JSONObjectBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;->b:Lcom/koushikdutta/async/http/body/JSONObjectBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;->b:Lcom/koushikdutta/async/http/body/JSONObjectBody;

    iput-object p2, v0, Lcom/koushikdutta/async/http/body/JSONObjectBody;->b:Lorg/json/JSONObject;

    .line 2
    iget-object p2, p0, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/body/JSONObjectBody$1;->a(Ljava/lang/Exception;Lorg/json/JSONObject;)V

    return-void
.end method
