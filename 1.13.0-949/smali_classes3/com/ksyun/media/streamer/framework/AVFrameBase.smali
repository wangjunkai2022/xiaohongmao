.class public Lcom/ksyun/media/streamer/framework/AVFrameBase;
.super Ljava/lang/Object;
.source "AVFrameBase.java"


# static fields
.field public static final FLAG_CODEC_CONFIG:I = 0x2

.field public static final FLAG_DETACH_NATIVE_MODULE:I = 0x10000

.field public static final FLAG_END_OF_STREAM:I = 0x4

.field public static final FLAG_KEY_FRAME:I = 0x1


# instance fields
.field public flags:I

.field public pts:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRefCounted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ref()V
    .locals 0

    return-void
.end method

.method public unref()V
    .locals 0

    return-void
.end method
