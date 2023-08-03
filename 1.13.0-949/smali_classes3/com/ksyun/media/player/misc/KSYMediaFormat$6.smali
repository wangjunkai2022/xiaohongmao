.class Lcom/ksyun/media/player/misc/KSYMediaFormat$6;
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

    iput-object p1, p0, Lcom/ksyun/media/player/misc/KSYMediaFormat$6;->a:Lcom/ksyun/media/player/misc/KSYMediaFormat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/misc/KSYMediaFormat$a;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/ksyun/media/player/misc/KSYMediaFormat;)Ljava/lang/String;
    .locals 2

    const-string v0, "fps_num"

    .line 1
    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/misc/KSYMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "fps_den"

    .line 2
    invoke-virtual {p1, v1}, Lcom/ksyun/media/player/misc/KSYMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    if-lez v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
