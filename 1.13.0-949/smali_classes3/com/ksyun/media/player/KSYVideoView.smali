.class public Lcom/ksyun/media/player/KSYVideoView;
.super Landroid/widget/FrameLayout;
.source "KSYVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/ksyun/media/player/IMediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/KSYVideoView$a;
    }
.end annotation


# static fields
.field private static final C:I = -0x1

.field private static final D:I = 0x0

.field private static final E:I = 0x1

.field private static final F:I = 0x2

.field private static final G:I = 0x3

.field private static final H:I = 0x4

.field private static final I:I = 0x5

.field private static final J:I = 0x6

.field private static final K:I = 0x7

.field protected static final c:I = 0x8


# instance fields
.field private A:Lcom/ksyun/media/player/KSYVideoView$a;

.field private B:Landroid/view/SurfaceHolder;

.field private L:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

.field private M:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

.field private N:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

.field private O:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private P:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

.field private Q:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private R:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private S:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

.field private T:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

.field protected a:Lcom/ksyun/media/player/MediaInfo;

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

.field private m:Ljava/lang/String;

.field public mCurrentState:I

.field private n:Lcom/ksyun/media/player/IMediaController;

.field private o:Lcom/ksyun/media/player/KSYMediaPlayer;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "KSYVideoView"

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->m:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->t:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->x:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/ksyun/media/player/KSYVideoView;->y:I

    .line 6
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->z:I

    .line 7
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    .line 8
    new-instance v0, Lcom/ksyun/media/player/KSYVideoView$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYVideoView$1;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->d:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 9
    new-instance v0, Lcom/ksyun/media/player/KSYVideoView$2;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYVideoView$2;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->e:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    .line 10
    new-instance v0, Lcom/ksyun/media/player/KSYVideoView$3;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYVideoView$3;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->f:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    .line 11
    new-instance v0, Lcom/ksyun/media/player/KSYVideoView$4;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYVideoView$4;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->g:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    .line 12
    new-instance v0, Lcom/ksyun/media/player/KSYVideoView$5;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYVideoView$5;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->h:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 13
    new-instance v0, Lcom/ksyun/media/player/KSYVideoView$6;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYVideoView$6;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->i:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    .line 14
    new-instance v0, Lcom/ksyun/media/player/KSYVideoView$7;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYVideoView$7;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->j:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 15
    new-instance v0, Lcom/ksyun/media/player/KSYVideoView$8;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYVideoView$8;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->k:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    .line 16
    new-instance v0, Lcom/ksyun/media/player/KSYVideoView$9;

    invoke-direct {v0, p0}, Lcom/ksyun/media/player/KSYVideoView$9;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->l:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    .line 17
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYVideoView;->a(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYVideoView;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/ksyun/media/player/KSYVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "KSYVideoView"

    .line 21
    iput-object p2, p0, Lcom/ksyun/media/player/KSYVideoView;->m:Ljava/lang/String;

    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p0, Lcom/ksyun/media/player/KSYVideoView;->t:Z

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/ksyun/media/player/KSYVideoView;->x:Z

    const/4 p3, -0x1

    .line 24
    iput p3, p0, Lcom/ksyun/media/player/KSYVideoView;->y:I

    .line 25
    iput p2, p0, Lcom/ksyun/media/player/KSYVideoView;->z:I

    .line 26
    iput p2, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    .line 27
    new-instance p2, Lcom/ksyun/media/player/KSYVideoView$1;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYVideoView$1;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYVideoView;->d:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 28
    new-instance p2, Lcom/ksyun/media/player/KSYVideoView$2;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYVideoView$2;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYVideoView;->e:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    .line 29
    new-instance p2, Lcom/ksyun/media/player/KSYVideoView$3;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYVideoView$3;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYVideoView;->f:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    .line 30
    new-instance p2, Lcom/ksyun/media/player/KSYVideoView$4;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYVideoView$4;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYVideoView;->g:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    .line 31
    new-instance p2, Lcom/ksyun/media/player/KSYVideoView$5;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYVideoView$5;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYVideoView;->h:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 32
    new-instance p2, Lcom/ksyun/media/player/KSYVideoView$6;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYVideoView$6;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYVideoView;->i:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    .line 33
    new-instance p2, Lcom/ksyun/media/player/KSYVideoView$7;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYVideoView$7;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYVideoView;->j:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 34
    new-instance p2, Lcom/ksyun/media/player/KSYVideoView$8;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYVideoView$8;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYVideoView;->k:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    .line 35
    new-instance p2, Lcom/ksyun/media/player/KSYVideoView$9;

    invoke-direct {p2, p0}, Lcom/ksyun/media/player/KSYVideoView$9;-><init>(Lcom/ksyun/media/player/KSYVideoView;)V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYVideoView;->l:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    .line 36
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYVideoView;->a(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYVideoView;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/player/KSYVideoView;->p:I

    return p0
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYVideoView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView;->p:I

    return p1
.end method

.method private a()V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0, p0}, Lcom/ksyun/media/player/IMediaController;->setMediaPlayer(Lcom/ksyun/media/player/IMediaController$MediaPlayerControl;)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {v1, v0}, Lcom/ksyun/media/player/IMediaController;->setAnchorView(Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->hide()V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 5
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    new-instance v1, Lcom/ksyun/media/player/KSYVideoView$a;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/player/KSYVideoView$a;-><init>(Lcom/ksyun/media/player/KSYVideoView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    .line 7
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView;->s:I

    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView;->r:I

    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView;->q:I

    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView;->p:I

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYVideoView;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYVideoView;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/ksyun/media/player/KSYVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/player/KSYVideoView;->q:I

    return p0
.end method

.method static synthetic b(Lcom/ksyun/media/player/KSYVideoView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView;->q:I

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;

    invoke-direct {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;->build()Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->e:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnPreparedListener(Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->d:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnVideoSizeChangedListener(Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->f:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->g:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnErrorListener(Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->h:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnBufferingUpdateListener(Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->i:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnInfoListener(Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;)V

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->j:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnSeekCompleteListener(Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->k:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnLogEventListener(Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;)V

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->l:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/a;->setOnMessageListener(Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;)V

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->shouldAutoPlay(Z)V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/ksyun/media/player/KSYVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView;->r:I

    return p1
.end method

.method static synthetic c(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYVideoView$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->hide()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->show()V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/ksyun/media/player/KSYVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/player/KSYVideoView;->r:I

    return p0
.end method

.method static synthetic d(Lcom/ksyun/media/player/KSYVideoView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView;->s:I

    return p1
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->a:Lcom/ksyun/media/player/MediaInfo;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->x:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/ksyun/media/player/KSYVideoView;->y:I

    .line 6
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->z:I

    .line 7
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->b:I

    .line 8
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->s:I

    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->r:I

    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->q:I

    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->p:I

    .line 9
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->w:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->v:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->u:Z

    .line 10
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/ksyun/media/player/KSYVideoView;->t:Z

    .line 12
    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYVideoView$a;->c()V

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->shouldAutoPlay(Z)V

    .line 17
    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView;->B:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    if-eqz v1, :cond_2

    .line 19
    invoke-interface {v1, v0}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/ksyun/media/player/KSYVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/player/KSYVideoView;->s:I

    return p0
.end method

.method static synthetic e(Lcom/ksyun/media/player/KSYVideoView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView;->z:I

    return p1
.end method

.method static synthetic f(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->R:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic g(Lcom/ksyun/media/player/KSYVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/player/KSYVideoView;->x:Z

    return p0
.end method

.method static synthetic h(Lcom/ksyun/media/player/KSYVideoView;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYVideoView;->z:I

    return p0
.end method

.method static synthetic i(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->M:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic j(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaController;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    return-object p0
.end method

.method static synthetic k(Lcom/ksyun/media/player/KSYVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/player/KSYVideoView;->t:Z

    return p0
.end method

.method static synthetic l(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->L:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic m(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->N:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic n(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->Q:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic o(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/KSYMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    return-object p0
.end method

.method static synthetic p(Lcom/ksyun/media/player/KSYVideoView;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYVideoView;->y:I

    return p0
.end method

.method static synthetic q(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->P:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic r(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->O:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic s(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->S:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    return-object p0
.end method

.method static synthetic t(Lcom/ksyun/media/player/KSYVideoView;)Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYVideoView;->T:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    return-object p0
.end method


# virtual methods
.method public addVideoRawBuffer([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->addVideoRawBuffer([B)V

    :cond_0
    return-void
.end method

.method public bufferEmptyCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->deselectTrack(I)V

    :cond_0
    return-void
.end method

.method public getAudioCachedBytes()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView;->b:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferTimeMax()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->a:Lcom/ksyun/media/player/MediaInfo;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getMediaInfo()Lcom/ksyun/media/player/MediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->a:Lcom/ksyun/media/player/MediaInfo;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->a:Lcom/ksyun/media/player/MediaInfo;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->a:Lcom/ksyun/media/player/MediaInfo;

    return-object v0
.end method

.method public getMediaMeta()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenShot()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/ksyun/media/player/KSYVideoView;->x:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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

    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView;->q:I

    return v0
.end method

.method public getVideoOutputFramesPerSecond()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView;->p:I

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYVideoView;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

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
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYVideoView;->start()V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

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
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYVideoView;->c()V

    goto :goto_4

    .line 6
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYVideoView;->pause()V

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->show()V

    :cond_6
    return v0

    .line 9
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    invoke-virtual {p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 10
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYVideoView;->pause()V

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->show()V

    goto :goto_3

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYVideoView;->start()V

    .line 13
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView;->p:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView;->q:I

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    if-nez v0, :cond_2

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 10
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_3

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_5

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYVideoView$a;->b()I

    move-result v0

    if-le v0, p2, :cond_4

    goto :goto_1

    :cond_4
    move p2, v0

    goto :goto_1

    :cond_5
    if-ne v2, v3, :cond_7

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYVideoView$a;->a()I

    move-result v0

    if-le v0, p1, :cond_6

    goto :goto_1

    :cond_6
    move p1, v0

    goto :goto_1

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYVideoView$a;->a()I

    move-result v0

    .line 14
    iget-object v2, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    invoke-virtual {v2}, Lcom/ksyun/media/player/KSYVideoView$a;->b()I

    move-result v2

    if-le v0, p1, :cond_8

    goto :goto_0

    :cond_8
    move p1, v0

    :goto_0
    if-le v2, p2, :cond_9

    goto :goto_1

    :cond_9
    move p2, v2

    .line 15
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 16
    iget p1, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    if-ne p1, v1, :cond_a

    iget-boolean p1, p0, Lcom/ksyun/media/player/KSYVideoView;->t:Z

    if-eqz p1, :cond_a

    .line 17
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYVideoView;->start()V

    :cond_a
    return-void

    .line 18
    :cond_b
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 19
    iget p1, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    if-ne p1, v1, :cond_c

    iget-boolean p1, p0, Lcom/ksyun/media/player/KSYVideoView;->t:Z

    if-eqz p1, :cond_c

    .line 20
    invoke-virtual {p0}, Lcom/ksyun/media/player/KSYVideoView;->start()V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYVideoView;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYVideoView;->c()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYVideoView;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYVideoView;->c()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->pause()V

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->onPause()V

    :cond_0
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    :cond_0
    return-void
.end method

.method public reload(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->w:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->v:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->u:Z

    .line 2
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->b:I

    const/4 v1, 0x5

    .line 3
    iput v1, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->reload(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1, v0}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public reload(Ljava/lang/String;ZLcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;)V
    .locals 3

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->w:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->v:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->u:Z

    .line 11
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->b:I

    const/4 v1, 0x5

    .line 12
    iput v1, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    if-eqz p2, :cond_0

    .line 13
    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v1, v0}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->reload(Ljava/lang/String;ZLcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;)V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->reset()V

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYVideoView;->d()V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public seekTo(JZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->seekTo(JZ)V

    :cond_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->selectTrack(I)V

    :cond_0
    return-void
.end method

.method public setBufferSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setBufferSize(I)V

    :cond_0
    return-void
.end method

.method public setBufferTimeMax(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setBufferTimeMax(F)V

    :cond_0
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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

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

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 10
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

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 12
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
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/lang/String;)V

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

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 8
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

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDataSource(Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setDecodeMode(Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDecodeMode(Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;)V

    :cond_0
    return-void
.end method

.method public setDeinterlaceMode(Lcom/ksyun/media/player/KSYMediaPlayer$KSYDeinterlaceMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDeinterlaceMode(Lcom/ksyun/media/player/KSYMediaPlayer$KSYDeinterlaceMode;)V

    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setMediaController(Lcom/ksyun/media/player/IMediaController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->hide()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYVideoView;->a()V

    return-void
.end method

.method public setMirror(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setMirror(Z)Z

    :cond_1
    return-void
.end method

.method public setOnAudioPCMAvailableListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOnAudioPCMAvailableListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;)V

    :cond_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->Q:Lcom/ksyun/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->L:Lcom/ksyun/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->N:Lcom/ksyun/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->P:Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnLogEventListener(Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->S:Lcom/ksyun/media/player/IMediaPlayer$OnLogEventListener;

    return-void
.end method

.method public setOnMessageListener(Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->T:Lcom/ksyun/media/player/IMediaPlayer$OnMessageListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->M:Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->O:Lcom/ksyun/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->R:Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setOption(ILjava/lang/String;J)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOption(ILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public setOption(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/ksyun/media/player/KSYMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPlayableRanges(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ksyun/media/player/KSYMediaPlayer;->setPlayableRanges(JJ)V

    :cond_0
    return-void
.end method

.method public setPlayerMute(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setPlayerMute(I)V

    :cond_0
    return-void
.end method

.method public setRotateDegree(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->x:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView;->z:I

    .line 3
    iget v0, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYVideoView$a;->b(I)Z

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setRotateDegree(I)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setRotation(F)V
    .locals 0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/ksyun/media/player/KSYVideoView;->setRotateDegree(I)Z

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setScreenOnWhilePlaying(Z)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setTimeout(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setTimeout(II)V

    :cond_0
    return-void
.end method

.method public setVideoOffset(FF)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVideoOffset(FF)V

    :cond_1
    return-void
.end method

.method public setVideoRawDataListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVideoRawDataListener(Lcom/ksyun/media/player/KSYMediaPlayer$OnVideoRawDataListener;)V

    :cond_0
    return-void
.end method

.method public setVideoRenderingState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVideoRenderingState(I)V

    :cond_0
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ksyun/media/player/KSYVideoView;->y:I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYVideoView$a;->a(I)V

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/player/KSYMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public shouldAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYVideoView;->t:Z

    return-void
.end method

.method public softReset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->softReset()V

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYVideoView;->d()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->start()V

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->onStart()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->stop()V

    :cond_0
    const/4 v0, 0x7

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/KSYVideoView;->mCurrentState:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->u:Z

    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYVideoView;->w:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->A:Lcom/ksyun/media/player/KSYVideoView$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->B:Landroid/view/SurfaceHolder;

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->o:Lcom/ksyun/media/player/KSYMediaPlayer;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/player/KSYVideoView;->B:Landroid/view/SurfaceHolder;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/player/KSYVideoView;->n:Lcom/ksyun/media/player/IMediaController;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/ksyun/media/player/IMediaController;->hide()V

    :cond_1
    return-void
.end method
