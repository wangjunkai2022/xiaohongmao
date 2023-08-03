.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean p1, p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b:Z

    if-eqz p1, :cond_0

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->T()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->Q()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->k:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 5
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    .line 7
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->a:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-static {p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->c(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    return-void
.end method
