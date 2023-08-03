.class Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->k(Ljava/lang/String;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Z

.field final synthetic c:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;Ljava/io/File;Z)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;->c:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;->a:Ljava/io/File;

    iput-boolean p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->C()Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;->a:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;->b:Z

    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 7
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;)V

    .line 11
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13
    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 16
    new-instance v3, Ljava/io/File;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const-string v2, "<div><a href=\'%s\'>%s</a></div>"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->send(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    const/16 v0, 0x194

    if-nez p1, :cond_4

    .line 20
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 21
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->j()V

    return-void

    .line 22
    :cond_4
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v1}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p1

    const/16 v1, 0xc8

    .line 23
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 24
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$2;

    invoke-direct {v3, p0, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    invoke-static {p1, v1, v2, p2, v3}, Lcom/koushikdutta/async/Util;->h(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 25
    :catch_0
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->h(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 26
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->j()V

    :goto_3
    return-void
.end method
