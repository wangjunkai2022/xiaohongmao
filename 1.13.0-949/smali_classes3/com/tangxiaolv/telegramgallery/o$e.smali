.class Lcom/tangxiaolv/telegramgallery/o$e;
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
.field final synthetic a:Landroid/animation/AnimatorSet;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$e;->b:Lcom/tangxiaolv/telegramgallery/o;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/o$e;->a:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [I

    sget v2, Lcom/tangxiaolv/telegramgallery/Utils/h;->j:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/tangxiaolv/telegramgallery/Utils/h;->k:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lcom/tangxiaolv/telegramgallery/Utils/h;->n:I

    const/4 v4, 0x2

    aput v2, v1, v4

    sget v2, Lcom/tangxiaolv/telegramgallery/Utils/h;->m:I

    const/4 v4, 0x3

    aput v2, v1, v4

    sget v2, Lcom/tangxiaolv/telegramgallery/Utils/h;->o:I

    const/4 v4, 0x4

    aput v2, v1, v4

    .line 2
    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/h;->g([I)V

    .line 3
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tangxiaolv/telegramgallery/Utils/h;->h(Z)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$e;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
