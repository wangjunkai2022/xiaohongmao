.class Lcom/tangxiaolv/telegramgallery/Utils/e$n;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/tangxiaolv/telegramgallery/TL/d;

.field private c:Ljava/lang/String;

.field final synthetic d:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method private constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$n;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Utils/e$n;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$n;->a:I

    return p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Utils/e$n;)I
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$n;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$n;->a:I

    return v0
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Utils/e$n;)Lcom/tangxiaolv/telegramgallery/TL/d;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$n;->b:Lcom/tangxiaolv/telegramgallery/TL/d;

    return-object p0
.end method

.method static synthetic d(Lcom/tangxiaolv/telegramgallery/Utils/e$n;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$n;->c:Ljava/lang/String;

    return-object p0
.end method
