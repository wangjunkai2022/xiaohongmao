.class abstract Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.source "AsyncHttpServerRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AsyncHttpServerRequestImpl"
.end annotation


# instance fields
.field p:Ljava/util/regex/Matcher;

.field final synthetic q:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;->q:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public C()Ljava/util/regex/Matcher;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;->p:Ljava/util/regex/Matcher;

    return-object v0
.end method

.method public m0(Ljava/util/regex/Matcher;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;->p:Ljava/util/regex/Matcher;

    return-void
.end method
