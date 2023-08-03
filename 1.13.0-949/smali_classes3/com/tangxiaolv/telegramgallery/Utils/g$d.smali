.class public Lcom/tangxiaolv/telegramgallery/Utils/g$d;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/tangxiaolv/telegramgallery/Utils/g$k;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$k;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$k;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/tangxiaolv/telegramgallery/Utils/g$k;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->e:Ljava/util/HashMap;

    .line 4
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->a:I

    .line 5
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 7
    iput-boolean p4, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/tangxiaolv/telegramgallery/Utils/g$k;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/i;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->e:Ljava/util/HashMap;

    iget v1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
