.class public Lcom/ksyun/media/player/misc/b;
.super Ljava/lang/Object;
.source "AndroidTrackInfo.java"

# interfaces
.implements Lcom/ksyun/media/player/misc/ITrackInfo;


# instance fields
.field private final a:Landroid/media/MediaPlayer$TrackInfo;


# direct methods
.method private constructor <init>(Landroid/media/MediaPlayer$TrackInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/player/misc/b;->a:Landroid/media/MediaPlayer$TrackInfo;

    return-void
.end method

.method public static a(Landroid/media/MediaPlayer;)[Lcom/ksyun/media/player/misc/b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/ksyun/media/player/misc/b;->a([Landroid/media/MediaPlayer$TrackInfo;)[Lcom/ksyun/media/player/misc/b;

    move-result-object p0

    return-object p0
.end method

.method private static a([Landroid/media/MediaPlayer$TrackInfo;)[Lcom/ksyun/media/player/misc/b;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lcom/ksyun/media/player/misc/b;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Lcom/ksyun/media/player/misc/b;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/ksyun/media/player/misc/b;-><init>(Landroid/media/MediaPlayer$TrackInfo;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getFormat()Lcom/ksyun/media/player/misc/c;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/misc/b;->a:Landroid/media/MediaPlayer$TrackInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v1, Lcom/ksyun/media/player/misc/a;

    invoke-direct {v1, v0}, Lcom/ksyun/media/player/misc/a;-><init>(Landroid/media/MediaFormat;)V

    return-object v1
.end method

.method public getInfoInline()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/misc/b;->a:Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/misc/b;->a:Landroid/media/MediaPlayer$TrackInfo;

    if-nez v0, :cond_0

    const-string v0, "und"

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTrackType()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/misc/b;->a:Landroid/media/MediaPlayer$TrackInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/player/misc/b;->a:Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/media/MediaPlayer$TrackInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "null"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x7d

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
