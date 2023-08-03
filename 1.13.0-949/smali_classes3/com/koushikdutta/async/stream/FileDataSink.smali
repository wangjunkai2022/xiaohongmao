.class public Lcom/koushikdutta/async/stream/FileDataSink;
.super Lcom/koushikdutta/async/stream/OutputStreamDataSink;
.source "FileDataSink.java"


# instance fields
.field h:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    .line 2
    iput-object p2, p0, Lcom/koushikdutta/async/stream/FileDataSink;->h:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public f()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->f()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/stream/FileDataSink;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/koushikdutta/async/stream/FileDataSink;->h:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v1}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->k(Ljava/io/OutputStream;)V

    :cond_0
    return-object v0
.end method
