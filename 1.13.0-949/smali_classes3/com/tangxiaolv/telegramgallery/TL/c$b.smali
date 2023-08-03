.class public Lcom/tangxiaolv/telegramgallery/TL/c$b;
.super Lcom/tangxiaolv/telegramgallery/TL/c;
.source "DocumentAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static n:I = -0x67ad063a


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/c;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->h:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->i:Z

    .line 3
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->e:I

    .line 4
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->h:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->k(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->j:Ljava/lang/String;

    .line 6
    :cond_1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->k(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->k:Ljava/lang/String;

    .line 8
    :cond_2
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->d(Z)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->l:[B

    :cond_3
    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 1

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/TL/c$b;->n:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 2
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->h:I

    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->h:I

    and-int/lit16 v0, v0, -0x401

    :goto_0
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->h:I

    .line 3
    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 4
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->e:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 5
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->x(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->x(Ljava/lang/String;)V

    .line 9
    :cond_2
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->l:[B

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->p([B)V

    :cond_3
    return-void
.end method
