.class Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RouteInfo"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/regex/Pattern;

.field c:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

.field d:Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;-><init>()V

    return-void
.end method
