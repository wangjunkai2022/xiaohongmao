.class Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;
.super Ljava/lang/Object;
.source "OneJpegPerIframe.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;->b(I)Lcom/googlecode/mp4parser/authoring/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field final synthetic b:Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->b:Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;

    iput p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->c:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->b:Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;

    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;)Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;

    move-result-object v1

    iget-object v1, v1, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->d:[Ljava/io/File;

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->c:I

    aget-object v1, v1, v2

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->a:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public b(Ljava/nio/channels/WritableByteChannel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->b:Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;

    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;)Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;

    move-result-object v1

    iget-object v1, v1, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->d:[Ljava/io/File;

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->c:I

    aget-object v1, v1, v2

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->b:Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;->a(Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;)Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->d:[Ljava/io/File;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a$a;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
