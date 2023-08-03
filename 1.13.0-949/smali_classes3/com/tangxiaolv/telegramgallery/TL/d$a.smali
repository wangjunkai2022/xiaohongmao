.class public Lcom/tangxiaolv/telegramgallery/TL/d$a;
.super Lcom/tangxiaolv/telegramgallery/TL/d;
.source "FileLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static i:I = 0x55555554


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/d;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->c:I

    .line 2
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->j(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    .line 3
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    .line 4
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->j(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->f:J

    .line 5
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->d(Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->g:[B

    .line 6
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->d(Z)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->h:[B

    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 2

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/TL/d$a;->i:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 2
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->c:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 3
    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/TL/a;->w(J)V

    .line 4
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 5
    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->f:J

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/TL/a;->w(J)V

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->g:[B

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->p([B)V

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->h:[B

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->p([B)V

    return-void
.end method
