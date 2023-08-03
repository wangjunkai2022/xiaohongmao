.class Lcom/tangxiaolv/telegramgallery/o$a0;
.super Landroid/widget/FrameLayout;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a0"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/o;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$a0;->c:Lcom/tangxiaolv/telegramgallery/o;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/o$a0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/o$a0;->a:Z

    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o$a0;->a:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/o$a0;->a:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/tangxiaolv/telegramgallery/o;->Y(Lcom/tangxiaolv/telegramgallery/o;ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tangxiaolv/telegramgallery/o;->N(Lcom/tangxiaolv/telegramgallery/o;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
