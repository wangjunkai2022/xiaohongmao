.class public Lcom/tangxiaolv/telegramgallery/TL/f$a;
.super Lcom/tangxiaolv/telegramgallery/TL/f;
.source "InputEncryptedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static h:I = 0x5a17b5e5


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
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->j(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/TL/f;->d:J

    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 2

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/TL/f$a;->h:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 2
    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/f;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/TL/a;->w(J)V

    .line 3
    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/f;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/TL/a;->w(J)V

    return-void
.end method
