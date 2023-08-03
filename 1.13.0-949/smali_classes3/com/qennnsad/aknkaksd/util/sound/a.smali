.class public Lcom/qennnsad/aknkaksd/util/sound/a;
.super Ljava/lang/Object;
.source "SoundUtils.java"


# static fields
.field private static a:Lcom/qennnsad/aknkaksd/util/sound/a;

.field private static b:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/sound/a;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/qennnsad/aknkaksd/util/sound/a;
    .locals 2

    const-class v0, Lcom/qennnsad/aknkaksd/util/sound/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/qennnsad/aknkaksd/util/sound/a;->a:Lcom/qennnsad/aknkaksd/util/sound/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/qennnsad/aknkaksd/util/sound/a;

    invoke-direct {v1}, Lcom/qennnsad/aknkaksd/util/sound/a;-><init>()V

    sput-object v1, Lcom/qennnsad/aknkaksd/util/sound/a;->a:Lcom/qennnsad/aknkaksd/util/sound/a;

    .line 3
    :cond_0
    sget-object v1, Lcom/qennnsad/aknkaksd/util/sound/a;->a:Lcom/qennnsad/aknkaksd/util/sound/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b()V
    .locals 4

    .line 1
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 3
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 5
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/util/sound/a;->b:Landroid/media/SoundPool;

    .line 7
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12002e

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 8
    sget-object v0, Lcom/qennnsad/aknkaksd/util/sound/a;->b:Landroid/media/SoundPool;

    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120027

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 9
    sget-object v0, Lcom/qennnsad/aknkaksd/util/sound/a;->b:Landroid/media/SoundPool;

    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120028

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 10
    sget-object v0, Lcom/qennnsad/aknkaksd/util/sound/a;->b:Landroid/media/SoundPool;

    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120029

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 11
    sget-object v0, Lcom/qennnsad/aknkaksd/util/sound/a;->b:Landroid/media/SoundPool;

    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12002a

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 12
    sget-object v0, Lcom/qennnsad/aknkaksd/util/sound/a;->b:Landroid/media/SoundPool;

    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12002b

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 13
    sget-object v0, Lcom/qennnsad/aknkaksd/util/sound/a;->b:Landroid/media/SoundPool;

    new-instance v1, Lcom/qennnsad/aknkaksd/util/sound/a$a;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/util/sound/a$a;-><init>(Lcom/qennnsad/aknkaksd/util/sound/a;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play_rawid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u84dd\u7259"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/qennnsad/aknkaksd/util/sound/a;->b:Landroid/media/SoundPool;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 9

    const-string v0, "SoundUtils"

    const-string v1, "play_login"

    .line 1
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/qennnsad/aknkaksd/util/sound/a;->b:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "play_login---"

    .line 3
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/qennnsad/aknkaksd/util/sound/a;->b:Landroid/media/SoundPool;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/util/sound/a;->b:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method
