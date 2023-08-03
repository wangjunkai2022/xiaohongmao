.class public abstract Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "AsyncHttpServerRequestImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Lcom/koushikdutta/async/http/Headers;

.field j:Lcom/koushikdutta/async/AsyncSocket;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/koushikdutta/async/callback/CompletedCallback;

.field m:Lcom/koushikdutta/async/LineEmitter$StringCallback;

.field n:Ljava/lang/String;

.field o:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->i:Lcom/koushikdutta/async/http/Headers;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->k:Ljava/util/HashMap;

    .line 4
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->l:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 5
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->m:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    return-void
.end method

.method static synthetic A0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->l:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object p0
.end method

.method static synthetic w0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic y0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic z0(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)Lcom/koushikdutta/async/http/Headers;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->i:Lcom/koushikdutta/async/http/Headers;

    return-object p0
.end method


# virtual methods
.method public B0()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method public C0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected D0(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract E0()V
.end method

.method protected F0()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "not http!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected G0(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public b0(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method c0(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    .line 2
    new-instance p1, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {p1}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->m:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/LineEmitter;->b(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 5
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v0, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->X(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public d()Lcom/koushikdutta/async/http/Headers;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->i:Lcom/koushikdutta/async/http/Headers;

    return-object v0
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->o()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->i0()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->get()Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/koushikdutta/async/http/Multimap;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/koushikdutta/async/http/Multimap;

    .line 7
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getState()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->B0()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public h0()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->h0()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->i()Z

    move-result v0

    return v0
.end method

.method public i0()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->o:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    return-object v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->k()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->pause()V

    return-void
.end method

.method public r0()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->j:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->r0()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->i:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
