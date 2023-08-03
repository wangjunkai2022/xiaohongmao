.class public Lio/github/rockerhieu/emojicon/f$e;
.super Ljava/lang/Object;
.source "EmojiconsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/rockerhieu/emojicon/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I

.field private final c:I

.field private final d:Landroid/view/View$OnClickListener;

.field private e:Ljava/lang/Runnable;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(IILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/github/rockerhieu/emojicon/f$e;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, Lio/github/rockerhieu/emojicon/f$e$a;

    invoke-direct {v0, p0}, Lio/github/rockerhieu/emojicon/f$e$a;-><init>(Lio/github/rockerhieu/emojicon/f$e;)V

    iput-object v0, p0, Lio/github/rockerhieu/emojicon/f$e;->e:Ljava/lang/Runnable;

    if-eqz p3, :cond_1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 4
    iput p1, p0, Lio/github/rockerhieu/emojicon/f$e;->b:I

    .line 5
    iput p2, p0, Lio/github/rockerhieu/emojicon/f$e;->c:I

    .line 6
    iput-object p3, p0, Lio/github/rockerhieu/emojicon/f$e;->d:Landroid/view/View$OnClickListener;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative interval"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null runnable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lio/github/rockerhieu/emojicon/f$e;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lio/github/rockerhieu/emojicon/f$e;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lio/github/rockerhieu/emojicon/f$e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lio/github/rockerhieu/emojicon/f$e;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lio/github/rockerhieu/emojicon/f$e;)I
    .locals 0

    iget p0, p0, Lio/github/rockerhieu/emojicon/f$e;->c:I

    return p0
.end method

.method static synthetic d(Lio/github/rockerhieu/emojicon/f$e;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lio/github/rockerhieu/emojicon/f$e;->d:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Lio/github/rockerhieu/emojicon/f$e;->a:Landroid/os/Handler;

    iget-object p2, p0, Lio/github/rockerhieu/emojicon/f$e;->f:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/github/rockerhieu/emojicon/f$e;->f:Landroid/view/View;

    return v0

    .line 4
    :cond_1
    iput-object p1, p0, Lio/github/rockerhieu/emojicon/f$e;->f:Landroid/view/View;

    .line 5
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/f$e;->a:Landroid/os/Handler;

    iget-object v1, p0, Lio/github/rockerhieu/emojicon/f$e;->e:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/f$e;->a:Landroid/os/Handler;

    iget-object v1, p0, Lio/github/rockerhieu/emojicon/f$e;->e:Ljava/lang/Runnable;

    iget-object v2, p0, Lio/github/rockerhieu/emojicon/f$e;->f:Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v5, p0, Lio/github/rockerhieu/emojicon/f$e;->b:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 7
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/f$e;->d:Landroid/view/View$OnClickListener;

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return v0
.end method
