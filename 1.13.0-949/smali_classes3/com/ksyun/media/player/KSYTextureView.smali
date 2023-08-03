.class public Lcom/ksyun/media/player/KSYTextureView;
.super Landroid/widget/FrameLayout;
.source "KSYTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/ksyun/media/player/IMediaController$MediaPlayerControl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/KSYTextureView$a;
    }
.end annotation


# static fields
.field private static final I:I = -0x1

.field private static final J:I = 0x0

.field private static final K:I = 0x1

.field private static final L:I = 0x2

.field private static final M:I = 0x3

.field private static final N:I = 0x4

.field private static final O:I = 0x5

.field private static final P:I = 0x6

.field private static final Q:I = 0x7

.field protected static final c:I = 0x8


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

.field private F:Z

.field private G:Ljava/lang/String;

.field private H:J

.field private R:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

.field private S:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

.field private T:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

.field private U:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private V:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

.field private W:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field protected a:Lcom/ksyun/media/player/MediaInfo;

.field private aa:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private ab:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

.field private ac:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

.field private ad:Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;

.field protected b:I

.field d:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field e:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

.field protected final f:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

.field protected final g:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

.field protected final h:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field protected final i:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

.field protected final j:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

.field protected final k:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

.field protected final l:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

.field protected m:Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;

.field public mCurrentState:I

.field private n:Lcom/ksyun/media/player/KSYTextureView$a;

.field private o:Lcom/ksyun/media/player/IMediaController;

.field private p:Lcom/ksyun/media/player/KSYMediaPlayer;

.field private q:Landroid/graphics/SurfaceTexture;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/ksyun/media/player/KSYTextureView;->v:I

    .line 4
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYTextureView;->w:Z

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/ksyun/media/player/KSYTextureView;->x:Z

    .line 6
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYTextureView;->y:Z

    .line 7
    iput-boolean v2, p0, Lcom/ksyun/media/player/KSYTextureView;->C:Z

    .line 8
    iput v2, p0, Lcom/ksyun/media/player/KSYTextureView;->D:I

    .line 9
    sget-object v2, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;->KSY_DECODE_MODE_SOFTWARE:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    iput-object v2, p0, Lcom/ksyun/media/player/KSYTextureView;->E:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    .line 10
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYTextureView;->F:Z

    .line 11
    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->G:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 12
    iput-wide v2, p0, Lcom/ksyun/media/player/KSYTextureView;->H:J

    .line 13
    iput v1, p0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    .line 14
    new-instance v0, Lcom/ksyun/media/player/KSYTextureView$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYTextureView$1;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->d:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 15
    new-instance v0, Lcom/ksyun/media/player/KSYTextureView$3;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYTextureView$3;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->e:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    .line 16
    new-instance v0, Lcom/ksyun/media/player/KSYTextureView$4;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYTextureView$4;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->f:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    .line 17
    new-instance v0, Lcom/ksyun/media/player/KSYTextureView$5;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYTextureView$5;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->g:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    .line 18
    new-instance v0, Lcom/ksyun/media/player/KSYTextureView$6;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYTextureView$6;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->h:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 19
    new-instance v0, Lcom/ksyun/media/player/KSYTextureView$7;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYTextureView$7;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->i:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    .line 20
    new-instance v0, Lcom/ksyun/media/player/KSYTextureView$8;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYTextureView$8;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->j:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 21
    new-instance v0, Lcom/ksyun/media/player/KSYTextureView$9;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYTextureView$9;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->k:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    .line 22
    new-instance v0, Lcom/ksyun/media/player/KSYTextureView$10;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYTextureView$10;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->l:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    .line 23
    new-instance v0, Lcom/ksyun/media/player/KSYTextureView$2;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYTextureView$2;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->m:Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;

    .line 24
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYTextureView;->a(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYTextureView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/ksyun/media/player/KSYTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 28
    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    const/4 p3, 0x0

    .line 29
    iput p3, p0, Lcom/ksyun/media/player/KSYTextureView;->v:I

    .line 30
    iput-boolean p3, p0, Lcom/ksyun/media/player/KSYTextureView;->w:Z

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->x:Z

    .line 32
    iput-boolean p3, p0, Lcom/ksyun/media/player/KSYTextureView;->y:Z

    .line 33
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->C:Z

    .line 34
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->D:I

    .line 35
    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;->KSY_DECODE_MODE_SOFTWARE:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->E:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    .line 36
    iput-boolean p3, p0, Lcom/ksyun/media/player/KSYTextureView;->F:Z

    .line 37
    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->G:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/ksyun/media/player/KSYTextureView;->H:J

    .line 39
    iput p3, p0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    .line 40
    new-instance p2, Lcom/ksyun/media/player/KSYTextureView$1;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYTextureView$1;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->d:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 41
    new-instance p2, Lcom/ksyun/media/player/KSYTextureView$3;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYTextureView$3;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->e:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    .line 42
    new-instance p2, Lcom/ksyun/media/player/KSYTextureView$4;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYTextureView$4;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->f:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    .line 43
    new-instance p2, Lcom/ksyun/media/player/KSYTextureView$5;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYTextureView$5;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->g:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    .line 44
    new-instance p2, Lcom/ksyun/media/player/KSYTextureView$6;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYTextureView$6;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->h:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 45
    new-instance p2, Lcom/ksyun/media/player/KSYTextureView$7;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYTextureView$7;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->i:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    .line 46
    new-instance p2, Lcom/ksyun/media/player/KSYTextureView$8;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYTextureView$8;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->j:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 47
    new-instance p2, Lcom/ksyun/media/player/KSYTextureView$9;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYTextureView$9;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->k:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    .line 48
    new-instance p2, Lcom/ksyun/media/player/KSYTextureView$10;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYTextureView$10;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->l:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    .line 49
    new-instance p2, Lcom/ksyun/media/player/KSYTextureView$2;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYTextureView$2;-><init>(Lcom/ksyun/media/player/KSYTextureView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->m:Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;

    .line 50
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYTextureView;->a(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYTextureView;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYTextureView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView;->r:I

    return p1
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYTextureView;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ksyun/media/player/KSYTextureView;->H:J

    return-wide p1
.end method

.method private a(Lcom/ksyun/media/player/IMediaPlayer;)Landroid/graphics/Bitmap;
    .locals 11

    .line 30
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 31
    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    .line 32
    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    move v10, v0

    move v0, p1

    move p1, v10

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_5

    if-nez p1, :cond_2

    goto :goto_1

    .line 33
    :cond_2
    iget-object v2, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    .line 34
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 36
    div-int/lit8 v1, p1, 0x2

    .line 37
    div-int/lit8 v3, v0, 0x2

    int-to-float p1, p1

    int-to-float v4, v6

    div-float/2addr p1, v4

    int-to-float v0, v0

    int-to-float v4, v7

    div-float/2addr v0, v4

    .line 38
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v1

    int-to-float v3, v3

    .line 39
    invoke-virtual {v8, p1, v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    .line 40
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    .line 42
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYTextureView$a;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    if-eqz v0, :cond_1

    .line 24
    invoke-interface {v0, p0}, Lcom/ksyun/media/player/IMediaController;->setMediaPlayer(Lcom/ksyun/media/player/IMediaController$MediaPlayerControl;)V

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {v1, v0}, Lcom/ksyun/media/player/IMediaController;->setAnchorView(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    .line 29
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->hide()V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 6
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    new-instance v1, Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/player/KSYTextureView$a;-><init>(Lcom/ksyun/media/player/KSYTextureView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    .line 8
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {p1, p0}, Lcom/ksyun/media/player/KSYTextureView$a;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/KSYTextureView$a;->b(Z)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1, v1}, Lcom/ksyun/media/player/KSYTextureView$a;->b(Z)V

    .line 17
    :cond_1
    :goto_0
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->u:I

    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->t:I

    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->s:I

    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->r:I

    .line 18
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->B:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->A:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->z:Z

    .line 19
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYTextureView;->x:Z

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 21
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYTextureView;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYTextureView;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/ksyun/media/player/KSYTextureView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/player/KSYTextureView;->r:I

    return p0
.end method

.method static synthetic b(Lcom/ksyun/media/player/KSYTextureView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView;->s:I

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;

    invoke-direct {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;->build()Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->e:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnPreparedListener(Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->d:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnVideoSizeChangedListener(Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->f:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->g:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnErrorListener(Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->h:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnBufferingUpdateListener(Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->i:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnInfoListener(Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;)V

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->j:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnSeekCompleteListener(Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->k:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnLogEventListener(Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;)V

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->l:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnMessageListener(Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;)V

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->m:Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnTimedTextListener(Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;)V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/ksyun/media/player/KSYTextureView;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYTextureView;->A:Z

    return p1
.end method

.method static synthetic c(Lcom/ksyun/media/player/KSYTextureView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/player/KSYTextureView;->s:I

    return p0
.end method

.method static synthetic c(Lcom/ksyun/media/player/KSYTextureView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView;->t:I

    return p1
.end method

.method private c()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->hide()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->show()V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/ksyun/media/player/KSYTextureView;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYTextureView;->B:Z

    return p1
.end method

.method static synthetic d(Lcom/ksyun/media/player/KSYTextureView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/player/KSYTextureView;->t:I

    return p0
.end method

.method static synthetic d(Lcom/ksyun/media/player/KSYTextureView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView;->u:I

    return p1
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->v:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->a:Lcom/ksyun/media/player/MediaInfo;

    .line 6
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->w:Z

    .line 7
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->y:Z

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/ksyun/media/player/KSYTextureView;->D:I

    .line 9
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->u:I

    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->t:I

    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->s:I

    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->r:I

    .line 10
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->B:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->A:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->z:Z

    .line 11
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYTextureView;->x:Z

    .line 12
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    .line 13
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2, v2}, Lcom/ksyun/media/player/KSYTextureView$a;->a(FF)V

    .line 15
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v1, v0, v0}, Lcom/ksyun/media/player/KSYTextureView$a;->a(II)V

    .line 16
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v1, v0, v0}, Lcom/ksyun/media/player/KSYTextureView$a;->b(II)V

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v1, :cond_1

    .line 18
    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    if-eqz v1, :cond_2

    .line 20
    invoke-interface {v1, v0}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/ksyun/media/player/KSYTextureView;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYTextureView;->C:Z

    return p1
.end method

.method static synthetic e(Lcom/ksyun/media/player/KSYTextureView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/player/KSYTextureView;->u:I

    return p0
.end method

.method static synthetic e(Lcom/ksyun/media/player/KSYTextureView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYTextureView;->F:Z

    return p1
.end method

.method static synthetic f(Lcom/ksyun/media/player/KSYTextureView;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYTextureView;->D:I

    return p0
.end method

.method static synthetic g(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->aa:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic h(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->S:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic i(Lcom/ksyun/media/player/KSYTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/player/KSYTextureView;->x:Z

    return p0
.end method

.method static synthetic j(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaController;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    return-object p0
.end method

.method static synthetic k(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->R:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic l(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->T:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic m(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->W:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic n(Lcom/ksyun/media/player/KSYTextureView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->G:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->E:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    return-object p0
.end method

.method static synthetic p(Lcom/ksyun/media/player/KSYTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/player/KSYTextureView;->F:Z

    return p0
.end method

.method static synthetic q(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    return-object p0
.end method

.method static synthetic r(Lcom/ksyun/media/player/KSYTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/player/KSYTextureView;->C:Z

    return p0
.end method

.method static synthetic s(Lcom/ksyun/media/player/KSYTextureView;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYTextureView;->v:I

    return p0
.end method

.method static synthetic t(Lcom/ksyun/media/player/KSYTextureView;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/player/KSYTextureView;->H:J

    return-wide v0
.end method

.method static synthetic u(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->V:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic v(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->U:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic w(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->ab:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    return-object p0
.end method

.method static synthetic x(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->ac:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    return-object p0
.end method

.method static synthetic y(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYTextureView;->ad:Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;

    return-object p0
.end method


# virtual methods
.method public addTimedTextSource(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->addTimedTextSource(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addVideoRawBuffer([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->addVideoRawBuffer([B)V

    :cond_0
    return-void
.end method

.method public bufferEmptyCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->bufferEmptyCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bufferEmptyDuration()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->bufferEmptyDuration()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public deselectTrack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->deselectTrack(I)V

    :cond_0
    return-void
.end method

.method public getAudioCachedBytes()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getAudioCachedBytes()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAudioCachedDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getAudioCachedDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAudioCachedPackets()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getAudioCachedPackets()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView;->b:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferTimeMax()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getBufferTimeMax()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getClientIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getClientIP()Ljava/lang/String;

    :cond_0
    const-string v0, "N/A"

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentPts()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getCurrentPts()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecodedDataSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getDecodedDataSize()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDownloadDataSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getDownloadDataSize()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocalDnsIP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getLocalDnsIP()Ljava/lang/String;

    :cond_0
    const-string v0, "N/A"

    return-object v0
.end method

.method public getMediaInfo()Lcom/ksyun/media/player/MediaInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->a:Lcom/ksyun/media/player/MediaInfo;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getMediaInfo()Lcom/ksyun/media/player/MediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->a:Lcom/ksyun/media/player/MediaInfo;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->a:Lcom/ksyun/media/player/MediaInfo;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->a:Lcom/ksyun/media/player/MediaInfo;

    return-object v0
.end method

.method public getMediaMeta()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaPlayer()Lcom/ksyun/media/player/KSYMediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    return-object v0
.end method

.method public getScreenShot()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/IMediaPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->getSelectedTrack(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "N/A"

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getSpeed()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getStreamQosInfo()Lcom/ksyun/media/player/misc/KSYQosInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getStreamQosInfo()Lcom/ksyun/media/player/misc/KSYQosInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreamStartTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getStreamStartTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTrackInfo()[Lcom/ksyun/media/player/misc/KSYTrackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getTrackInfo()[Lcom/ksyun/media/player/misc/KSYTrackInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "N/A"

    return-object v0
.end method

.method public getVideoCachedBytes()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVideoCachedBytes()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoCachedDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVideoCachedDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoCachedPackets()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVideoCachedPackets()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoDecodeFramesPerSecond()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVideoDecodeFramesPerSecond()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoDecoder()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVideoDecoder()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView;->s:I

    return v0
.end method

.method public getVideoOutputFramesPerSecond()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVideoOutputFramesPerSecond()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoScaleRatio()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYTextureView$a;->a()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView;->r:I

    return v0
.end method

.method public isComeBackFromShare()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->y:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->isLooping()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->isPlayable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveVideo(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYTextureView$a;->b(FF)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/KSYTextureView$a;->b(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/KSYTextureView$a;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYTextureView;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    if-eqz v1, :cond_9

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYTextureView;->start()V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->hide()V

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x56

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYTextureView;->c()V

    goto :goto_4

    .line 6
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYTextureView;->pause()V

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->show()V

    :cond_6
    return v0

    .line 9
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 10
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYTextureView;->pause()V

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->show()V

    goto :goto_3

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYTextureView;->start()V

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->hide()V

    :goto_3
    return v0

    .line 14
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView;->r:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView;->s:I

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-nez v0, :cond_1

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->measureChildren(II)V

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_5

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYTextureView$a;->c()I

    move-result v0

    .line 10
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView;->v:I

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYTextureView$a;->b()I

    move-result v0

    :cond_3
    if-le v0, p2, :cond_4

    goto :goto_1

    :cond_4
    move p2, v0

    goto :goto_1

    :cond_5
    if-ne v1, v2, :cond_8

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYTextureView$a;->b()I

    move-result v0

    .line 13
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView;->v:I

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYTextureView$a;->c()I

    move-result v0

    :cond_6
    if-le v0, p1, :cond_7

    goto :goto_1

    :cond_7
    move p1, v0

    goto :goto_1

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYTextureView$a;->b()I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYTextureView$a;->c()I

    move-result v1

    .line 17
    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView;->v:I

    div-int/lit8 v2, v2, 0x5a

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9

    .line 18
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYTextureView$a;->b()I

    move-result v1

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYTextureView$a;->c()I

    move-result v0

    :cond_9
    if-le v0, p1, :cond_a

    goto :goto_0

    :cond_a
    move p1, v0

    :goto_0
    if-le v1, p2, :cond_b

    goto :goto_1

    :cond_b
    move p2, v1

    .line 20
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void

    .line 21
    :cond_c
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYTextureView;->isComeBackFromShare()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    if-nez p2, :cond_1

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz p1, :cond_2

    .line 7
    new-instance p2, Landroid/view/Surface;

    iget-object p3, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, p3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->hide()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz p1, :cond_0

    .line 2
    iget p2, p0, Lcom/ksyun/media/player/KSYTextureView;->D:I

    invoke-virtual {p1, p2}, Lcom/ksyun/media/player/KSYTextureView$a;->b(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYTextureView;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYTextureView;->c()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYTextureView;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYTextureView;->c()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->pause()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->w:Z

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->onPause()V

    :cond_1
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->release()V

    .line 3
    iput-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    .line 5
    iput-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public reload(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->y:Z

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->B:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->A:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->z:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->w:Z

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->b:I

    const/4 v1, 0x5

    .line 4
    iput v1, p0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->reload(Ljava/lang/String;Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public reload(Ljava/lang/String;ZLcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;)V
    .locals 2

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->y:Z

    .line 10
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->B:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->A:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->z:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->w:Z

    .line 11
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->b:I

    const/4 v1, 0x5

    .line 12
    iput v1, p0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    .line 13
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v1, v0}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->reload(Ljava/lang/String;ZLcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->reset()V

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYTextureView;->d()V

    :cond_0
    return-void
.end method

.method public runInBackground(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYTextureView;->w:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->pause()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public runInForeground()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->q:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/ksyun/media/player/KSYTextureView;->setComeBackFromShare(Z)V

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public seekTo(JZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->seekTo(JZ)V

    :cond_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->selectTrack(I)V

    :cond_0
    return-void
.end method

.method public setBufferSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setBufferSize(I)V

    :cond_0
    return-void
.end method

.method public setBufferTimeMax(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setBufferTimeMax(F)V

    :cond_0
    return-void
.end method

.method public setComeBackFromShare(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYTextureView;->y:Z

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 9
    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView;->G:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYTextureView;->F:Z

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setDecodeMode(Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDecodeMode(Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;)V

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->E:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    :cond_0
    return-void
.end method

.method public setDeinterlaceMode(Lcom/ksyun/media/player/KSYMediaPlayer$KSYDeinterlaceMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDeinterlaceMode(Lcom/ksyun/media/player/KSYMediaPlayer$KSYDeinterlaceMode;)V

    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setMediaController(Lcom/ksyun/media/player/IMediaController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->hide()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYTextureView;->a()V

    return-void
.end method

.method public setMirror(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYTextureView$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public setOnAudioPCMAvailableListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOnAudioPCMAvailableListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;)V

    :cond_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->W:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->R:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->T:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->V:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnLogEventListener(Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->ab:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    return-void
.end method

.method public setOnMessageListener(Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->ac:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->S:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->U:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnTimedTextListener(Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->ad:Lcom/ksyun/media/player/IMediaPlayer$OnTimedTextListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView;->aa:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setOption(ILjava/lang/String;J)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOption(ILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public setOption(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPlayableRanges(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ksyun/media/player/KSYMediaPlayer;->setPlayableRanges(JJ)V

    :cond_0
    return-void
.end method

.method public setPlayerMute(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setPlayerMute(I)V

    :cond_0
    return-void
.end method

.method public setRotateDegree(I)Z
    .locals 1

    .line 1
    rem-int/lit8 v0, p1, 0x5a

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView;->v:I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz v0, :cond_1

    neg-int p1, p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYTextureView$a;->a(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setRotation(F)V
    .locals 0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/ksyun/media/player/KSYTextureView;->setRotateDegree(I)Z

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setScreenOnWhilePlaying(Z)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setTimeout(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setTimeout(II)V

    :cond_0
    return-void
.end method

.method public setVideoOffset(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYTextureView$a;->a(FF)V

    :cond_0
    return-void
.end method

.method public setVideoRawDataListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVideoRawDataListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;)V

    :cond_0
    return-void
.end method

.method public setVideoRenderingState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVideoRenderingState(I)V

    :cond_0
    return-void
.end method

.method public setVideoScaleRatio(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/ksyun/media/player/KSYTextureView$a;->a(FFF)V

    :cond_0
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->n:Lcom/ksyun/media/player/KSYTextureView$a;

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView;->D:I

    .line 3
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYTextureView$a;->b(I)V

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public shouldAutoPlay(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->shouldAutoPlay(Z)V

    .line 3
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYTextureView;->x:Z

    :cond_0
    return-void
.end method

.method public softReset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->softReset()V

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYTextureView;->d()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->start()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->w:Z

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->o:Lcom/ksyun/media/player/IMediaController;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->onStart()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView;->p:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->stop()V

    :cond_0
    const/4 v0, 0x7

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->w:Z

    .line 5
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->z:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYTextureView;->B:Z

    return-void
.end method
