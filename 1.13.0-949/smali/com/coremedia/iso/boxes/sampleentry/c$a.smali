.class Lcom/coremedia/iso/boxes/sampleentry/c$a;
.super Ljava/lang/Object;
.source "AudioSampleEntry.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coremedia/iso/boxes/sampleentry/c;->p(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coremedia/iso/boxes/sampleentry/c;

.field private final synthetic b:J

.field private final synthetic c:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/coremedia/iso/boxes/sampleentry/c;JLjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c$a;->a:Lcom/coremedia/iso/boxes/sampleentry/c;

    iput-wide p2, p0, Lcom/coremedia/iso/boxes/sampleentry/c$a;->b:J

    iput-object p4, p0, Lcom/coremedia/iso/boxes/sampleentry/c$a;->c:Ljava/nio/ByteBuffer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c$a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c$a;->c:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public getParent()Lcom/coremedia/iso/boxes/j;
    .locals 1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c$a;->a:Lcom/coremedia/iso/boxes/sampleentry/c;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c$a;->b:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "----"

    return-object v0
.end method

.method public k()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public p(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "NotImplemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Lcom/coremedia/iso/boxes/j;)V
    .locals 1

    sget-boolean v0, Lcom/coremedia/iso/boxes/sampleentry/c;->O:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c$a;->a:Lcom/coremedia/iso/boxes/sampleentry/c;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "you cannot diswown this special box"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
