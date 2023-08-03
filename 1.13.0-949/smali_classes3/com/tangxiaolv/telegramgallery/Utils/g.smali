.class public Lcom/tangxiaolv/telegramgallery/Utils/g;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Lcom/tangxiaolv/telegramgallery/Utils/h$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Utils/g$m;,
        Lcom/tangxiaolv/telegramgallery/Utils/g$h;,
        Lcom/tangxiaolv/telegramgallery/Utils/g$i;,
        Lcom/tangxiaolv/telegramgallery/Utils/g$f;,
        Lcom/tangxiaolv/telegramgallery/Utils/g$j;,
        Lcom/tangxiaolv/telegramgallery/Utils/g$l;,
        Lcom/tangxiaolv/telegramgallery/Utils/g$k;,
        Lcom/tangxiaolv/telegramgallery/Utils/g$d;,
        Lcom/tangxiaolv/telegramgallery/Utils/g$e;,
        Lcom/tangxiaolv/telegramgallery/Utils/g$g;
    }
.end annotation


# static fields
.field public static final A:I = 0x20

.field public static B:Lcom/tangxiaolv/telegramgallery/Utils/g$d; = null

.field private static volatile C:Lcom/tangxiaolv/telegramgallery/Utils/g; = null

.field public static u:[I = null

.field private static final v:[Ljava/lang/String;

.field private static final w:[Ljava/lang/String;

.field public static final x:I = 0x1

.field public static final y:I = 0x2

.field public static final z:I = 0x10


# instance fields
.field private a:Z

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$g;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$g;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/g$e;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/lang/Object;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Lcom/tangxiaolv/telegramgallery/Utils/g$f;

.field private r:Lcom/tangxiaolv/telegramgallery/Utils/g$j;

.field private s:I

.field private t:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/tangxiaolv/telegramgallery/Utils/g;->u:[I

    const-string v1, "_id"

    const-string v2, "bucket_id"

    const-string v3, "bucket_display_name"

    const-string v4, "_data"

    const-string v5, "datetaken"

    const-string v6, "orientation"

    const-string v7, "_size"

    .line 2
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tangxiaolv/telegramgallery/Utils/g;->v:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "bucket_id"

    const-string v2, "bucket_display_name"

    const-string v3, "_data"

    const-string v4, "datetaken"

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tangxiaolv/telegramgallery/Utils/g;->w:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/tangxiaolv/telegramgallery/Utils/g;->C:Lcom/tangxiaolv/telegramgallery/Utils/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->a:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->c:I

    .line 5
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->d:I

    .line 6
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->e:I

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->g:Ljava/util/HashMap;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->h:Ljava/util/HashMap;

    .line 9
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->i:Z

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->j:Ljava/util/HashMap;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->k:Ljava/util/ArrayList;

    .line 12
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->l:I

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->m:Ljava/util/ArrayList;

    .line 14
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->n:Ljava/lang/Object;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->q:Lcom/tangxiaolv/telegramgallery/Utils/g$f;

    .line 17
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->r:Lcom/tangxiaolv/telegramgallery/Utils/g$j;

    .line 18
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->s:I

    .line 19
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->t:[Ljava/lang/String;

    const/16 v1, 0x3e80

    const/16 v2, 0x10

    const/4 v3, 0x2

    .line 20
    :try_start_0
    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->p:I

    if-gtz v1, :cond_0

    const/16 v1, 0x500

    .line 21
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->p:I

    :cond_0
    const v1, 0xbb80

    const/4 v2, 0x4

    .line 22
    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->l:I

    if-gtz v1, :cond_1

    const/16 v1, 0xf00

    .line 23
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->l:I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    const/16 v2, 0x1000

    .line 24
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 25
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 26
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 27
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->m:Ljava/util/ArrayList;

    new-instance v3, Lcom/tangxiaolv/telegramgallery/Utils/g$e;

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->l:I

    invoke-direct {v3, p0, v4}, Lcom/tangxiaolv/telegramgallery/Utils/g$e;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/g;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :cond_3
    sget-object v1, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    const-string v2, "mainconfig"

    .line 30
    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "mobileDataDownloadMask"

    const/16 v3, 0x33

    .line 31
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->c:I

    const-string v2, "wifiDownloadMask"

    .line 32
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->d:I

    const-string v2, "roamingDownloadMask"

    .line 33
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->e:I

    .line 34
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/g$a;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/g$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/g;)V

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    const-string v2, "_data"

    const-string v3, "_display_name"

    const-string v4, "bucket_display_name"

    const-string v5, "datetaken"

    const-string v6, "title"

    const-string v7, "width"

    const-string v8, "height"

    .line 35
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->t:[Ljava/lang/String;

    .line 36
    :try_start_1
    sget-object v1, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/tangxiaolv/telegramgallery/Utils/g$h;

    invoke-direct {v3, p0}, Lcom/tangxiaolv/telegramgallery/Utils/g$h;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/g;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :goto_2
    :try_start_2
    sget-object v1, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/tangxiaolv/telegramgallery/Utils/g$i;

    invoke-direct {v3, p0}, Lcom/tangxiaolv/telegramgallery/Utils/g$i;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/g;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Utils/g;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->f:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Utils/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->f:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Utils/g;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->s:I

    return p0
.end method

.method static synthetic d(Lcom/tangxiaolv/telegramgallery/Utils/g;)Lcom/tangxiaolv/telegramgallery/Utils/g$j;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->r:Lcom/tangxiaolv/telegramgallery/Utils/g$j;

    return-object p0
.end method

.method static synthetic e(Lcom/tangxiaolv/telegramgallery/Utils/g;Lcom/tangxiaolv/telegramgallery/Utils/g$j;)Lcom/tangxiaolv/telegramgallery/Utils/g$j;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->r:Lcom/tangxiaolv/telegramgallery/Utils/g$j;

    return-object p1
.end method

.method static synthetic f(Lcom/tangxiaolv/telegramgallery/Utils/g;)Lcom/tangxiaolv/telegramgallery/Utils/g$f;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->q:Lcom/tangxiaolv/telegramgallery/Utils/g$f;

    return-object p0
.end method

.method static synthetic g(Lcom/tangxiaolv/telegramgallery/Utils/g;Lcom/tangxiaolv/telegramgallery/Utils/g$f;)Lcom/tangxiaolv/telegramgallery/Utils/g$f;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->q:Lcom/tangxiaolv/telegramgallery/Utils/g$f;

    return-object p1
.end method

.method static synthetic i()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/g;->v:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/g;->w:[Ljava/lang/String;

    return-object v0
.end method

.method public static n()Lcom/tangxiaolv/telegramgallery/Utils/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/g;->C:Lcom/tangxiaolv/telegramgallery/Utils/g;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/tangxiaolv/telegramgallery/Utils/g;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/g;->C:Lcom/tangxiaolv/telegramgallery/Utils/g;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/g;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/Utils/g;-><init>()V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/Utils/g;->C:Lcom/tangxiaolv/telegramgallery/Utils/g;

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

.method public static o(I[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/g$c;

    invoke-direct {v1, p1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/g$c;-><init>([Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/g$g;

    .line 3
    invoke-virtual {p0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/g;->r(Lcom/tangxiaolv/telegramgallery/Utils/g$g;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static s(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 2
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 5
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 6
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 7
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "OMX.SEC.avc.enc"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v4

    .line 8
    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v4

    :cond_2
    move-object v2, v4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method


# virtual methods
.method public varargs h(I[Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->C:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 2
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->i:Z

    .line 3
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->g:Ljava/util/HashMap;

    .line 5
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tangxiaolv/telegramgallery/Utils/g$g;

    invoke-interface {v3, p1}, Lcom/tangxiaolv/telegramgallery/Utils/g$g;->b(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/g$g;

    invoke-interface {v1}, Lcom/tangxiaolv/telegramgallery/Utils/g$g;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->g:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->i:Z

    .line 13
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/g;->p()V

    goto/16 :goto_3

    .line 14
    :cond_3
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->B:I

    if-ne p1, v0, :cond_7

    .line 15
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->i:Z

    .line 16
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/String;

    .line 17
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->g:Ljava/util/HashMap;

    .line 18
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 19
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 20
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 22
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tangxiaolv/telegramgallery/Utils/g$g;

    invoke-interface {v3, p1}, Lcom/tangxiaolv/telegramgallery/Utils/g$g;->c(Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/g$g;

    invoke-interface {v1}, Lcom/tangxiaolv/telegramgallery/Utils/g$g;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24
    :cond_5
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->g:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_6
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->i:Z

    .line 26
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/g;->p()V

    goto :goto_3

    .line 27
    :cond_7
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->A:I

    if-ne p1, v0, :cond_a

    .line 28
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->i:Z

    .line 29
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->g:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 32
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Float;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 34
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 35
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/g$g;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v1, p1, v3}, Lcom/tangxiaolv/telegramgallery/Utils/g$g;->e(Ljava/lang/String;F)V

    goto :goto_2

    .line 36
    :cond_9
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->i:Z

    .line 37
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/g;->p()V

    :cond_a
    :goto_3
    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->a:Z

    return v0
.end method

.method public l()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Telegram"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    const-string v2, "Telegram Images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 4
    new-instance v2, Ljava/io/File;

    const-string v3, "Telegram Video"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 6
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ".nomedia"

    if-eqz v0, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 13
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public q(Landroid/net/Uri;)V
    .locals 13

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->q()Landroid/graphics/Point;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->t:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date_added DESC LIMIT 1"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_a

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 7
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 8
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x4

    .line 9
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    .line 10
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x6

    .line 11
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v11, "screenshot"

    if-eqz v2, :cond_1

    .line 12
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_1
    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    if-eqz v5, :cond_3

    .line 14
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-eqz v8, :cond_0

    .line 15
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_0

    :cond_4
    if-eqz v9, :cond_5

    if-nez v10, :cond_6

    .line 16
    :cond_5
    :try_start_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 17
    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 18
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 19
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 20
    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_6
    if-lez v9, :cond_8

    if-lez v10, :cond_8

    .line 21
    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ne v9, v2, :cond_7

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-eq v10, v3, :cond_8

    :cond_7
    if-ne v10, v2, :cond_0

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ne v9, v2, :cond_0

    .line 22
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 23
    :catch_0
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 25
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 26
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Utils/g$b;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/Utils/g$b;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/g;)V

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_1
    return-void
.end method

.method public r(Lcom/tangxiaolv/telegramgallery/Utils/g$g;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->h:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/tangxiaolv/telegramgallery/Utils/g$g;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 4
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->g:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g;->h:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/tangxiaolv/telegramgallery/Utils/g$g;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method
