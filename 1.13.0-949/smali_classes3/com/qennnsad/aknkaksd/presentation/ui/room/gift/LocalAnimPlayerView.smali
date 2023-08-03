.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;
.super Landroid/widget/RelativeLayout;
.source "LocalAnimPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$c;
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/a;

.field private i:Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;

.field private j:Landroid/os/CountDownTimer;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/view/ViewGroup;

.field private v:Landroid/view/animation/Animation;

.field private w:Lio/reactivex/disposables/c;

.field private x:F

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->B(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->B(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->B(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->B(Landroid/content/Context;)V

    return-void
.end method

.method private A(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f080610

    goto :goto_0

    :pswitch_0
    const p1, 0x7f080345

    goto :goto_0

    :pswitch_1
    const p1, 0x7f080344

    goto :goto_0

    :pswitch_2
    const p1, 0x7f080343

    goto :goto_0

    :pswitch_3
    const p1, 0x7f080342

    goto :goto_0

    :pswitch_4
    const p1, 0x7f080341

    goto :goto_0

    :pswitch_5
    const p1, 0x7f080340

    goto :goto_0

    :pswitch_6
    const p1, 0x7f08033f

    goto :goto_0

    :pswitch_7
    const p1, 0x7f08033e

    goto :goto_0

    :pswitch_8
    const p1, 0x7f08033d

    goto :goto_0

    :pswitch_9
    const p1, 0x7f08033c

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private B(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d012c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02f9

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->k:Landroid/widget/TextView;

    const v0, 0x7f0a02fb

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->l:Landroid/widget/TextView;

    const v0, 0x7f0a02fa

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->m:Landroid/widget/TextView;

    const v0, 0x7f0a02f2

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->o:Landroid/widget/ImageView;

    const v0, 0x7f0a02f1

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->n:Landroid/widget/ImageView;

    const v0, 0x7f0a02f8

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->p:Landroid/widget/ImageView;

    const v0, 0x7f0a02f4

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->q:Landroid/widget/ImageView;

    const v0, 0x7f0a02f5

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->r:Landroid/widget/ImageView;

    const v0, 0x7f0a02f6

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->s:Landroid/widget/ImageView;

    const v0, 0x7f0a02f7

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->t:Landroid/widget/ImageView;

    const v0, 0x7f0a02f3

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->u:Landroid/view/ViewGroup;

    .line 13
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->L()V

    .line 14
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->C(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getId()I

    move-result p1

    const v0, 0x7f0a043f

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->z:Z

    return-void
.end method

.method private C(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->o:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/z;->create(Lio/reactivex/c0;)Lio/reactivex/z;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/d;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)V

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/e;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/e;

    .line 5
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Ln7/g;Ln7/g;)Lio/reactivex/disposables/c;

    return-void
.end method

.method private synthetic E(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->f:Z

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->h:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/a;->a()V

    :cond_0
    return-void
.end method

.method private static synthetic F(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "View"

    const-string v1, "Animation load failed! this view may be forever unavailable!"

    invoke-static {v0, v1, p0}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic G()V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->h:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/a;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/a;->a()V

    return-void
.end method

.method private synthetic H(Ljava/lang/Long;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "View"

    const-string v2, "Filtering: currentCombo=%d"

    .line 1
    invoke-static {p1, v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->g:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private synthetic I(Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->j:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->g:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->getEffortDuration()I

    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->y(I)Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->j:Landroid/os/CountDownTimer;

    .line 6
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 7
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->getIntcombe()I

    move-result p1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->q:Landroid/widget/ImageView;

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 9
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->r:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 10
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->s:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 11
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->t:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x3e8

    const/16 v1, 0xa

    if-lt p1, v0, :cond_2

    .line 12
    div-int/lit16 v0, p1, 0x3e8

    rem-int/2addr v0, v1

    .line 13
    div-int/lit8 v2, p1, 0x64

    rem-int/2addr v2, v1

    .line 14
    div-int/lit8 v3, p1, 0xa

    rem-int/2addr v3, v1

    .line 15
    div-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    .line 16
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->q:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 17
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->r:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 18
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->s:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 19
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->t:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    if-lt p1, v0, :cond_3

    .line 20
    div-int/lit8 v0, p1, 0x64

    rem-int/2addr v0, v1

    .line 21
    div-int/lit8 v2, p1, 0xa

    rem-int/2addr v2, v1

    .line 22
    div-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    .line 23
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->q:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 24
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->r:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 25
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->s:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 26
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->t:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->z(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_3
    if-lt p1, v1, :cond_4

    .line 27
    div-int/lit8 v0, p1, 0xa

    rem-int/2addr v0, v1

    .line 28
    div-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    .line 29
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->q:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 30
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->r:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 31
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->s:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->z(Landroid/widget/ImageView;)V

    .line 32
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->t:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->z(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->q:Landroid/widget/ImageView;

    rem-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->M(Landroid/widget/ImageView;I)V

    .line 34
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->r:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->z(Landroid/widget/ImageView;)V

    .line 35
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->s:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->z(Landroid/widget/ImageView;)V

    .line 36
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->t:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->z(Landroid/widget/ImageView;)V

    .line 37
    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->p:Landroid/widget/ImageView;

    const v0, 0x7f08035b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->u:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->c:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->O(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static synthetic J(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "View"

    const-string v1, "Error while displaying combo animation!"

    invoke-static {v0, v1, p0}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private L()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->p:Landroid/widget/ImageView;

    const v1, 0x7f080610

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->o:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private M(Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->A(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private O(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->v:Landroid/view/animation/Animation;

    return-void
.end method

.method private P(Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->O(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method

.method private Q()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Combo Animation:count comboQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->g:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->w:Lio/reactivex/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->w:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    :cond_0
    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x1f4

    .line 4
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lio/reactivex/z;->interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/g;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/g;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/z;->filter(Ln7/r;)Lio/reactivex/z;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/c;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)V

    sget-object v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/f;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/f;

    .line 7
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Ln7/g;Ln7/g;)Lio/reactivex/disposables/c;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->w:Lio/reactivex/disposables/c;

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Ljava/lang/Long;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->H(Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->F(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->G()V

    return-void
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->I(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->J(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic g(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->a:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic h(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->a:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic i(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->b:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic j(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->b:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic k(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->c:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic l(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->c:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic m(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->d:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic n(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->d:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic o(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic p(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->O(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic q(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->Q()V

    return-void
.end method

.method static synthetic r(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->P(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private s(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 3
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->z:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->y:I

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getY()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    int-to-float p1, p1

    add-float/2addr v3, p1

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 5
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->z:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/qennnsad/aknkaksd/util/h1;->f(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, v2, v2, v2, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_2

    .line 8
    :cond_2
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->z:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/qennnsad/aknkaksd/util/h1;->f(Landroid/content/Context;I)I

    .line 9
    :goto_1
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->x:F

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 10
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 11
    :goto_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method private y(I)Landroid/os/CountDownTimer;
    .locals 7

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$b;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    const-wide/16 v4, 0x64

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;JJ)V

    return-object v6
.end method

.method private z(Landroid/widget/ImageView;)V
    .locals 1

    const v0, 0x7f080610

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized D(Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->g:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->w:Lio/reactivex/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->w:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->w:Lio/reactivex/disposables/c;

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->f:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->e:Z

    .line 6
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->g:Ljava/util/Queue;

    .line 7
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->L()V

    .line 8
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->s(Z)V

    .line 9
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->z:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->h:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/a;

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/b;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public N(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "View"

    const-string v4, "-----startAnim\uff1a %s-----"

    .line 1
    invoke-static {v3, v4, v1}, Lcom/qennnsad/aknkaksd/util/o0;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->s(Z)V

    .line 3
    iput-boolean v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->f:Z

    .line 4
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->e:Z

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;

    .line 6
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->i:Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;

    .line 7
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->g:Ljava/util/Queue;

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lf5/d;

    invoke-static {v3, v4}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf5/d;

    invoke-interface {v3}, Lf5/d;->c()Lf5/e;

    move-result-object v3

    .line 10
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->getGiftName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f13036c

    .line 11
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, 0x7f06001f

    invoke-static {p1, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v6, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v6, v0, v2

    const-string p1, ""

    invoke-static {v5, v4, p1, v0}, Lcom/qennnsad/aknkaksd/util/j1;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->getAvatar()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->n:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lf5/e;->g()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const v4, 0x7f0803e2

    invoke-static {p1, v0, v2, v4, v4}, Lcom/qennnsad/aknkaksd/util/img/e;->g(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->getGiftIcon()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->o:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lf5/e;->g()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->getGiftIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const v1, 0x7f080610

    const v3, 0x7f080573

    invoke-static {p1, v0, v2, v1, v3}, Lcom/qennnsad/aknkaksd/util/img/e;->e(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->a:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->P(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    int-to-float p1, p3

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->x:F

    sub-int/2addr p5, p3

    .line 3
    iput p5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->y:I

    return-void
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u(Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->h:Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/a;

    return-void
.end method

.method public v(Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;)Z
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->i:Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->canBeJoined(Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->v:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->v:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->x()V

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->K()V

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/gift/LocalAnimPlayerView;->g:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_0
    return-void
.end method
