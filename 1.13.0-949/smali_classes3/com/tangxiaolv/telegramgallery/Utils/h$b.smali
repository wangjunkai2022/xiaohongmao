.class Lcom/tangxiaolv/telegramgallery/Utils/h$b;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:[Ljava/lang/Object;

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/Utils/h;


# direct methods
.method private constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/h;I[Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/h$b;->c:Lcom/tangxiaolv/telegramgallery/Utils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/h$b;->a:I

    .line 4
    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/h$b;->b:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/h;I[Ljava/lang/Object;Lcom/tangxiaolv/telegramgallery/Utils/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tangxiaolv/telegramgallery/Utils/h$b;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/h;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Utils/h$b;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/h$b;->a:I

    return p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Utils/h$b;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/h$b;->b:[Ljava/lang/Object;

    return-object p0
.end method
