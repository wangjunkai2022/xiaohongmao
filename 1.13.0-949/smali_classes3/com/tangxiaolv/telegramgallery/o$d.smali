.class Lcom/tangxiaolv/telegramgallery/o$d;
.super Lcom/tangxiaolv/telegramgallery/a;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o;->S0(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/util/List;ILcom/tangxiaolv/telegramgallery/o$b0;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$d;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    new-instance p1, Lcom/tangxiaolv/telegramgallery/o$d$a;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/o$d$a;-><init>(Lcom/tangxiaolv/telegramgallery/o$d;)V

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    return-void
.end method
