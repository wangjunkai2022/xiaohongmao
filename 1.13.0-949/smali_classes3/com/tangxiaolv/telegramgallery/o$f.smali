.class Lcom/tangxiaolv/telegramgallery/o$f;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o;->S0(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/util/List;ILcom/tangxiaolv/telegramgallery/o$b0;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/o$c0;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o;Lcom/tangxiaolv/telegramgallery/o$c0;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$f;->b:Lcom/tangxiaolv/telegramgallery/o;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/o$f;->a:Lcom/tangxiaolv/telegramgallery/o$c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$f;->b:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/o;->f0(Lcom/tangxiaolv/telegramgallery/o;Z)Z

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$f;->a:Lcom/tangxiaolv/telegramgallery/o$c0;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/o$c0;->a:Lcom/tangxiaolv/telegramgallery/k;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/k;->q0(ZZ)V

    return-void
.end method
