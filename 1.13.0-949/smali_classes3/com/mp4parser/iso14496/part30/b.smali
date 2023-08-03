.class public Lcom/mp4parser/iso14496/part30/b;
.super Lcom/coremedia/iso/boxes/sampleentry/a;
.source "WebVTTSampleEntry.java"


# static fields
.field public static final o:Ljava/lang/String; = "wvtt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "wvtt"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public J()Lcom/mp4parser/iso14496/part30/a;
    .locals 1

    const-string v0, "vttC"

    invoke-static {p0, v0}, Lcom/googlecode/mp4parser/util/m;->e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    move-result-object v0

    check-cast v0, Lcom/mp4parser/iso14496/part30/a;

    return-object v0
.end method

.method public K()Lcom/mp4parser/iso14496/part30/c;
    .locals 1

    const-string v0, "vlab"

    invoke-static {p0, v0}, Lcom/googlecode/mp4parser/util/m;->e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    move-result-object v0

    check-cast v0, Lcom/mp4parser/iso14496/part30/c;

    return-object v0
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b;->I()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/d;->A(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method public p(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/googlecode/mp4parser/b;->G(Lcom/googlecode/mp4parser/e;JLcom/coremedia/iso/c;)V

    return-void
.end method
