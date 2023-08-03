.class Lio/github/rockerhieu/emojicon/f$e$a;
.super Ljava/lang/Object;
.source "EmojiconsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/rockerhieu/emojicon/f$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/github/rockerhieu/emojicon/f$e;


# direct methods
.method constructor <init>(Lio/github/rockerhieu/emojicon/f$e;)V
    .locals 0

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/f$e$a;->a:Lio/github/rockerhieu/emojicon/f$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/f$e$a;->a:Lio/github/rockerhieu/emojicon/f$e;

    invoke-static {v0}, Lio/github/rockerhieu/emojicon/f$e;->a(Lio/github/rockerhieu/emojicon/f$e;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/f$e$a;->a:Lio/github/rockerhieu/emojicon/f$e;

    invoke-static {v0}, Lio/github/rockerhieu/emojicon/f$e;->b(Lio/github/rockerhieu/emojicon/f$e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/github/rockerhieu/emojicon/f$e$a;->a:Lio/github/rockerhieu/emojicon/f$e;

    invoke-static {v1}, Lio/github/rockerhieu/emojicon/f$e;->a(Lio/github/rockerhieu/emojicon/f$e;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/f$e$a;->a:Lio/github/rockerhieu/emojicon/f$e;

    invoke-static {v0}, Lio/github/rockerhieu/emojicon/f$e;->b(Lio/github/rockerhieu/emojicon/f$e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/github/rockerhieu/emojicon/f$e$a;->a:Lio/github/rockerhieu/emojicon/f$e;

    invoke-static {v1}, Lio/github/rockerhieu/emojicon/f$e;->a(Lio/github/rockerhieu/emojicon/f$e;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lio/github/rockerhieu/emojicon/f$e$a;->a:Lio/github/rockerhieu/emojicon/f$e;

    invoke-static {v4}, Lio/github/rockerhieu/emojicon/f$e;->c(Lio/github/rockerhieu/emojicon/f$e;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 4
    iget-object v0, p0, Lio/github/rockerhieu/emojicon/f$e$a;->a:Lio/github/rockerhieu/emojicon/f$e;

    invoke-static {v0}, Lio/github/rockerhieu/emojicon/f$e;->d(Lio/github/rockerhieu/emojicon/f$e;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lio/github/rockerhieu/emojicon/f$e$a;->a:Lio/github/rockerhieu/emojicon/f$e;

    invoke-static {v1}, Lio/github/rockerhieu/emojicon/f$e;->a(Lio/github/rockerhieu/emojicon/f$e;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
