.class public Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteMatch"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/regex/Matcher;

.field public final d:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

.field public final e:Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->c:Ljava/util/regex/Matcher;

    .line 6
    iput-object p4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->d:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .line 7
    iput-object p5, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->e:Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;)V

    return-void
.end method
