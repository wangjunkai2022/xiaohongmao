.class public final Lcom/coremedia/iso/h;
.super Ljava/lang/Object;
.source "IsoTypeReaderVariable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;I)J
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/coremedia/iso/g;->o(Ljava/nio/ByteBuffer;)J

    move-result-wide p0

    return-wide p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "I don\'t know how to read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_2
    invoke-static {p0}, Lcom/coremedia/iso/g;->k(Ljava/nio/ByteBuffer;)I

    move-result p0

    :goto_0
    int-to-long p0, p0

    return-wide p0

    .line 5
    :cond_3
    invoke-static {p0}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result p0

    goto :goto_0

    .line 6
    :cond_4
    invoke-static {p0}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    move-result p0

    goto :goto_0
.end method
