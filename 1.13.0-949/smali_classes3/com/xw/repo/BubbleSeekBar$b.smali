.class Lcom/xw/repo/BubbleSeekBar$b;
.super Ljava/lang/Object;
.source "BubbleSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xw/repo/BubbleSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xw/repo/BubbleSeekBar;


# direct methods
.method constructor <init>(Lcom/xw/repo/BubbleSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/xw/repo/BubbleSeekBar$b;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$b;->a:Lcom/xw/repo/BubbleSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xw/repo/BubbleSeekBar;->a(Lcom/xw/repo/BubbleSeekBar;Z)Z

    .line 2
    iget-object v0, p0, Lcom/xw/repo/BubbleSeekBar$b;->a:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {v0}, Lcom/xw/repo/BubbleSeekBar;->b(Lcom/xw/repo/BubbleSeekBar;)V

    return-void
.end method
