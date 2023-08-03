.class Lcom/koushikdutta/async/http/body/DocumentBody$1;
.super Ljava/lang/Object;
.source "DocumentBody.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/DocumentBody;->K(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Lorg/w3c/dom/Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic b:Lcom/koushikdutta/async/http/body/DocumentBody;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/DocumentBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/DocumentBody$1;->b:Lcom/koushikdutta/async/http/body/DocumentBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/DocumentBody$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lorg/w3c/dom/Document;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/DocumentBody$1;->b:Lcom/koushikdutta/async/http/body/DocumentBody;

    iput-object p2, v0, Lcom/koushikdutta/async/http/body/DocumentBody;->b:Lorg/w3c/dom/Document;

    .line 2
    iget-object p2, p0, Lcom/koushikdutta/async/http/body/DocumentBody$1;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/w3c/dom/Document;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/body/DocumentBody$1;->a(Ljava/lang/Exception;Lorg/w3c/dom/Document;)V

    return-void
.end method
