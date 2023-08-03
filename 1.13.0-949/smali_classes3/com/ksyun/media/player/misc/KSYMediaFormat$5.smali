.class Lcom/ksyun/media/player/misc/KSYMediaFormat$5;
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

    iput-object p1, p0, Lcom/ksyun/media/player/misc/KSYMediaFormat$5;->a:Lcom/ksyun/media/player/misc/KSYMediaFormat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ksyun/media/player/misc/KSYMediaFormat$a;-><init>(Lcom/ksyun/media/player/misc/KSYMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/ksyun/media/player/misc/KSYMediaFormat;)Ljava/lang/String;
    .locals 8

    const-string v0, "width"

    .line 1
    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/misc/KSYMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    .line 2
    invoke-virtual {p1, v1}, Lcom/ksyun/media/player/misc/KSYMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sar_num"

    .line 3
    invoke-virtual {p1, v2}, Lcom/ksyun/media/player/misc/KSYMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sar_den"

    .line 4
    invoke-virtual {p1, v3}, Lcom/ksyun/media/player/misc/KSYMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    if-lez v0, :cond_3

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lez v2, :cond_2

    if-gtz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v5

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v0

    const-string p1, "%d x %d [SAR %d:%d]"

    .line 7
    invoke-static {v6, p1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%d x %d"

    invoke-static {p1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
