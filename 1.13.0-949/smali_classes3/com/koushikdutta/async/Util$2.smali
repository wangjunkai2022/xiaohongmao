.class final Lcom/koushikdutta/async/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->h(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:I

.field b:Lcom/koushikdutta/async/ByteBufferList;

.field c:Lcom/koushikdutta/async/util/Allocator;

.field final synthetic d:Lcom/koushikdutta/async/DataSink;

.field final synthetic e:Ljava/io/InputStream;

.field final synthetic f:J

.field final synthetic g:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataSink;Ljava/io/InputStream;JLcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/Util$2;->d:Lcom/koushikdutta/async/DataSink;

    iput-object p2, p0, Lcom/koushikdutta/async/Util$2;->e:Ljava/io/InputStream;

    iput-wide p3, p0, Lcom/koushikdutta/async/Util$2;->f:J

    iput-object p5, p0, Lcom/koushikdutta/async/Util$2;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/koushikdutta/async/Util$2;->a:I

    .line 3
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    .line 4
    new-instance p1, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {p1}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    const-wide/32 v0, 0x100000

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/util/Allocator;->f(I)Lcom/koushikdutta/async/util/Allocator;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/Util$2;->c:Lcom/koushikdutta/async/util/Allocator;

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->d:Lcom/koushikdutta/async/DataSink;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->j0(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->d:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->e0(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    .line 4
    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->e:Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->w()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->c:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/Allocator;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lcom/koushikdutta/async/Util$2;->f:J

    iget v3, p0, Lcom/koushikdutta/async/Util$2;->a:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lcom/koushikdutta/async/Util$2;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    long-to-int v2, v1

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 5
    iget v3, p0, Lcom/koushikdutta/async/Util$2;->a:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/koushikdutta/async/Util$2;->f:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/koushikdutta/async/Util$2;->c:Lcom/koushikdutta/async/util/Allocator;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/koushikdutta/async/util/Allocator;->g(J)V

    .line 7
    iget v3, p0, Lcom/koushikdutta/async/Util$2;->a:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/koushikdutta/async/Util$2;->a:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/Util$2;->b()V

    .line 12
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    return-void

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->d:Lcom/koushikdutta/async/DataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a0(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 14
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->w()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 15
    invoke-direct {p0}, Lcom/koushikdutta/async/Util$2;->b()V

    .line 16
    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
