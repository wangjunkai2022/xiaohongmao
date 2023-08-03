.class Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/g$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/Integer;

.field final synthetic f:Lcom/tangxiaolv/telegramgallery/Utils/g$c;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/g$c;Lcom/tangxiaolv/telegramgallery/Utils/g$d;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->f:Lcom/tangxiaolv/telegramgallery/Utils/g$c;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->a:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->c:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->e:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->a:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    sput-object v0, Lcom/tangxiaolv/telegramgallery/Utils/g;->B:Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    .line 2
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/h;->E:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->f:Lcom/tangxiaolv/telegramgallery/Utils/g$c;

    iget v3, v3, Lcom/tangxiaolv/telegramgallery/Utils/g$c;->b:I

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->b:Ljava/util/ArrayList;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->c:Ljava/lang/Integer;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->d:Ljava/util/ArrayList;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$c$a;->e:Ljava/lang/Integer;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/h;->d(I[Ljava/lang/Object;)V

    return-void
.end method
