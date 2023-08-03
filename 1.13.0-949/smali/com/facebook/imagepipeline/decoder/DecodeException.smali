.class public Lcom/facebook/imagepipeline/decoder/DecodeException;
.super Ljava/lang/RuntimeException;
.source "DecodeException.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/image/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/imagepipeline/image/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "encodedImage"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/imagepipeline/decoder/DecodeException;->a:Lcom/facebook/imagepipeline/image/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/imagepipeline/image/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "t",
            "encodedImage"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/decoder/DecodeException;->a:Lcom/facebook/imagepipeline/image/e;

    return-void
.end method


# virtual methods
.method public getEncodedImage()Lcom/facebook/imagepipeline/image/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DecodeException;->a:Lcom/facebook/imagepipeline/image/e;

    return-object v0
.end method
