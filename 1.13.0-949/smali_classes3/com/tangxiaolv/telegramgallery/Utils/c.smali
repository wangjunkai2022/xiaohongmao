.class public Lcom/tangxiaolv/telegramgallery/Utils/c;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Utils/c$i;,
        Lcom/tangxiaolv/telegramgallery/Utils/c$j;
    }
.end annotation


# static fields
.field private static final A:I = 0x1

.field private static final B:I = 0x2

.field private static final C:I = 0x3

.field private static final D:I = 0x8000

.field private static final E:I = 0x20000

.field private static final F:I = 0x4

.field private static final G:I = 0x2

.field private static final H:I = 0x100000

.field private static final z:I


# instance fields
.field private a:I

.field private b:Lcom/tangxiaolv/telegramgallery/TL/h;

.field private volatile c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/tangxiaolv/telegramgallery/Utils/c$i;

.field private h:[B

.field private i:[B

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/c$j;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/c$j;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/io/File;

.field private r:Ljava/io/File;

.field private s:Ljava/io/File;

.field private t:Ljava/lang/String;

.field private u:Ljava/io/RandomAccessFile;

.field private v:Ljava/io/RandomAccessFile;

.field private w:Ljava/io/File;

.field private x:Ljava/io/File;

.field private y:Z


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/TL/b;)V
    .locals 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->c:I

    .line 23
    :try_start_0
    instance-of v1, p1, Lcom/tangxiaolv/telegramgallery/TL/b$c;

    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lcom/tangxiaolv/telegramgallery/TL/h$b;

    invoke-direct {v1}, Lcom/tangxiaolv/telegramgallery/TL/h$b;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    .line 25
    iget-wide v2, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->c:J

    iput-wide v2, v1, Lcom/tangxiaolv/telegramgallery/TL/h;->c:J

    .line 26
    iget-wide v2, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->d:J

    iput-wide v2, v1, Lcom/tangxiaolv/telegramgallery/TL/h;->d:J

    .line 27
    iget v1, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->k:I

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->a:I

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 28
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->i:[B

    .line 29
    iget-object v2, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->m:[B

    array-length v3, v1

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget-object v1, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->l:[B

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->h:[B

    goto :goto_0

    .line 31
    :cond_0
    instance-of v1, p1, Lcom/tangxiaolv/telegramgallery/TL/b$a;

    if-eqz v1, :cond_1

    .line 32
    new-instance v1, Lcom/tangxiaolv/telegramgallery/TL/h$a;

    invoke-direct {v1}, Lcom/tangxiaolv/telegramgallery/TL/h$a;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    .line 33
    iget-wide v2, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->c:J

    iput-wide v2, v1, Lcom/tangxiaolv/telegramgallery/TL/h;->c:J

    .line 34
    iget-wide v2, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->d:J

    iput-wide v2, v1, Lcom/tangxiaolv/telegramgallery/TL/h;->d:J

    .line 35
    iget v1, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->k:I

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->a:I

    .line 36
    :cond_1
    :goto_0
    iget v1, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->i:I

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->e:I

    .line 37
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->h:[B

    if-eqz v2, :cond_2

    .line 38
    rem-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    .line 39
    rem-int/lit8 v2, v1, 0x10

    rsub-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->f:I

    add-int/2addr v1, v2

    .line 40
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->e:I

    .line 41
    :cond_2
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->B(Lcom/tangxiaolv/telegramgallery/TL/b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    const-string v3, ""

    if-eqz v1, :cond_4

    const/16 v4, 0x2e

    .line 42
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 43
    :cond_3
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;

    goto :goto_2

    .line 44
    :cond_4
    :goto_1
    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;

    .line 45
    :goto_2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-gt v1, v4, :cond_b

    .line 46
    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->h:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v5, 0xb26cbd6

    if-eq v1, v5, :cond_6

    const v5, 0x4f62635d

    if-eq v1, v5, :cond_5

    goto :goto_3

    :cond_5
    const-string v1, "video/mp4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_6
    const-string v0, "audio/ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v0, -0x1

    :goto_4
    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_8

    .line 48
    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;

    goto :goto_5

    :cond_8
    const-string p1, ".ogg"

    .line 49
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const-string p1, ".mp4"

    .line 50
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;

    goto :goto_5

    .line 51
    :cond_a
    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    .line 53
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->c:I

    .line 54
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->j()V

    .line 55
    sget-object p1, Lcom/tangxiaolv/telegramgallery/Utils/i;->c:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/c$a;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/Utils/c$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/c;)V

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->c:I

    .line 3
    instance-of v1, p1, Lcom/tangxiaolv/telegramgallery/TL/d$a;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/tangxiaolv/telegramgallery/TL/h$b;

    invoke-direct {v1}, Lcom/tangxiaolv/telegramgallery/TL/h$b;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    .line 5
    iget-wide v2, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    iput-wide v2, v1, Lcom/tangxiaolv/telegramgallery/TL/h;->c:J

    .line 6
    iput-wide v2, v1, Lcom/tangxiaolv/telegramgallery/TL/h;->e:J

    .line 7
    iget-wide v2, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->f:J

    iput-wide v2, v1, Lcom/tangxiaolv/telegramgallery/TL/h;->d:J

    .line 8
    iget v2, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    iput v2, v1, Lcom/tangxiaolv/telegramgallery/TL/h;->f:I

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 9
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->i:[B

    .line 10
    iget-object v2, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->h:[B

    array-length v3, v1

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->g:[B

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->h:[B

    .line 12
    iget p1, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->c:I

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->a:I

    goto :goto_0

    .line 13
    :cond_0
    instance-of v0, p1, Lcom/tangxiaolv/telegramgallery/TL/d$b;

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/h$c;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/h$c;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    .line 15
    iget-wide v1, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    iput-wide v1, v0, Lcom/tangxiaolv/telegramgallery/TL/h;->e:J

    .line 16
    iget-wide v1, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->f:J

    iput-wide v1, v0, Lcom/tangxiaolv/telegramgallery/TL/h;->g:J

    .line 17
    iget v1, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/TL/h;->f:I

    .line 18
    iget p1, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->c:I

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->a:I

    .line 19
    :cond_1
    :goto_0
    iput p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->e:I

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "jpg"

    .line 20
    :goto_1
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Utils/c;)Lcom/tangxiaolv/telegramgallery/Utils/c$i;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->g:Lcom/tangxiaolv/telegramgallery/Utils/c$i;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Utils/c;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->e:I

    return p0
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Utils/c;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->d:I

    return p0
.end method

.method static synthetic d(Lcom/tangxiaolv/telegramgallery/Utils/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->l()V

    return-void
.end method

.method static synthetic e(Lcom/tangxiaolv/telegramgallery/Utils/c;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->c:I

    return p0
.end method

.method static synthetic f(Lcom/tangxiaolv/telegramgallery/Utils/c;I)I
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->c:I

    return p1
.end method

.method static synthetic g(Lcom/tangxiaolv/telegramgallery/Utils/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->j()V

    return-void
.end method

.method static synthetic h(Lcom/tangxiaolv/telegramgallery/Utils/c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method private j()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->u:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 5
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->u:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->v:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 9
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->v:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12
    :goto_3
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tangxiaolv/telegramgallery/Utils/c$j;

    .line 14
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/c$j;->a(Lcom/tangxiaolv/telegramgallery/Utils/c$j;)Lcom/tangxiaolv/telegramgallery/TL/n;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 15
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/c$j;->a(Lcom/tangxiaolv/telegramgallery/Utils/c$j;)Lcom/tangxiaolv/telegramgallery/TL/n;

    move-result-object v3

    iput-boolean v0, v3, Lcom/tangxiaolv/telegramgallery/TL/m;->a:Z

    .line 16
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/c$j;->a(Lcom/tangxiaolv/telegramgallery/Utils/c$j;)Lcom/tangxiaolv/telegramgallery/TL/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/TL/n;->b()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    return-void
.end method

.method private l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->c:I

    .line 3
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->j()V

    .line 4
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->s:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->s:Ljava/io/File;

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->q:Ljava/io/File;

    if-eqz v2, :cond_3

    .line 8
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->r:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->m:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->m:I

    if-ge v2, v0, :cond_2

    .line 10
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->c:I

    .line 11
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/i;->c:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/c$h;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/c$h;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/c;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/tangxiaolv/telegramgallery/d;->d(Ljava/lang/Runnable;J)V

    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->q:Ljava/io/File;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->r:Ljava/io/File;

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->g:Lcom/tangxiaolv/telegramgallery/Utils/c$i;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->r:Ljava/io/File;

    invoke-interface {v0, p0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/c$i;->b(Lcom/tangxiaolv/telegramgallery/Utils/c;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 2

    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/i;->c:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/c$g;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/c$g;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/c;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->y:Z

    return v0
.end method

.method public m(Lcom/tangxiaolv/telegramgallery/Utils/c$i;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->g:Lcom/tangxiaolv/telegramgallery/Utils/c$i;

    return-void
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->y:Z

    return-void
.end method

.method public o(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->w:Ljava/io/File;

    .line 2
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->x:Ljava/io/File;

    return-void
.end method

.method public p()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->c:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->e:I

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_1

    const/high16 v2, 0x20000

    goto :goto_0

    :cond_1
    const v2, 0x8000

    :goto_0
    iput v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->j:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    .line 3
    :goto_1
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->k:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->k:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->o:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->k:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->p:Ljava/util/ArrayList;

    .line 6
    iput v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->c:I

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    if-nez v0, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->j()V

    .line 9
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/i;->c:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/c$b;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/c$b;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/c;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 10
    iget-wide v2, v0, Lcom/tangxiaolv/telegramgallery/TL/h;->e:J

    const-string v4, ".iv"

    const-string v5, ".temp"

    const-wide/16 v6, 0x0

    const-string v8, "_"

    cmp-long v9, v2, v6

    if-eqz v9, :cond_6

    iget v0, v0, Lcom/tangxiaolv/telegramgallery/TL/h;->f:I

    if-eqz v0, :cond_6

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    iget-wide v2, v2, Lcom/tangxiaolv/telegramgallery/TL/h;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    iget v2, v2, Lcom/tangxiaolv/telegramgallery/TL/h;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    iget-wide v9, v3, Lcom/tangxiaolv/telegramgallery/TL/h;->e:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    iget v3, v3, Lcom/tangxiaolv/telegramgallery/TL/h;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->h:[B

    if-eqz v3, :cond_4

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    iget-wide v9, v3, Lcom/tangxiaolv/telegramgallery/TL/h;->e:J

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    iget v3, v3, Lcom/tangxiaolv/telegramgallery/TL/h;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_4
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->a:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_5

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    iget-wide v4, v4, Lcom/tangxiaolv/telegramgallery/TL/h;->e:J

    const-wide/32 v8, -0x80000000

    cmp-long v10, v4, v8

    if-eqz v10, :cond_5

    if-nez v3, :cond_8

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->j()V

    .line 17
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/i;->c:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/c$c;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/c$c;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/c;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void

    .line 18
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    iget-wide v2, v2, Lcom/tangxiaolv/telegramgallery/TL/h;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    iget-wide v9, v3, Lcom/tangxiaolv/telegramgallery/TL/h;->c:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->h:[B

    if-eqz v3, :cond_7

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    iget-wide v8, v3, Lcom/tangxiaolv/telegramgallery/TL/h;->c:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    :cond_7
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->a:I

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->b:Lcom/tangxiaolv/telegramgallery/TL/h;

    iget-wide v3, v3, Lcom/tangxiaolv/telegramgallery/TL/h;->c:J

    cmp-long v5, v3, v6

    if-nez v5, :cond_8

    goto/16 :goto_5

    .line 23
    :cond_8
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->w:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->r:Ljava/io/File;

    .line 24
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 25
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->e:I

    if-eqz v2, :cond_9

    int-to-long v2, v2

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->r:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v8, v2, v4

    if-eqz v8, :cond_9

    .line 26
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 27
    :cond_9
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    .line 28
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->x:Ljava/io/File;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->q:Ljava/io/File;

    .line 29
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->d:I

    .line 31
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->j:I

    div-int/2addr v0, v2

    mul-int v0, v0, v2

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->d:I

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->n:I

    :cond_a
    const-string v0, "rws"

    if-eqz v1, :cond_c

    .line 32
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->x:Ljava/io/File;

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->s:Ljava/io/File;

    .line 33
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->s:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->v:Ljava/io/RandomAccessFile;

    .line 34
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->s:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v4, v1, v6

    if-lez v4, :cond_b

    const-wide/16 v4, 0x20

    .line 35
    rem-long/2addr v1, v4

    cmp-long v4, v1, v6

    if-nez v4, :cond_b

    .line 36
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->v:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->i:[B

    const/16 v4, 0x20

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_2

    .line 37
    :cond_b
    iput v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    iput v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->d:I

    .line 40
    :cond_c
    :goto_2
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->q:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->u:Ljava/io/RandomAccessFile;

    .line 41
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->d:I

    if-eqz v0, :cond_d

    int-to-long v2, v0

    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->u:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_e

    .line 45
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->j()V

    .line 46
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/i;->c:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/c$e;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/c$e;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/c;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void

    .line 47
    :cond_e
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/i;->c:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/c$f;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/c$f;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/c;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 48
    :cond_f
    :try_start_2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->l()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 49
    :catch_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c;->g:Lcom/tangxiaolv/telegramgallery/Utils/c$i;

    invoke-interface {v0, p0, v3}, Lcom/tangxiaolv/telegramgallery/Utils/c$i;->a(Lcom/tangxiaolv/telegramgallery/Utils/c;I)V

    :goto_4
    return-void

    .line 50
    :cond_10
    :goto_5
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->j()V

    .line 51
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/i;->c:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/c$d;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/c$d;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/c;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method
