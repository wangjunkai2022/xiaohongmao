.class public Le8/b;
.super Ljava/lang/Object;
.source "JSONSource.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/parser/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/danmaku/parser/b<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lorg/json/JSONArray;

.field private e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "file"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/sentry/instrumentation/file/h$b;->d(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Le8/b;->b(Ljava/io/InputStream;)V

    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Le8/b;->b(Ljava/io/InputStream;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Le8/b;->b(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0, p1}, Le8/b;->b(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Le8/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Le8/b;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private b(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "input stream cannot be null!"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Le8/b;->e:Ljava/io/InputStream;

    .line 3
    invoke-static {p1}, Lg8/b;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Le8/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le8/b;->d:Lorg/json/JSONArray;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Le8/b;->d:Lorg/json/JSONArray;

    return-object v0
.end method

.method public bridge synthetic data()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Le8/b;->a()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Le8/b;->e:Ljava/io/InputStream;

    invoke-static {v0}, Lg8/b;->a(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le8/b;->e:Ljava/io/InputStream;

    .line 3
    iput-object v0, p0, Le8/b;->d:Lorg/json/JSONArray;

    return-void
.end method
