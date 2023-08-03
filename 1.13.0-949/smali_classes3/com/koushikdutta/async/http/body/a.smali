.class public final synthetic Lcom/koushikdutta/async/http/body/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;

.field public final synthetic b:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/a;->a:Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/a;->b:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/a;->a:Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/a;->b:Lcom/koushikdutta/async/callback/CompletedCallback;

    check-cast p2, Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {v0, v1, p1, p2}, Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;->a(Lcom/koushikdutta/async/http/body/ByteBufferListRequestBody;Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method
