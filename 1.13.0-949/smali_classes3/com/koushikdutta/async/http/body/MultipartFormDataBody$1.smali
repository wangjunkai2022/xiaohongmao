.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/Headers;

.field final synthetic b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/Headers;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\r"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->f(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->J0()V

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->j:Lcom/koushikdutta/async/LineEmitter;

    .line 5
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/DataEmitterBase;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 6
    new-instance p1, Lcom/koushikdutta/async/http/body/Part;

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/body/Part;-><init>(Lcom/koushikdutta/async/http/Headers;)V

    .line 7
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object v0, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->o:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;->a(Lcom/koushikdutta/async/http/body/Part;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0}, Lcom/koushikdutta/async/DataEmitterBase;->r0()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p1, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->m:Lcom/koushikdutta/async/http/body/Part;

    .line 11
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object p1, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->l:Lcom/koushikdutta/async/ByteBufferList;

    .line 12
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/DataEmitterBase;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    :cond_2
    :goto_0
    return-void
.end method
