.class Lcom/ksyun/media/player/misc/KSYMediaFormat$4;
.super Lcom/ksyun/media/player/misc/KSYMediaFormat$a;
.source "KSYMediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/misc/KSYMediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/misc/KSYMediaFormat;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/misc/KSYMediaFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/misc/KSYMediaFormat$4;->a:Lcom/ksyun/media/player/misc/KSYMediaFormat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/misc/KSYMediaFormat$a;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/ksyun/media/player/misc/KSYMediaFormat;)Ljava/lang/String;
    .locals 1

    const-string v0, "codec_pixel_format"

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/misc/KSYMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
