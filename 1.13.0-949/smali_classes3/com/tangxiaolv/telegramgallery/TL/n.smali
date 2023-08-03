.class public Lcom/tangxiaolv/telegramgallery/TL/n;
.super Lcom/tangxiaolv/telegramgallery/TL/m;
.source "TL_upload_file.java"


# static fields
.field public static f:I = 0x96a18d5


# instance fields
.field public c:Lcom/tangxiaolv/telegramgallery/TL/o;

.field public d:I

.field public e:Lcom/tangxiaolv/telegramgallery/TL/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/m;-><init>()V

    return-void
.end method

.method public static f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/n;
    .locals 1

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/TL/n;->f:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_upload_file"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p1, Lcom/tangxiaolv/telegramgallery/TL/n;

    invoke-direct {p1}, Lcom/tangxiaolv/telegramgallery/TL/n;-><init>()V

    .line 5
    invoke-virtual {p1, p0, p2}, Lcom/tangxiaolv/telegramgallery/TL/n;->d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V

    return-object p1
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/m;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/n;->e:Lcom/tangxiaolv/telegramgallery/TL/j;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/TL/j;->H()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/n;->e:Lcom/tangxiaolv/telegramgallery/TL/j;

    :cond_1
    return-void
.end method

.method public d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/tangxiaolv/telegramgallery/TL/o;->f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/o;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/n;->c:Lcom/tangxiaolv/telegramgallery/TL/o;

    .line 2
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/n;->d:I

    .line 3
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->e(Z)Lcom/tangxiaolv/telegramgallery/TL/j;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/TL/n;->e:Lcom/tangxiaolv/telegramgallery/TL/j;

    return-void
.end method
