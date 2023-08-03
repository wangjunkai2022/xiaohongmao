.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/PushParser$ParseCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->b([B)V

    return-void
.end method

.method public b([B)V
    .locals 4

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->w0([BILjava/nio/ByteOrder;)S

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->k:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-short v0, v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "CRC mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->v0(Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object p1, p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->k:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 5
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->j:Z

    .line 6
    iget-object p1, p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->c:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->G(Lcom/koushikdutta/async/DataEmitter;)V

    return-void
.end method
