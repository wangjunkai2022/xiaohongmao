.class Lcom/tangxiaolv/telegramgallery/Actionbar/b$d;
.super Lcom/tangxiaolv/telegramgallery/a;
.source "ActionBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Actionbar/b;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->e(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$d;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->u(Lcom/tangxiaolv/telegramgallery/Actionbar/b;J)J

    return-void
.end method
