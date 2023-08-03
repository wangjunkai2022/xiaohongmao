.class public Lcom/tangxiaolv/telegramgallery/Utils/d;
.super Ljava/lang/Object;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Utils/d$f;
    }
.end annotation


# static fields
.field public static final n:I = 0x0

.field public static final o:I = 0x1

.field public static final p:I = 0x2

.field public static final q:I = 0x3

.field public static final r:I = 0x4

.field private static volatile s:Lcom/tangxiaolv/telegramgallery/Utils/d;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/tangxiaolv/telegramgallery/d;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tangxiaolv/telegramgallery/Utils/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/tangxiaolv/telegramgallery/Utils/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/tangxiaolv/telegramgallery/Utils/d$f;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->a:Ljava/util/HashMap;

    .line 3
    new-instance v1, Lcom/tangxiaolv/telegramgallery/d;

    const-string v2, "fileUploadQueue"

    invoke-direct {v1, v2}, Lcom/tangxiaolv/telegramgallery/d;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->b:Lcom/tangxiaolv/telegramgallery/d;

    .line 4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->c:Ljava/util/LinkedList;

    .line 5
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->d:Ljava/util/LinkedList;

    .line 6
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->e:Ljava/util/LinkedList;

    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->g:Ljava/util/HashMap;

    .line 9
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->h:Lcom/tangxiaolv/telegramgallery/Utils/d$f;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->i:I

    .line 11
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->j:I

    .line 12
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->k:I

    .line 13
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->l:I

    .line 14
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->m:I

    return-void
.end method

.method public static A(Lcom/tangxiaolv/telegramgallery/TL/b;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->B(Lcom/tangxiaolv/telegramgallery/TL/b;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->h:Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    .line 6
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static B(Lcom/tangxiaolv/telegramgallery/TL/b;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/TL/c;

    .line 4
    instance-of v2, v1, Lcom/tangxiaolv/telegramgallery/TL/c$e;

    if-eqz v2, :cond_1

    .line 5
    iget-object p0, v1, Lcom/tangxiaolv/telegramgallery/TL/c;->m:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static C(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static D()Lcom/tangxiaolv/telegramgallery/Utils/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/d;->s:Lcom/tangxiaolv/telegramgallery/Utils/d;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/tangxiaolv/telegramgallery/Utils/d;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Utils/d;->s:Lcom/tangxiaolv/telegramgallery/Utils/d;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;-><init>()V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/Utils/d;->s:Lcom/tangxiaolv/telegramgallery/Utils/d;

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

.method public static E(Lcom/tangxiaolv/telegramgallery/TL/m;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->F(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static F(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Z)Ljava/io/File;
    .locals 8

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object p2

    goto/16 :goto_2

    .line 2
    :cond_0
    instance-of p2, p0, Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz p2, :cond_2

    .line 3
    move-object p2, p0

    check-cast p2, Lcom/tangxiaolv/telegramgallery/TL/b;

    .line 4
    iget-object p2, p2, Lcom/tangxiaolv/telegramgallery/TL/b;->l:[B

    if-eqz p2, :cond_1

    .line 5
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object p2

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object p2

    goto :goto_2

    .line 7
    :cond_2
    instance-of p2, p0, Lcom/tangxiaolv/telegramgallery/TL/l;

    const/4 v1, 0x0

    const-wide/32 v2, -0x80000000

    if-eqz p2, :cond_6

    .line 8
    move-object p2, p0

    check-cast p2, Lcom/tangxiaolv/telegramgallery/TL/l;

    .line 9
    iget-object v4, p2, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v4, :cond_5

    iget-object v5, v4, Lcom/tangxiaolv/telegramgallery/TL/d;->g:[B

    if-nez v5, :cond_5

    iget-wide v5, v4, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    cmp-long v7, v5, v2

    if-nez v7, :cond_3

    iget v2, v4, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    if-ltz v2, :cond_5

    :cond_3
    iget p2, p2, Lcom/tangxiaolv/telegramgallery/TL/l;->g:I

    if-gez p2, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object p2

    goto :goto_2

    .line 11
    :cond_5
    :goto_0
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object p2

    goto :goto_2

    .line 12
    :cond_6
    instance-of p2, p0, Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz p2, :cond_9

    .line 13
    move-object p2, p0

    check-cast p2, Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 14
    iget-object v4, p2, Lcom/tangxiaolv/telegramgallery/TL/d;->g:[B

    if-nez v4, :cond_8

    iget-wide v4, p2, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_7

    iget p2, p2, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    if-gez p2, :cond_7

    goto :goto_1

    .line 15
    :cond_7
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object p2

    goto :goto_2

    .line 16
    :cond_8
    :goto_1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object p2

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_a

    .line 17
    new-instance p0, Ljava/io/File;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 18
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->w(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static G(Lcom/tangxiaolv/telegramgallery/TL/m;Z)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->F(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private I(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;IZZ)V
    .locals 11

    move-object v8, p0

    iget-object v9, v8, Lcom/tangxiaolv/telegramgallery/Utils/d;->b:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v10, Lcom/tangxiaolv/telegramgallery/Utils/d$c;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move/from16 v5, p5

    move v6, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tangxiaolv/telegramgallery/Utils/d$c;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/d;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/b;ZIZ)V

    invoke-virtual {v9, v10}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->e:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->c:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic d(Lcom/tangxiaolv/telegramgallery/Utils/d;)Lcom/tangxiaolv/telegramgallery/Utils/d$f;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->h:Lcom/tangxiaolv/telegramgallery/Utils/d$f;

    return-object p0
.end method

.method static synthetic e(Lcom/tangxiaolv/telegramgallery/Utils/d;Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tangxiaolv/telegramgallery/Utils/d;->t(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/tangxiaolv/telegramgallery/Utils/d;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->j:I

    return p0
.end method

.method static synthetic g(Lcom/tangxiaolv/telegramgallery/Utils/d;)I
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->j:I

    return v0
.end method

.method static synthetic h(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->d:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic i(Lcom/tangxiaolv/telegramgallery/Utils/d;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->k:I

    return p0
.end method

.method static synthetic j(Lcom/tangxiaolv/telegramgallery/Utils/d;)I
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->k:I

    return v0
.end method

.method static synthetic k(Lcom/tangxiaolv/telegramgallery/Utils/d;)I
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->k:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->k:I

    return v0
.end method

.method static synthetic l(Lcom/tangxiaolv/telegramgallery/Utils/d;)I
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->i:I

    return p0
.end method

.method static synthetic m(Lcom/tangxiaolv/telegramgallery/Utils/d;)I
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->i:I

    return v0
.end method

.method static synthetic n(Lcom/tangxiaolv/telegramgallery/Utils/d;)I
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->i:I

    return v0
.end method

.method private p(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->b:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/d$a;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/tangxiaolv/telegramgallery/Utils/d$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/d;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/b;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private t(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->b:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/d$d;

    invoke-direct {v0, p0, p3, p2}, Lcom/tangxiaolv/telegramgallery/Utils/d$d;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/d;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;)V

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static v(Lcom/tangxiaolv/telegramgallery/TL/m;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->w(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    instance-of v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;

    const-string v1, "_"

    const-string v2, ""

    if-eqz v0, :cond_7

    .line 2
    check-cast p0, Lcom/tangxiaolv/telegramgallery/TL/b;

    .line 3
    invoke-static {p0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->B(Lcom/tangxiaolv/telegramgallery/TL/b;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x2e

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v2

    .line 6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_4

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->h:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "audio/ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "video/mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    const-string p1, ".mp4"

    goto :goto_2

    :cond_3
    const-string p1, ".ogg"

    :cond_4
    :goto_2
    move-object v2, p1

    .line 9
    :cond_5
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v3, :cond_6

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_7
    instance-of v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;

    const-string v3, "jpg"

    const-string v4, "."

    if-eqz v0, :cond_b

    .line 13
    check-cast p0, Lcom/tangxiaolv/telegramgallery/TL/l;

    .line 14
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v0, :cond_a

    instance-of v0, v0, Lcom/tangxiaolv/telegramgallery/TL/d$c;

    if-eqz v0, :cond_8

    goto :goto_5

    .line 15
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget-wide v5, v2, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    move-object p1, v3

    .line 16
    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_5
    return-object v2

    .line 17
    :cond_b
    instance-of v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v0, :cond_e

    .line 18
    instance-of v0, p0, Lcom/tangxiaolv/telegramgallery/TL/d$c;

    if-eqz v0, :cond_c

    return-object v2

    .line 19
    :cond_c
    check-cast p0, Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_d

    goto :goto_6

    :cond_d
    move-object p1, v3

    :goto_6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v2
.end method

.method public static x(Ljava/util/ArrayList;I)Lcom/tangxiaolv/telegramgallery/TL/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/TL/l;",
            ">;I)",
            "Lcom/tangxiaolv/telegramgallery/TL/l;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->y(Ljava/util/ArrayList;IZ)Lcom/tangxiaolv/telegramgallery/TL/l;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/util/ArrayList;IZ)Lcom/tangxiaolv/telegramgallery/TL/l;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/TL/l;",
            ">;IZ)",
            "Lcom/tangxiaolv/telegramgallery/TL/l;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tangxiaolv/telegramgallery/TL/l;

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    const/high16 v4, -0x80000000

    const/16 v5, 0x64

    if-eqz p2, :cond_4

    .line 4
    iget v6, v3, Lcom/tangxiaolv/telegramgallery/TL/l;->f:I

    iget v7, v3, Lcom/tangxiaolv/telegramgallery/TL/l;->e:I

    if-lt v6, v7, :cond_2

    move v6, v7

    :cond_2
    if-eqz v0, :cond_7

    if-le p1, v5, :cond_3

    .line 5
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v5, :cond_3

    iget v5, v5, Lcom/tangxiaolv/telegramgallery/TL/d;->c:I

    if-eq v5, v4, :cond_7

    :cond_3
    instance-of v4, v3, Lcom/tangxiaolv/telegramgallery/TL/l$a;

    if-nez v4, :cond_7

    if-le p1, v2, :cond_8

    if-ge v2, v6, :cond_8

    goto :goto_2

    .line 6
    :cond_4
    iget v6, v3, Lcom/tangxiaolv/telegramgallery/TL/l;->e:I

    iget v7, v3, Lcom/tangxiaolv/telegramgallery/TL/l;->f:I

    if-lt v6, v7, :cond_5

    goto :goto_1

    :cond_5
    move v6, v7

    :goto_1
    if-eqz v0, :cond_7

    if-le p1, v5, :cond_6

    .line 7
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v5, :cond_6

    iget v5, v5, Lcom/tangxiaolv/telegramgallery/TL/d;->c:I

    if-eq v5, v4, :cond_7

    :cond_6
    instance-of v4, v3, Lcom/tangxiaolv/telegramgallery/TL/l$a;

    if-nez v4, :cond_7

    if-gt v6, p1, :cond_8

    if-ge v2, v6, :cond_8

    :cond_7
    :goto_2
    move-object v0, v3

    move v2, v6

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    :goto_4
    return-object v0
.end method


# virtual methods
.method public H(Ljava/lang/String;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    .line 2
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->b:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v4, Lcom/tangxiaolv/telegramgallery/Utils/d$b;

    invoke-direct {v4, p0, v2, p1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d$b;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/d;[Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    aget-object p1, v2, v1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public J(Lcom/tangxiaolv/telegramgallery/TL/b;ZZ)V
    .locals 7

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    iget-object p3, p1, Lcom/tangxiaolv/telegramgallery/TL/b;->l:[B

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    const/4 v6, 0x1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/tangxiaolv/telegramgallery/Utils/d;->I(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public K(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;IZ)V
    .locals 7

    if-nez p4, :cond_1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    iget-object p4, p1, Lcom/tangxiaolv/telegramgallery/TL/d;->g:[B

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    const/4 v6, 0x1

    :goto_1
    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/tangxiaolv/telegramgallery/Utils/d;->I(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public L(Lcom/tangxiaolv/telegramgallery/TL/l;Ljava/lang/String;Z)V
    .locals 7

    iget-object v2, p1, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget v4, p1, Lcom/tangxiaolv/telegramgallery/TL/l;->g:I

    if-nez p3, :cond_1

    if-eqz v4, :cond_1

    iget-object p1, v2, Lcom/tangxiaolv/telegramgallery/TL/d;->g:[B

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    const/4 v6, 0x1

    :goto_1
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/tangxiaolv/telegramgallery/Utils/d;->I(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public M(Lcom/tangxiaolv/telegramgallery/Utils/d$f;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->h:Lcom/tangxiaolv/telegramgallery/Utils/d$f;

    return-void
.end method

.method public N(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->a:Ljava/util/HashMap;

    return-void
.end method

.method public o(Lcom/tangxiaolv/telegramgallery/TL/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->p(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V

    return-void
.end method

.method public q(Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Utils/d;->p(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V

    return-void
.end method

.method public r(Lcom/tangxiaolv/telegramgallery/TL/l;)V
    .locals 1

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->p(Lcom/tangxiaolv/telegramgallery/TL/b;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V

    return-void
.end method

.method public s(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    return-object p1
.end method

.method public u(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->b:Lcom/tangxiaolv/telegramgallery/d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/d$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Utils/d$e;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/d;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z(I)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
