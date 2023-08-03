.class public Lcom/tangxiaolv/telegramgallery/TL/f$b;
.super Lcom/tangxiaolv/telegramgallery/TL/f;
.source "InputEncryptedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static h:I = 0x2dc173c8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/f;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->j(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/f;->c:J

    .line 2
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/f;->e:I

    .line 3
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/TL/f;->f:I

    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 2

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/TL/f$b;->h:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 2
    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/f;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/TL/a;->w(J)V

    .line 3
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/f;->e:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 4
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/f;->f:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    return-void
.end method
