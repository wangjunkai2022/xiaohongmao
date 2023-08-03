.class public Lcom/tangxiaolv/telegramgallery/TL/l$c;
.super Lcom/tangxiaolv/telegramgallery/TL/l;
.source "PhotoSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static j:I = 0xe17e23c


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/l;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V
    .locals 3

    const-string p2, "s"

    .line 1
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/TL/a;->a()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/tangxiaolv/telegramgallery/TL/a;->k(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    const-string v2, "m"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    const-string v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :cond_0
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    .line 6
    instance-of v1, p1, Lcom/tangxiaolv/telegramgallery/TL/j;

    if-eqz v1, :cond_1

    .line 7
    move-object v1, p1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/TL/j;

    invoke-virtual {v1, v0}, Lcom/tangxiaolv/telegramgallery/TL/j;->F(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 8
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    .line 9
    instance-of p2, p1, Lcom/tangxiaolv/telegramgallery/TL/j;

    if-eqz p2, :cond_1

    .line 10
    check-cast p1, Lcom/tangxiaolv/telegramgallery/TL/j;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/j;->F(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 1

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/TL/l$c;->j:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->x(Ljava/lang/String;)V

    return-void
.end method
