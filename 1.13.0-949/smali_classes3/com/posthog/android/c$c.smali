.class abstract Lcom/posthog/android/c$c;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/net/HttpURLConnection;

.field final b:Ljava/io/InputStream;

.field final c:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/posthog/android/c$c;->a:Ljava/net/HttpURLConnection;

    .line 3
    iput-object p2, p0, Lcom/posthog/android/c$c;->b:Ljava/io/InputStream;

    .line 4
    iput-object p3, p0, Lcom/posthog/android/c$c;->c:Ljava/io/OutputStream;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/posthog/android/c$c;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
