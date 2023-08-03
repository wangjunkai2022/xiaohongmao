.class public Lcom/ksyun/media/player/KSYMediaPlayer$a;
.super Ljava/lang/Object;
.source "KSYMediaPlayer.java"

# interfaces
.implements Lcom/ksyun/media/player/KSYMediaPlayer$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ksyun/media/player/KSYMediaPlayer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ksyun/media/player/KSYMediaPlayer$a;

    invoke-direct {v0}, Lcom/ksyun/media/player/KSYMediaPlayer$a;-><init>()V

    sput-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$a;->a:Lcom/ksyun/media/player/KSYMediaPlayer$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/player/IMediaPlayer;Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return-object p3

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_8

    .line 4
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_7

    aget-object v6, v3, v5

    .line 8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    invoke-static {v2, p2}, Lcom/ksyun/media/player/f;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lcom/ksyun/media/player/f;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    invoke-static {v2, p2, p5, p6}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$3000(Landroid/media/MediaCodecInfo;Ljava/lang/String;II)I

    move-result v7

    if-gez v7, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v6, p2}, Lcom/ksyun/media/player/f;->a(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    return-object p3

    .line 15
    :cond_9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ksyun/media/player/f;

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ksyun/media/player/f;

    .line 17
    iget p5, p4, Lcom/ksyun/media/player/f;->j:I

    iget p6, p2, Lcom/ksyun/media/player/f;->j:I

    if-le p5, p6, :cond_a

    move-object p2, p4

    goto :goto_4

    .line 18
    :cond_b
    iget p1, p2, Lcom/ksyun/media/player/f;->j:I

    const/16 p4, 0x258

    if-ge p1, p4, :cond_c

    .line 19
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->access$400()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/ksyun/media/player/f;->i:Landroid/media/MediaCodecInfo;

    invoke-virtual {p2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p5, v0

    const-string p2, "unaccetable codec: %s"

    invoke-static {p4, p2, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 20
    :cond_c
    iget-object p1, p2, Lcom/ksyun/media/player/f;->i:Landroid/media/MediaCodecInfo;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
