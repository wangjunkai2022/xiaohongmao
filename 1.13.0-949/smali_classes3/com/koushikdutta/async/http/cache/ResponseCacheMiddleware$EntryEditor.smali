.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryEditor"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/io/File;

.field c:[Ljava/io/FileOutputStream;

.field d:Z

.field final synthetic e:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->e:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->j(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/util/FileCache;->m(I)[Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->b:[Ljava/io/File;

    new-array p1, p2, [Ljava/io/FileOutputStream;

    .line 4
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c:[Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->b:[Ljava/io/File;

    invoke-static {v0}, Lcom/koushikdutta/async/util/FileCache;->q([Ljava/io/File;)V

    .line 3
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->e:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->l(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->d:Z

    return-void
.end method

.method b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 2
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->e:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->j(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->b:[Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/util/FileCache;->b(Ljava/lang/String;[Ljava/io/File;)V

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->e:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->k(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->d:Z

    return-void
.end method

.method c(I)Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c:[Ljava/io/FileOutputStream;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->b:[Ljava/io/File;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v2}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    aput-object v1, v0, p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->c:[Ljava/io/FileOutputStream;

    aget-object p1, v0, p1

    return-object p1
.end method
