.class public Lcom/tangxiaolv/telegramgallery/TL/c;
.super Lcom/tangxiaolv/telegramgallery/TL/m;
.source "DocumentAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/TL/c$e;,
        Lcom/tangxiaolv/telegramgallery/TL/c$c;,
        Lcom/tangxiaolv/telegramgallery/TL/c$h;,
        Lcom/tangxiaolv/telegramgallery/TL/c$b;,
        Lcom/tangxiaolv/telegramgallery/TL/c$j;,
        Lcom/tangxiaolv/telegramgallery/TL/c$g;,
        Lcom/tangxiaolv/telegramgallery/TL/c$d;,
        Lcom/tangxiaolv/telegramgallery/TL/c$f;,
        Lcom/tangxiaolv/telegramgallery/TL/c$i;,
        Lcom/tangxiaolv/telegramgallery/TL/c$a;
    }
.end annotation


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lcom/tangxiaolv/telegramgallery/TL/i;

.field public h:I

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:[B

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/m;-><init>()V

    return-void
.end method

.method public static f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/c;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :sswitch_0
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/c$f;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/c$f;-><init>()V

    goto :goto_0

    .line 2
    :sswitch_1
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/c$j;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/c$j;-><init>()V

    goto :goto_0

    .line 3
    :sswitch_2
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/c$g;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/c$g;-><init>()V

    goto :goto_0

    .line 4
    :sswitch_3
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/c$e;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/c$e;-><init>()V

    goto :goto_0

    .line 5
    :sswitch_4
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/c$a;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/c$a;-><init>()V

    goto :goto_0

    .line 6
    :sswitch_5
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/c$d;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/c$d;-><init>()V

    goto :goto_0

    .line 7
    :sswitch_6
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/c$i;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/c$i;-><init>()V

    goto :goto_0

    .line 8
    :sswitch_7
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/c$c;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/c$c;-><init>()V

    goto :goto_0

    .line 9
    :sswitch_8
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/c$h;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/c$h;-><init>()V

    goto :goto_0

    .line 10
    :sswitch_9
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/c$b;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/c$b;-><init>()V

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

    const-string p1, "can\'t parse magic %x in DocumentAttribute"

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
        -0x67ad063a -> :sswitch_9
        -0x66b3677e -> :sswitch_8
        -0x212de720 -> :sswitch_7
        -0x4f5a8d9 -> :sswitch_6
        0x51448e5 -> :sswitch_5
        0x11b58939 -> :sswitch_4
        0x15590068 -> :sswitch_3
        0x3a556302 -> :sswitch_2
        0x5910cccb -> :sswitch_1
        0x6c37c15c -> :sswitch_0
    .end sparse-switch
.end method
