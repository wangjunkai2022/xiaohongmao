.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnExchangeHeaderData"
.end annotation


# instance fields
.field public f:Lcom/koushikdutta/async/AsyncSocket;

.field public g:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

.field public h:Lcom/koushikdutta/async/callback/CompletedCallback;

.field public i:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;-><init>()V

    return-void
.end method
