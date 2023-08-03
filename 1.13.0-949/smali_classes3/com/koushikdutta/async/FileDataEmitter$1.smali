.class Lcom/koushikdutta/async/FileDataEmitter$1;
.super Ljava/lang/Object;
.source "FileDataEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/FileDataEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/FileDataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/FileDataEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v1, v0, Lcom/koushikdutta/async/FileDataEmitter;->i:Ljava/nio/channels/FileChannel;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v2, v2, Lcom/koushikdutta/async/FileDataEmitter;->e:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v2}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/FileDataEmitter;->i:Ljava/nio/channels/FileChannel;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v0, v0, Lcom/koushikdutta/async/FileDataEmitter;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v1, v0, Lcom/koushikdutta/async/FileDataEmitter;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 5
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v0, v0, Lcom/koushikdutta/async/FileDataEmitter;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->x()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x2000

    .line 6
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->y(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    .line 7
    iget-object v2, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v2, v2, Lcom/koushikdutta/async/FileDataEmitter;->i:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/FileDataEmitter;->v0(Ljava/lang/Exception;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v1, v1, Lcom/koushikdutta/async/FileDataEmitter;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 11
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v1, v0, Lcom/koushikdutta/async/FileDataEmitter;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 12
    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    iget-object v0, v0, Lcom/koushikdutta/async/FileDataEmitter;->h:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    invoke-virtual {v0}, Lcom/koushikdutta/async/FileDataEmitter;->i()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/koushikdutta/async/FileDataEmitter$1;->a:Lcom/koushikdutta/async/FileDataEmitter;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/FileDataEmitter;->v0(Ljava/lang/Exception;)V

    :cond_3
    :goto_0
    return-void
.end method
