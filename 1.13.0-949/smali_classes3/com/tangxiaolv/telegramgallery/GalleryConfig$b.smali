.class public Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;
.super Ljava/lang/Object;
.source "GalleryConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/GalleryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->c:Z

    const/16 v0, 0x9

    .line 3
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/tangxiaolv/telegramgallery/GalleryConfig;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->d:I

    if-lez v0, :cond_1

    move v1, v0

    :cond_1
    :goto_0
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->d:I

    .line 2
    new-instance v0, Lcom/tangxiaolv/telegramgallery/GalleryConfig;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->a:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->b:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->c:Z

    iget v6, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->d:I

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/tangxiaolv/telegramgallery/GalleryConfig;-><init>([Ljava/lang/String;Ljava/lang/String;ZILcom/tangxiaolv/telegramgallery/GalleryConfig$a;)V

    return-object v0
.end method

.method public b([Ljava/lang/String;)Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->d:I

    return-object p0
.end method

.method public e(Z)Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/GalleryConfig$b;->c:Z

    return-object p0
.end method
