.class Lcom/ksyun/media/player/misc/KSYMediaFormat$7;
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

    iput-object p1, p0, Lcom/ksyun/media/player/misc/KSYMediaFormat$7;->a:Lcom/ksyun/media/player/misc/KSYMediaFormat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/misc/KSYMediaFormat$a;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/ksyun/media/player/misc/KSYMediaFormat;)Ljava/lang/String;
    .locals 3

    const-string v0, "sample_rate"

    .line 1
    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/misc/KSYMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%d Hz"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
