.class public Lcom/tangxiaolv/telegramgallery/TL/b;
.super Lcom/tangxiaolv/telegramgallery/TL/m;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/TL/b$a;,
        Lcom/tangxiaolv/telegramgallery/TL/b$c;,
        Lcom/tangxiaolv/telegramgallery/TL/b$b;,
        Lcom/tangxiaolv/telegramgallery/TL/b$e;,
        Lcom/tangxiaolv/telegramgallery/TL/b$d;
    }
.end annotation


# instance fields
.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Lcom/tangxiaolv/telegramgallery/TL/l;

.field public k:I

.field public l:[B

.field public m:[B

.field public n:Ljava/lang/String;

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/TL/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/m;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->o:Ljava/util/ArrayList;

    return-void
.end method

.method public static f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/b;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :sswitch_0
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/b$c;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/b$c;-><init>()V

    goto :goto_0

    .line 2
    :sswitch_1
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/b$d;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/b$d;-><init>()V

    goto :goto_0

    .line 3
    :sswitch_2
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/b$b;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/b$b;-><init>()V

    goto :goto_0

    .line 4
    :sswitch_3
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/b$a;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/b$a;-><init>()V

    goto :goto_0

    .line 5
    :sswitch_4
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/b$e;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/b$e;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in Document"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p0, p2}, Lcom/tangxiaolv/telegramgallery/TL/m;->d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61039cda -> :sswitch_4
        -0x65c60b1 -> :sswitch_3
        0x36f8c871 -> :sswitch_2
        0x55555556 -> :sswitch_1
        0x55555558 -> :sswitch_0
    .end sparse-switch
.end method
