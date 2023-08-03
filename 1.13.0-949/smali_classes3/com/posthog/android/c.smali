.class Lcom/posthog/android/c;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/c$c;,
        Lcom/posthog/android/c$d;
    }
.end annotation


# instance fields
.field final a:Lcom/posthog/android/d;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/android/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/posthog/android/c;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/posthog/android/c;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/posthog/android/c;->a:Lcom/posthog/android/d;

    return-void
.end method

.method private static b(Ljava/net/HttpURLConnection;)Lcom/posthog/android/c$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/posthog/android/c$b;

    invoke-static {p0}, Lcom/posthog/android/internal/Utils;->l(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/posthog/android/c$b;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method private static c(Ljava/net/HttpURLConnection;)Lcom/posthog/android/c$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Encoding"

    .line 1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    .line 2
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 5
    :goto_0
    new-instance v1, Lcom/posthog/android/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/posthog/android/c$a;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method


# virtual methods
.method a()Lcom/posthog/android/c$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/c;->a:Lcom/posthog/android/d;

    iget-object v1, p0, Lcom/posthog/android/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/posthog/android/d;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/posthog/android/c;->c(Ljava/net/HttpURLConnection;)Lcom/posthog/android/c$c;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/posthog/android/c$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/c;->a:Lcom/posthog/android/d;

    iget-object v1, p0, Lcom/posthog/android/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/posthog/android/d;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/posthog/android/c;->c(Ljava/net/HttpURLConnection;)Lcom/posthog/android/c$c;

    move-result-object v0

    return-object v0
.end method
