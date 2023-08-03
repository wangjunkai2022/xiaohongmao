.class public Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Asset"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/io/InputStream;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->a:I

    .line 3
    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->b:Ljava/io/InputStream;

    .line 4
    iput-object p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->c:Ljava/lang/String;

    return-void
.end method
