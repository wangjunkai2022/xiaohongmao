.class public Lcom/tangxiaolv/telegramgallery/TL/f;
.super Lcom/tangxiaolv/telegramgallery/TL/m;
.source "InputEncryptedFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/TL/f$d;,
        Lcom/tangxiaolv/telegramgallery/TL/f$c;,
        Lcom/tangxiaolv/telegramgallery/TL/f$a;,
        Lcom/tangxiaolv/telegramgallery/TL/f$b;
    }
.end annotation


# instance fields
.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/m;-><init>()V

    return-void
.end method

.method public static f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/f;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :sswitch_0
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/f$d;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/f$d;-><init>()V

    goto :goto_0

    .line 2
    :sswitch_1
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/f$a;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/f$a;-><init>()V

    goto :goto_0

    .line 3
    :sswitch_2
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/f$b;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/f$b;-><init>()V

    goto :goto_0

    .line 4
    :sswitch_3
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/f$c;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/f$c;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in InputEncryptedFile"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p0, p2}, Lcom/tangxiaolv/telegramgallery/TL/m;->d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1837c364 -> :sswitch_3
        0x2dc173c8 -> :sswitch_2
        0x5a17b5e5 -> :sswitch_1
        0x64bd0306 -> :sswitch_0
    .end sparse-switch
.end method
