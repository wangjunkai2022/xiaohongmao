.class Lcom/tangxiaolv/telegramgallery/Utils/g$e;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field b:[B

.field c:I

.field d:I

.field e:J

.field final synthetic f:Lcom/tangxiaolv/telegramgallery/Utils/g;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$e;->f:Lcom/tangxiaolv/telegramgallery/Utils/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$e;->a:Ljava/nio/ByteBuffer;

    .line 3
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$e;->b:[B

    return-void
.end method
