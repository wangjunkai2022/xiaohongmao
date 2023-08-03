.class public Lcom/ksyun/media/streamer/framework/ImgTexFormat;
.super Ljava/lang/Object;
.source "ImgTexFormat.java"


# static fields
.field public static final COLOR_EXTERNAL_OES:I = 0x3

.field public static final COLOR_RGBA:I = 0x1

.field public static final COLOR_YUVA:I = 0x2


# instance fields
.field public final colorFormat:I

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->colorFormat:I

    .line 3
    iput p2, p0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    .line 4
    iput p3, p0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    return-void
.end method
