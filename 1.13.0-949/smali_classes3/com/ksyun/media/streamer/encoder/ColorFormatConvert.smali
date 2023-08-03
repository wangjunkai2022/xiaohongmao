.class public Lcom/ksyun/media/streamer/encoder/ColorFormatConvert;
.super Ljava/lang/Object;
.source "ColorFormatConvert.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ksyun/media/streamer/util/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native I420ToRGBA(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)I
.end method

.method public static native RGBAToBGR8(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)I
.end method

.method public static native RGBAToI420(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)I
.end method

.method public static native YUVAToI420(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)I
.end method
