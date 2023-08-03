.class Lcom/tangxiaolv/telegramgallery/Actionbar/b$g;
.super Lcom/tangxiaolv/telegramgallery/a;
.source "ActionBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/b;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$g;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    iput-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$g;->a:Z

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$g;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$g;->a:Z

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->r(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Z)V

    return-void
.end method
