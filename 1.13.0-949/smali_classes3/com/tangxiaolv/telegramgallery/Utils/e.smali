.class public Lcom/tangxiaolv/telegramgallery/Utils/e;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Utils/e$j;,
        Lcom/tangxiaolv/telegramgallery/Utils/e$k;,
        Lcom/tangxiaolv/telegramgallery/Utils/e$o;,
        Lcom/tangxiaolv/telegramgallery/Utils/e$m;,
        Lcom/tangxiaolv/telegramgallery/Utils/e$l;,
        Lcom/tangxiaolv/telegramgallery/Utils/e$n;
    }
.end annotation


# static fields
.field private static t:[B

.field private static u:[B

.field private static v:[B

.field private static w:[B

.field private static volatile x:Lcom/tangxiaolv/telegramgallery/Utils/e;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tangxiaolv/telegramgallery/l;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tangxiaolv/telegramgallery/Utils/e$j;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tangxiaolv/telegramgallery/Utils/e$j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tangxiaolv/telegramgallery/Utils/e$j;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tangxiaolv/telegramgallery/Utils/e$n;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/e$m;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/tangxiaolv/telegramgallery/d;

.field private j:Lcom/tangxiaolv/telegramgallery/d;

.field private k:Lcom/tangxiaolv/telegramgallery/d;

.field private l:Lcom/tangxiaolv/telegramgallery/d;

.field private m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tangxiaolv/telegramgallery/Utils/e$o;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private volatile p:J

.field private q:I

.field private r:J

.field private s:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 1
    sput-object v1, Lcom/tangxiaolv/telegramgallery/Utils/e;->v:[B

    new-array v0, v0, [B

    .line 2
    sput-object v0, Lcom/tangxiaolv/telegramgallery/Utils/e;->w:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->c:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->d:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->e:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->f:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->g:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->h:Ljava/util/LinkedList;

    .line 9
    new-instance v0, Lcom/tangxiaolv/telegramgallery/d;

    const-string v1, "cacheOutQueue"

    invoke-direct {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->i:Lcom/tangxiaolv/telegramgallery/d;

    .line 10
    new-instance v0, Lcom/tangxiaolv/telegramgallery/d;

    const-string v1, "cacheThumbOutQueue"

    invoke-direct {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->j:Lcom/tangxiaolv/telegramgallery/d;

    .line 11
    new-instance v0, Lcom/tangxiaolv/telegramgallery/d;

    const-string v1, "thumbGeneratingQueue"

    invoke-direct {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->k:Lcom/tangxiaolv/telegramgallery/d;

    .line 12
    new-instance v0, Lcom/tangxiaolv/telegramgallery/d;

    const-string v1, "imageLoadQueue"

    invoke-direct {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->l:Lcom/tangxiaolv/telegramgallery/d;

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->n:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->o:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->p:J

    const/4 v3, 0x0

    .line 17
    iput v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->q:I

    .line 18
    iput-wide v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->r:J

    .line 19
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->s:Ljava/io/File;

    .line 20
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->i:Lcom/tangxiaolv/telegramgallery/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 21
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->j:Lcom/tangxiaolv/telegramgallery/d;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 22
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->k:Lcom/tangxiaolv/telegramgallery/d;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 23
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->l:Lcom/tangxiaolv/telegramgallery/d;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 24
    sget-object v0, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    const-string v1, "activity"

    .line 25
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    const/16 v1, 0xf

    .line 26
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 27
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$a;

    invoke-direct {v1, p0, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;I)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    .line 28
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v0

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$b;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/e$b;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->M(Lcom/tangxiaolv/telegramgallery/Utils/d$f;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->i()Ljava/io/File;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    :cond_0
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v2, 0x4

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->N(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic A(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->n:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic B(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/d;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->l:Lcom/tangxiaolv/telegramgallery/d;

    return-object p0
.end method

.method static synthetic C(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/l;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    return-object p0
.end method

.method static synthetic D()[B
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/e;->w:[B

    return-object v0
.end method

.method private E(Ljava/io/File;Ljava/io/File;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 1
    :try_start_0
    new-instance p3, Ljava/io/File;

    const-string v2, "000000000_999999_temp.jpg"

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/io/File;

    const-string v2, "000000000_999999.jpg"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne p3, v2, :cond_1

    .line 3
    new-instance p3, Ljava/io/File;

    const-string v2, "000000000_999999_temp.doc"

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/io/File;

    const-string v2, "000000000_999999.doc"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p3, v0, :cond_2

    .line 5
    new-instance p3, Ljava/io/File;

    const-string v2, "000000000_999999_temp.ogg"

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/io/File;

    const-string v2, "000000000_999999.ogg"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    .line 7
    new-instance p3, Ljava/io/File;

    const-string v2, "000000000_999999_temp.mp4"

    invoke-direct {p3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/io/File;

    const-string v2, "000000000_999999.mp4"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p1, v1

    move-object p3, p1

    :goto_0
    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 9
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 10
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rws"

    invoke-direct {v2, p3, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 12
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    invoke-virtual {p3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    .line 14
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    return v0

    :catchall_1
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, v2

    .line 16
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 17
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1

    :goto_3
    if-eqz v1, :cond_5

    .line 19
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 20
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :cond_5
    :goto_4
    throw p1
.end method

.method private I(Lcom/tangxiaolv/telegramgallery/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v6, p1

    if-eqz v6, :cond_4

    if-eqz p3, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p10, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {v6, v2}, Lcom/tangxiaolv/telegramgallery/k;->B(Z)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2
    iget v2, v14, Lcom/tangxiaolv/telegramgallery/Utils/e;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p10, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6, v2, v3}, Lcom/tangxiaolv/telegramgallery/k;->p0(Ljava/lang/Integer;Z)V

    .line 3
    iget v3, v14, Lcom/tangxiaolv/telegramgallery/Utils/e;->q:I

    add-int/2addr v3, v0

    iput v3, v14, Lcom/tangxiaolv/telegramgallery/Utils/e;->q:I

    const v0, 0x7fffffff

    if-ne v3, v0, :cond_3

    .line 4
    iput v1, v14, Lcom/tangxiaolv/telegramgallery/Utils/e;->q:I

    :cond_3
    move-object v5, v2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->M()Z

    move-result v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->N()Z

    .line 7
    iget-object v15, v14, Lcom/tangxiaolv/telegramgallery/Utils/e;->l:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v13, Lcom/tangxiaolv/telegramgallery/Utils/e$f;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p10

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p6

    move-object/from16 v9, p5

    move/from16 v10, p9

    move/from16 v11, p8

    move-object/from16 v12, p7

    move-object v14, v13

    move-object/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/tangxiaolv/telegramgallery/Utils/e$f;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/tangxiaolv/telegramgallery/k;Ljava/lang/String;ZLcom/tangxiaolv/telegramgallery/TL/m;ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private L(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->l:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/e$i;

    invoke-direct {v0, p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$i;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private M(Ljava/lang/String;Ljava/io/File;I)V
    .locals 2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->l:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$h;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/tangxiaolv/telegramgallery/Utils/e$h;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;ILjava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static N(Lcom/tangxiaolv/telegramgallery/TL/l;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->h:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->G(Lcom/tangxiaolv/telegramgallery/TL/m;Z)Ljava/io/File;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0x4e20

    if-ge v0, v2, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->h:[B

    const/4 p0, 0x0

    .line 6
    array-length v2, v0

    invoke-virtual {v1, v0, p0, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private O(ILjava/io/File;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_0
    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-static {p3}, Lcom/tangxiaolv/telegramgallery/Utils/d;->v(Lcom/tangxiaolv/telegramgallery/TL/m;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tangxiaolv/telegramgallery/Utils/e$o;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;ILjava/io/File;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->k:Lcom/tangxiaolv/telegramgallery/d;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static T()Lcom/tangxiaolv/telegramgallery/Utils/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/e;->x:Lcom/tangxiaolv/telegramgallery/Utils/e;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/tangxiaolv/telegramgallery/Utils/e;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/e;->x:Lcom/tangxiaolv/telegramgallery/Utils/e;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;-><init>()V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/Utils/e;->x:Lcom/tangxiaolv/telegramgallery/Utils/e;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private U(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->l:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$g;

    invoke-direct {v1, p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$g;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static X(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->m(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-eqz p0, :cond_2

    .line 8
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_2
    if-eqz p1, :cond_6

    .line 9
    :try_start_1
    sget-object v3, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 10
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 11
    :try_start_2
    invoke-static {v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 13
    :cond_3
    sget-object v4, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 14
    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_7

    .line 15
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v4

    .line 16
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v3, v2

    .line 17
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_4

    .line 18
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v2

    :catchall_3
    move-exception p0

    if-eqz v3, :cond_5

    .line 20
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    :cond_5
    :goto_3
    throw p0

    :cond_6
    :goto_4
    move-object v3, v2

    .line 23
    :cond_7
    :goto_5
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    .line 24
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    if-eqz p4, :cond_8

    div-float/2addr v4, p2

    div-float/2addr v5, p3

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_6

    :cond_8
    div-float/2addr v4, p2

    div-float/2addr v5, p3

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :goto_6
    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p4, p2, p3

    if-gez p4, :cond_9

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_9
    const/4 p3, 0x0

    .line 27
    iput-boolean p3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    float-to-int p2, p2

    .line 28
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 29
    iput-boolean p3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz p0, :cond_a

    move-object p2, p0

    goto :goto_7

    :cond_a
    if-eqz p1, :cond_b

    .line 30
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->m(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    :cond_b
    move-object p2, v2

    :goto_7
    if-eqz p2, :cond_f

    .line 31
    :try_start_7
    new-instance p3, Landroid/media/ExifInterface;

    invoke-direct {p3, p2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p2, "Orientation"

    .line 32
    invoke-virtual {p3, p2, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p2

    .line 33
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/4 p4, 0x3

    if-eq p2, p4, :cond_e

    const/4 p4, 0x6

    if-eq p2, p4, :cond_d

    const/16 p4, 0x8

    if-eq p2, p4, :cond_c

    goto :goto_9

    :cond_c
    const/high16 p2, 0x43870000    # 270.0f

    .line 34
    :try_start_8
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_9

    :cond_d
    const/high16 p2, 0x42b40000    # 90.0f

    .line 35
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_9

    :cond_e
    const/high16 p2, 0x43340000    # 180.0f

    .line 36
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception p2

    goto :goto_8

    :catchall_5
    move-exception p2

    move-object p3, v2

    .line 37
    :goto_8
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_f
    move-object p3, v2

    :goto_9
    if-eqz p0, :cond_12

    .line 38
    :try_start_9
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 39
    iget-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz p1, :cond_10

    .line 40
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/i;->q(Landroid/graphics/Bitmap;)V

    :cond_10
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 41
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, v2

    move-object v9, p3

    invoke-static/range {v4 .. v10}, Lcom/tangxiaolv/telegramgallery/Utils/b;->e(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, v2, :cond_15

    .line 42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object v2, p1

    goto/16 :goto_f

    :catchall_6
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->H()V

    if-nez v2, :cond_11

    .line 45
    :try_start_a
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 46
    iget-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz p0, :cond_11

    .line 47
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/i;->q(Landroid/graphics/Bitmap;)V

    goto :goto_a

    :catchall_7
    move-exception p0

    goto :goto_b

    :cond_11
    :goto_a
    if-eqz v2, :cond_15

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 48
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 49
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, v2

    move-object v9, p3

    .line 50
    invoke-static/range {v4 .. v10}, Lcom/tangxiaolv/telegramgallery/Utils/b;->e(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, v2, :cond_15

    .line 51
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object v2, p0

    goto :goto_f

    .line 52
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    :cond_12
    if-eqz p1, :cond_15

    .line 53
    :try_start_b
    invoke-static {v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-eqz p0, :cond_14

    .line 54
    :try_start_c
    iget-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz p1, :cond_13

    .line 55
    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/i;->q(Landroid/graphics/Bitmap;)V

    :cond_13
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, p0

    move-object v9, p3

    invoke-static/range {v4 .. v10}, Lcom/tangxiaolv/telegramgallery/Utils/b;->e(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_14

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-object v2, p1

    goto :goto_c

    :catchall_8
    move-exception p1

    move-object v2, p0

    goto :goto_d

    :cond_14
    move-object v2, p0

    .line 58
    :goto_c
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto :goto_f

    :catchall_9
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    :catchall_a
    move-exception p1

    .line 60
    :goto_d
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 61
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_f

    :catchall_b
    move-exception p0

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    :goto_e
    throw p0

    :cond_15
    :goto_f
    return-object v2
.end method

.method private Z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/l;->d(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->o:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {v1, p1}, Lcom/tangxiaolv/telegramgallery/l;->h(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {v1, p2, v0}, Lcom/tangxiaolv/telegramgallery/l;->g(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->o:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->m:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic b()[B
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/e;->v:[B

    return-object v0
.end method

.method private b0(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/e$n;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e$n;->b(Lcom/tangxiaolv/telegramgallery/Utils/e$n;)I

    .line 4
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e$n;->a(Lcom/tangxiaolv/telegramgallery/Utils/e$n;)I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Utils/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->p:J

    return-wide v0
.end method

.method static synthetic d(Lcom/tangxiaolv/telegramgallery/Utils/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->p:J

    return-wide p1
.end method

.method static synthetic e()[B
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/e;->u:[B

    return-object v0
.end method

.method private e0(Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/l;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-direct {p0, v7, v6}, Lcom/tangxiaolv/telegramgallery/Utils/e;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v8

    sget v9, Lcom/tangxiaolv/telegramgallery/Utils/h;->r:I

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v7, v10, v4

    aput-object v6, v10, v3

    aput-object p3, v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/tangxiaolv/telegramgallery/Utils/h;->d(I[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Utils/e;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v5, Lcom/tangxiaolv/telegramgallery/Utils/h;->r:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v3

    aput-object p3, v2, v1

    invoke-virtual {v0, v5, v2}, Lcom/tangxiaolv/telegramgallery/Utils/h;->d(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic f([B)[B
    .locals 0

    sput-object p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->u:[B

    return-object p0
.end method

.method public static f0(Landroid/graphics/Bitmap;FFIZ)Lcom/tangxiaolv/telegramgallery/TL/l;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/tangxiaolv/telegramgallery/Utils/e;->g0(Landroid/graphics/Bitmap;FFIZII)Lcom/tangxiaolv/telegramgallery/TL/l;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g()[B
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/e;->t:[B

    return-object v0
.end method

.method public static g0(Landroid/graphics/Bitmap;FFIZII)Lcom/tangxiaolv/telegramgallery/TL/l;
    .locals 17

    move/from16 v0, p5

    move/from16 v1, p6

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v12, v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    const/4 v3, 0x0

    cmpl-float v4, v12, v3

    if-eqz v4, :cond_7

    cmpl-float v3, v13, v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x0

    div-float v4, v12, p1

    div-float v5, v13, p2

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    int-to-float v0, v0

    cmpg-float v5, v12, v0

    if-ltz v5, :cond_2

    int-to-float v6, v1

    cmpg-float v6, v13, v6

    if-gez v6, :cond_5

    :cond_2
    if-gez v5, :cond_3

    int-to-float v3, v1

    cmpl-float v3, v13, v3

    if-lez v3, :cond_3

    div-float v0, v12, v0

    goto :goto_0

    :cond_3
    cmpl-float v3, v12, v0

    if-lez v3, :cond_4

    int-to-float v3, v1

    cmpg-float v4, v13, v3

    if-gez v4, :cond_4

    div-float v0, v13, v3

    goto :goto_0

    :cond_4
    div-float v0, v12, v0

    int-to-float v1, v1

    div-float v1, v13, v1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    const/4 v1, 0x1

    move v1, v0

    const/4 v14, 0x1

    goto :goto_1

    :cond_5
    move v1, v4

    const/4 v14, 0x0

    :goto_1
    div-float v0, v12, v1

    float-to-int v15, v0

    div-float v0, v13, v1

    float-to-int v11, v0

    if-eqz v11, :cond_7

    if-nez v15, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v3, p0

    move v4, v15

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v16, v11

    move v11, v14

    .line 5
    :try_start_0
    invoke-static/range {v3 .. v11}, Lcom/tangxiaolv/telegramgallery/Utils/e;->h0(Landroid/graphics/Bitmap;IIFFFIZZ)Lcom/tangxiaolv/telegramgallery/TL/l;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->H()V

    .line 8
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object/from16 v3, p0

    move v4, v15

    move/from16 v5, v16

    move v6, v12

    move v7, v13

    move v8, v1

    move/from16 v9, p3

    move/from16 v10, p4

    move v11, v14

    .line 9
    :try_start_1
    invoke-static/range {v3 .. v11}, Lcom/tangxiaolv/telegramgallery/Utils/e;->h0(Landroid/graphics/Bitmap;IIFFFIZZ)Lcom/tangxiaolv/telegramgallery/TL/l;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_2
    return-object v2
.end method

.method static synthetic h([B)[B
    .locals 0

    sput-object p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->t:[B

    return-object p0
.end method

.method private static h0(Landroid/graphics/Bitmap;IIFFFIZZ)Lcom/tangxiaolv/telegramgallery/TL/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p3, p5, p3

    if-gtz p3, :cond_1

    if-eqz p8, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/tangxiaolv/telegramgallery/Utils/b;->f(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    :goto_1
    new-instance p2, Lcom/tangxiaolv/telegramgallery/TL/d$b;

    invoke-direct {p2}, Lcom/tangxiaolv/telegramgallery/TL/d$b;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result p3

    const/high16 p4, -0x80000000

    add-int/2addr p3, p4

    int-to-long v0, p3

    iput-wide v0, p2, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    .line 4
    iput p4, p2, Lcom/tangxiaolv/telegramgallery/TL/d;->c:I

    .line 5
    new-instance p3, Lcom/tangxiaolv/telegramgallery/TL/l$b;

    invoke-direct {p3}, Lcom/tangxiaolv/telegramgallery/TL/l$b;-><init>()V

    .line 6
    iput-object p2, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    iput p4, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->e:I

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    iput p4, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->f:I

    .line 9
    iget p5, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->e:I

    const/16 p8, 0x64

    if-gt p5, p8, :cond_2

    if-gt p4, p8, :cond_2

    const-string p4, "s"

    .line 10
    iput-object p4, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/16 p8, 0x140

    if-gt p5, p8, :cond_3

    if-gt p4, p8, :cond_3

    const-string p4, "m"

    .line 11
    iput-object p4, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 p8, 0x320

    if-gt p5, p8, :cond_4

    if-gt p4, p8, :cond_4

    const-string p4, "x"

    .line 12
    iput-object p4, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/16 p8, 0x500

    if-gt p5, p8, :cond_5

    if-gt p4, p8, :cond_5

    const-string p4, "y"

    .line 13
    iput-object p4, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string p4, "w"

    .line 14
    iput-object p4, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    .line 15
    :goto_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p2, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, "_"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    new-instance p4, Ljava/io/File;

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object p5

    const/4 p8, 0x4

    invoke-virtual {p5, p8}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object p5

    invoke-direct {p4, p5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->i:Ljava/lang/String;

    .line 18
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2, p4}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p2

    .line 19
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p4, p6, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eqz p7, :cond_6

    .line 20
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    sget-object p5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p5, p6, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 22
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p5

    iput-object p5, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->h:[B

    .line 23
    array-length p5, p5

    iput p5, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->g:I

    .line 24
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p4

    invoke-virtual {p4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p4

    long-to-int p5, p4

    iput p5, p3, Lcom/tangxiaolv/telegramgallery/TL/l;->g:I

    .line 26
    :goto_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    if-eq p1, p0, :cond_7

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    return-object p3
.end method

.method static synthetic i(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic j(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/d;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->j:Lcom/tangxiaolv/telegramgallery/d;

    return-object p0
.end method

.method static synthetic k(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/d;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->i:Lcom/tangxiaolv/telegramgallery/d;

    return-object p0
.end method

.method static synthetic l(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->h:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic m(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic n(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tangxiaolv/telegramgallery/Utils/e;->M(Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method static synthetic o(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic p(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic r(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->s:Ljava/io/File;

    return-object p0
.end method

.method static synthetic s(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Utils/e;->L(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic t(Lcom/tangxiaolv/telegramgallery/Utils/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->r:J

    return-wide v0
.end method

.method static synthetic u(Lcom/tangxiaolv/telegramgallery/Utils/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->r:J

    return-wide p1
.end method

.method static synthetic v(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->b0(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic w(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tangxiaolv/telegramgallery/Utils/e;->e0(Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;)V

    return-void
.end method

.method static synthetic x(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->U(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic y(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->f:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic z(Lcom/tangxiaolv/telegramgallery/Utils/e;ILjava/io/File;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tangxiaolv/telegramgallery/Utils/e;->O(ILjava/io/File;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public F(Lcom/tangxiaolv/telegramgallery/k;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->l:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$d;

    invoke-direct {v1, p0, p2, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$d;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;ILcom/tangxiaolv/telegramgallery/k;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->i:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$c;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/e$c;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public H()V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/l;->c()V

    return-void
.end method

.method public J()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, ".nomedia"

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->i()Ljava/io/File;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v3, 0x4

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tmessages"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    const-string v3, "mounted"

    .line 10
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "Telegram"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->s:Ljava/io/File;

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 13
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->s:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v3, :cond_5

    .line 14
    :try_start_3
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->s:Ljava/io/File;

    const-string v6, "Telegram Images"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 16
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 17
    invoke-direct {p0, v2, v3, v5}, Lcom/tangxiaolv/telegramgallery/Utils/e;->E(Ljava/io/File;Ljava/io/File;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "image path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 20
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 21
    :cond_1
    :goto_2
    :try_start_5
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->s:Ljava/io/File;

    const-string v6, "Telegram Video"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 23
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 24
    invoke-direct {p0, v2, v3, v5}, Lcom/tangxiaolv/telegramgallery/Utils/e;->E(Ljava/io/File;Ljava/io/File;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    .line 27
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 28
    :cond_2
    :goto_3
    :try_start_7
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->s:Ljava/io/File;

    const-string v6, "Telegram Audio"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 30
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 31
    invoke-direct {p0, v2, v3, v5}, Lcom/tangxiaolv/telegramgallery/Utils/e;->E(Ljava/io/File;Ljava/io/File;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 32
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 35
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 36
    :cond_3
    :goto_4
    :try_start_9
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->s:Ljava/io/File;

    const-string v6, "Telegram Documents"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    invoke-direct {p0, v2, v3, v5}, Lcom/tangxiaolv/telegramgallery/Utils/e;->E(Ljava/io/File;Ljava/io/File;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 39
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "documents path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 42
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_4
    const-string v0, "this Android can\'t rename files"

    .line 43
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_5
    :goto_5
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/g;->n()Lcom/tangxiaolv/telegramgallery/Utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Utils/g;->l()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-object v1
.end method

.method public K(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public P(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public R(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_1
    instance-of p2, p1, Lcom/tangxiaolv/telegramgallery/TL/d;

    const-string v1, "_"

    if-eqz p2, :cond_2

    .line 3
    check-cast p1, Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_2
    instance-of p2, p1, Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz p2, :cond_3

    .line 6
    check-cast p1, Lcom/tangxiaolv/telegramgallery/TL/b;

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->k:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->c:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/l;->d(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method public S(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/l;->d(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method public V(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public W(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/l;->d(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Y(Lcom/tangxiaolv/telegramgallery/k;)V
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    if-nez v12, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->w()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {v1, v0}, Lcom/tangxiaolv/telegramgallery/l;->d(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v11, v12, v13}, Lcom/tangxiaolv/telegramgallery/Utils/e;->F(Lcom/tangxiaolv/telegramgallery/k;I)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->K()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v12, v1, v0, v13, v14}, Lcom/tangxiaolv/telegramgallery/k;->g0(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    return-void

    .line 6
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->D()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {v1, v0}, Lcom/tangxiaolv/telegramgallery/l;->d(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v12, v1, v0, v14, v14}, Lcom/tangxiaolv/telegramgallery/k;->g0(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    .line 9
    invoke-virtual {v11, v12, v14}, Lcom/tangxiaolv/telegramgallery/Utils/e;->F(Lcom/tangxiaolv/telegramgallery/k;I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->E()Lcom/tangxiaolv/telegramgallery/TL/d;

    move-result-object v5

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->q()Lcom/tangxiaolv/telegramgallery/TL/m;

    move-result-object v1

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->o()Ljava/lang/String;

    move-result-object v15

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jpg"

    if-nez v2, :cond_3

    move-object v10, v3

    goto :goto_1

    :cond_3
    move-object v10, v2

    :goto_1
    const-string v2, "_"

    const-string v4, "."

    if-eqz v15, :cond_4

    .line 14
    invoke-static {v15}, Lcom/tangxiaolv/telegramgallery/Utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v3}, Lcom/tangxiaolv/telegramgallery/Utils/e;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v1

    move-object v13, v3

    goto/16 :goto_9

    :cond_4
    if-eqz v1, :cond_10

    .line 16
    instance-of v3, v1, Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v3, :cond_7

    .line 17
    move-object v3, v1

    check-cast v3, Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v3, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->m()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    iget-object v9, v3, Lcom/tangxiaolv/telegramgallery/TL/d;->g:[B

    if-nez v9, :cond_6

    move-object/from16 v16, v7

    iget-wide v6, v3, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    const-wide/32 v17, -0x80000000

    cmp-long v19, v6, v17

    if-nez v19, :cond_5

    iget v3, v3, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    if-gez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v16, v7

    :goto_2
    const/4 v3, 0x1

    :goto_3
    move-object/from16 v7, v16

    goto/16 :goto_8

    .line 21
    :cond_7
    instance-of v3, v1, Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v3, :cond_e

    .line 22
    move-object v3, v1

    check-cast v3, Lcom/tangxiaolv/telegramgallery/TL/b;

    .line 23
    iget-wide v6, v3, Lcom/tangxiaolv/telegramgallery/TL/b;->c:J

    const-wide/16 v16, 0x0

    cmp-long v8, v6, v16

    if-eqz v8, :cond_d

    iget v6, v3, Lcom/tangxiaolv/telegramgallery/TL/b;->k:I

    if-nez v6, :cond_8

    goto :goto_7

    .line 24
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v3, Lcom/tangxiaolv/telegramgallery/TL/b;->k:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/tangxiaolv/telegramgallery/TL/b;->c:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/d;->B(Lcom/tangxiaolv/telegramgallery/TL/b;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    if-eqz v7, :cond_a

    const/16 v9, 0x2e

    .line 26
    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v13, -0x1

    if-ne v9, v13, :cond_9

    goto :goto_4

    .line 27
    :cond_9
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_a
    :goto_4
    move-object v7, v8

    .line 28
    :goto_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v14, :cond_b

    .line 29
    iget-object v3, v3, Lcom/tangxiaolv/telegramgallery/TL/b;->h:Ljava/lang/String;

    if-eqz v3, :cond_c

    const-string v7, "video/mp4"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v8, ".mp4"

    goto :goto_6

    :cond_b
    move-object v8, v7

    .line 30
    :cond_c
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v6

    const/4 v3, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    return-void

    :cond_e
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    if-ne v1, v5, :cond_f

    move/from16 v18, v3

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    goto :goto_a

    :cond_f
    move-object/from16 v19, v1

    move/from16 v18, v3

    move-object v13, v8

    goto :goto_a

    :cond_10
    move-object/from16 v19, v1

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_9
    const/16 v18, 0x0

    :goto_a
    if-eqz v5, :cond_11

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v5, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 33
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->n()Ljava/lang/String;

    move-result-object v9

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->C()Ljava/lang/String;

    move-result-object v8

    const-string v1, "@"

    if-eqz v7, :cond_12

    if-eqz v9, :cond_12

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_c

    :cond_12
    move-object/from16 v16, v7

    :goto_c
    if-eqz v6, :cond_13

    if-eqz v8, :cond_13

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_d

    :cond_13
    move-object v2, v6

    :goto_d
    const/4 v1, 0x2

    if-eqz v15, :cond_15

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-eqz v0, :cond_14

    const/4 v14, 0x2

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v10

    move-object v7, v8

    move/from16 v8, v17

    move-object/from16 v20, v9

    move/from16 v9, v18

    move-object/from16 v21, v10

    move v10, v14

    .line 37
    invoke-direct/range {v0 .. v10}, Lcom/tangxiaolv/telegramgallery/Utils/e;->I(Lcom/tangxiaolv/telegramgallery/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;IZI)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, v16

    move-object v3, v13

    move-object/from16 v4, v21

    move-object v6, v15

    move-object/from16 v7, v20

    .line 38
    invoke-direct/range {v0 .. v10}, Lcom/tangxiaolv/telegramgallery/Utils/e;->I(Lcom/tangxiaolv/telegramgallery/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;IZI)V

    goto :goto_11

    :cond_15
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_16

    const/4 v15, 0x2

    goto :goto_e

    :cond_16
    const/4 v15, 0x1

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, v21

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v15

    .line 39
    invoke-direct/range {v0 .. v10}, Lcom/tangxiaolv/telegramgallery/Utils/e;->I(Lcom/tangxiaolv/telegramgallery/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;IZI)V

    const/4 v6, 0x0

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->A()I

    move-result v8

    if-nez v18, :cond_18

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/tangxiaolv/telegramgallery/k;->k()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_f

    :cond_17
    const/4 v9, 0x0

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v9, 0x1

    :goto_10
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object v3, v13

    move-object/from16 v4, v21

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    .line 42
    invoke-direct/range {v0 .. v10}, Lcom/tangxiaolv/telegramgallery/Utils/e;->I(Lcom/tangxiaolv/telegramgallery/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;IZI)V

    :goto_11
    return-void
.end method

.method public a0(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {v0, p2, p1}, Lcom/tangxiaolv/telegramgallery/l;->g(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public c0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e;->b:Lcom/tangxiaolv/telegramgallery/l;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/l;->h(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public d0(Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 1
    new-instance p4, Lcom/tangxiaolv/telegramgallery/Utils/e$e;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/tangxiaolv/telegramgallery/Utils/e$e;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;)V

    invoke-static {p4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tangxiaolv/telegramgallery/Utils/e;->e0(Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;)V

    :goto_0
    return-void
.end method
