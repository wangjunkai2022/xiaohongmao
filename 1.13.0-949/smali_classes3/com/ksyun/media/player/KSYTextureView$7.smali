.class Lcom/ksyun/media/player/KSYTextureView$7;
.super Ljava/lang/Object;
.source "KSYTextureView.java"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYTextureView;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/KSYTextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/ksyun/media/player/IMediaPlayer;II)Z
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_7

    const/16 v3, 0x2711

    if-eq p2, v3, :cond_4

    const v3, 0xc351

    if-eq p2, v3, :cond_0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0, v1}, Lcom/ksyun/media/player/KSYTextureView;->d(Lcom/ksyun/media/player/KSYTextureView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->n(Lcom/ksyun/media/player/KSYTextureView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->o(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    move-result-object v0

    sget-object v1, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;->KSY_DECODE_MODE_SOFTWARE:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->p(Lcom/ksyun/media/player/KSYTextureView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->q(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0, v2}, Lcom/ksyun/media/player/KSYTextureView;->e(Lcom/ksyun/media/player/KSYTextureView;Z)Z

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->q(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;J)J

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->q(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v0

    sget-object v1, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;->KSY_DECODE_MODE_AUTO:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setDecodeMode(Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;)V

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->q(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v1}, Lcom/ksyun/media/player/KSYTextureView;->n(Lcom/ksyun/media/player/KSYTextureView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->reload(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 8
    :pswitch_1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0, v2}, Lcom/ksyun/media/player/KSYTextureView;->d(Lcom/ksyun/media/player/KSYTextureView;Z)Z

    goto/16 :goto_2

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v3}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYTextureView$a;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setVisibility(I)V

    .line 10
    iget-object v3, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v3, v2}, Lcom/ksyun/media/player/KSYTextureView;->c(Lcom/ksyun/media/player/KSYTextureView;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/ksyun/media/player/KSYTextureView;->b(Lcom/ksyun/media/player/KSYTextureView;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;Z)Z

    .line 11
    iget-object v3, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    iput v1, v3, Lcom/ksyun/media/player/KSYTextureView;->b:I

    .line 12
    invoke-static {v3}, Lcom/ksyun/media/player/KSYTextureView;->i(Lcom/ksyun/media/player/KSYTextureView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    iput v0, v1, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->j(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->j(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/ksyun/media/player/IMediaController;->setEnabled(Z)V

    .line 17
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->i(Lcom/ksyun/media/player/KSYTextureView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->j(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->onStart()V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->j(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksyun/media/player/IMediaController;->onPause()V

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->p(Lcom/ksyun/media/player/KSYTextureView;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->q(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->t(Lcom/ksyun/media/player/KSYTextureView;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_9

    .line 21
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->q(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v1}, Lcom/ksyun/media/player/KSYTextureView;->t(Lcom/ksyun/media/player/KSYTextureView;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/ksyun/media/player/KSYMediaPlayer;->seekTo(JZ)V

    goto :goto_2

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->q(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->r(Lcom/ksyun/media/player/KSYTextureView;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->q(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;->setRotateDegree(I)Z

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    iget v1, v0, Lcom/ksyun/media/player/KSYTextureView;->mCurrentState:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_6

    .line 25
    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->s(Lcom/ksyun/media/player/KSYTextureView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/player/KSYTextureView;->setRotateDegree(I)Z

    goto :goto_2

    .line 26
    :cond_6
    invoke-virtual {v0, p3}, Lcom/ksyun/media/player/KSYTextureView;->setRotateDegree(I)Z

    goto :goto_2

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYTextureView$a;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 28
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYTextureView$a;

    move-result-object v0

    iget-object v3, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v3}, Lcom/ksyun/media/player/KSYTextureView;->b(Lcom/ksyun/media/player/KSYTextureView;)I

    move-result v3

    iget-object v4, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v4}, Lcom/ksyun/media/player/KSYTextureView;->c(Lcom/ksyun/media/player/KSYTextureView;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/ksyun/media/player/KSYTextureView$a;->a(II)V

    .line 29
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYTextureView$a;

    move-result-object v0

    iget-object v3, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v3}, Lcom/ksyun/media/player/KSYTextureView;->d(Lcom/ksyun/media/player/KSYTextureView;)I

    move-result v3

    iget-object v4, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v4}, Lcom/ksyun/media/player/KSYTextureView;->e(Lcom/ksyun/media/player/KSYTextureView;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/ksyun/media/player/KSYTextureView$a;->b(II)V

    .line 30
    :cond_8
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->f(Lcom/ksyun/media/player/KSYTextureView;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ksyun/media/player/KSYTextureView;->setVideoScalingMode(I)V

    .line 31
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->a(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/KSYTextureView$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 32
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->u(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 33
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$7;->a:Lcom/ksyun/media/player/KSYTextureView;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYTextureView;->u(Lcom/ksyun/media/player/KSYTextureView;)Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;->onInfo(Lcom/ksyun/media/player/IMediaPlayer;II)Z

    :cond_a
    return v2

    :pswitch_data_0
    .packed-switch 0xa028
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
