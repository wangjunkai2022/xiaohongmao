.class public final Lcom/coremedia/iso/j;
.super Ljava/lang/Object;
.source "IsoTypeWriterVariable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLjava/nio/ByteBuffer;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    .line 1
    invoke-static {p2, p0, p1}, Lcom/coremedia/iso/i;->l(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "I don\'t know how to read "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p2, p0, p1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0xffffff

    and-long/2addr p0, v0

    long-to-int p1, p0

    .line 4
    invoke-static {p2, p1}, Lcom/coremedia/iso/i;->h(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0xffff

    and-long/2addr p0, v0

    long-to-int p1, p0

    .line 5
    invoke-static {p2, p1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    long-to-int p1, p0

    .line 6
    invoke-static {p2, p1}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    :goto_0
    return-void
.end method
