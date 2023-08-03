.class public Lcom/tangxiaolv/telegramgallery/TL/l;
.super Lcom/tangxiaolv/telegramgallery/TL/m;
.source "PhotoSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/TL/l$a;,
        Lcom/tangxiaolv/telegramgallery/TL/l$c;,
        Lcom/tangxiaolv/telegramgallery/TL/l$b;
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lcom/tangxiaolv/telegramgallery/TL/d;

.field public e:I

.field public f:I

.field public g:I

.field public h:[B

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/m;-><init>()V

    return-void
.end method

.method public static f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/l;
    .locals 1

    const v0, -0x1658cb06

    if-eq p1, v0, :cond_2

    const v0, 0xe17e23c

    if-eq p1, v0, :cond_1

    const v0, 0x77bfb61b

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/l$b;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/l$b;-><init>()V

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/l$c;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/l$c;-><init>()V

    goto :goto_0

    .line 3
    :cond_2
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/l$a;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/l$a;-><init>()V

    :goto_0
    if-nez v0, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in PhotoSize"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {v0, p0, p2}, Lcom/tangxiaolv/telegramgallery/TL/m;->d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V

    :cond_5
    return-object v0
.end method
