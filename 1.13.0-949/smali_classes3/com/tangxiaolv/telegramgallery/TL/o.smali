.class public Lcom/tangxiaolv/telegramgallery/TL/o;
.super Lcom/tangxiaolv/telegramgallery/TL/m;
.source "storage_FileType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/TL/o$f;,
        Lcom/tangxiaolv/telegramgallery/TL/o$c;,
        Lcom/tangxiaolv/telegramgallery/TL/o$b;,
        Lcom/tangxiaolv/telegramgallery/TL/o$d;,
        Lcom/tangxiaolv/telegramgallery/TL/o$g;,
        Lcom/tangxiaolv/telegramgallery/TL/o$a;,
        Lcom/tangxiaolv/telegramgallery/TL/o$h;,
        Lcom/tangxiaolv/telegramgallery/TL/o$j;,
        Lcom/tangxiaolv/telegramgallery/TL/o$e;,
        Lcom/tangxiaolv/telegramgallery/TL/o$i;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/m;-><init>()V

    return-void
.end method

.method public static f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/o;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :sswitch_0
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/o$d;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/o$d;-><init>()V

    goto :goto_0

    .line 2
    :sswitch_1
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/o$c;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/o$c;-><init>()V

    goto :goto_0

    .line 3
    :sswitch_2
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/o$f;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/o$f;-><init>()V

    goto :goto_0

    .line 4
    :sswitch_3
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/o$j;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/o$j;-><init>()V

    goto :goto_0

    .line 5
    :sswitch_4
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/o$h;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/o$h;-><init>()V

    goto :goto_0

    .line 6
    :sswitch_5
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/o$b;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/o$b;-><init>()V

    goto :goto_0

    .line 7
    :sswitch_6
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/o$a;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/o$a;-><init>()V

    goto :goto_0

    .line 8
    :sswitch_7
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/o$e;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/o$e;-><init>()V

    goto :goto_0

    .line 9
    :sswitch_8
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/o$g;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/o$g;-><init>()V

    goto :goto_0

    .line 10
    :sswitch_9
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/o$i;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/o$i;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in storage_FileType"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0, p0, p2}, Lcom/tangxiaolv/telegramgallery/TL/m;->d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5569c4fb -> :sswitch_9
        -0x51e1af73 -> :sswitch_8
        -0x4c315f1c -> :sswitch_7
        -0x351e5521 -> :sswitch_6
        0x7efe0e -> :sswitch_5
        0xa4f63c0 -> :sswitch_4
        0x1081464c -> :sswitch_3
        0x40bc6f52 -> :sswitch_2
        0x4b09ebbc -> :sswitch_1
        0x528a0677 -> :sswitch_0
    .end sparse-switch
.end method
