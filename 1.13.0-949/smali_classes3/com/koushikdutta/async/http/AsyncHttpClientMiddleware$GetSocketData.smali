.class public Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;
.super Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSocketData"
.end annotation


# instance fields
.field public c:Lcom/koushikdutta/async/callback/ConnectCallback;

.field public d:Lcom/koushikdutta/async/future/Cancellable;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;-><init>()V

    return-void
.end method
