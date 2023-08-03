.class public Lcom/google/android/exoplayer2/ui/n;
.super Ljava/lang/Object;
.source "PlayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/n$f;,
        Lcom/google/android/exoplayer2/ui/n$h;,
        Lcom/google/android/exoplayer2/ui/n$i;,
        Lcom/google/android/exoplayer2/ui/n$j;,
        Lcom/google/android/exoplayer2/ui/n$b;,
        Lcom/google/android/exoplayer2/ui/n$c;,
        Lcom/google/android/exoplayer2/ui/n$g;,
        Lcom/google/android/exoplayer2/ui/n$d;,
        Lcom/google/android/exoplayer2/ui/n$e;
    }
.end annotation


# static fields
.field public static final N:Ljava/lang/String; = "com.google.android.exoplayer.play"

.field public static final O:Ljava/lang/String; = "com.google.android.exoplayer.pause"

.field public static final P:Ljava/lang/String; = "com.google.android.exoplayer.prev"

.field public static final Q:Ljava/lang/String; = "com.google.android.exoplayer.next"

.field public static final R:Ljava/lang/String; = "com.google.android.exoplayer.ffwd"

.field public static final S:Ljava/lang/String; = "com.google.android.exoplayer.rewind"

.field public static final T:Ljava/lang/String; = "com.google.android.exoplayer.stop"

.field public static final U:Ljava/lang/String; = "INSTANCE_ID"

.field private static final V:Ljava/lang/String; = "com.google.android.exoplayer.dismiss"

.field private static final W:I = 0x0

.field private static final X:I = 0x1

.field private static Y:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:I

.field private H:I

.field private I:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private J:I

.field private K:I

.field private L:Z

.field private M:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/ui/n$e;

.field private final e:Lcom/google/android/exoplayer2/ui/n$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/google/android/exoplayer2/ui/n$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Landroid/os/Handler;

.field private final h:Landroidx/core/app/NotificationManagerCompat;

.field private final i:Landroid/content/IntentFilter;

.field private final j:Lcom/google/android/exoplayer2/v1$f;

.field private final k:Lcom/google/android/exoplayer2/ui/n$f;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/app/PendingIntent;

.field private final o:I

.field private final p:Lcom/google/android/exoplayer2/s2$d;

.field private q:Landroidx/core/app/NotificationCompat$Builder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/google/android/exoplayer2/v1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Lcom/google/android/exoplayer2/u1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Lcom/google/android/exoplayer2/j;

.field private v:Z

.field private w:I

.field private x:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/n;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;Lcom/google/android/exoplayer2/ui/n$d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$d;)V
    .locals 7
    .param p5    # Lcom/google/android/exoplayer2/ui/n$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/n;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;Lcom/google/android/exoplayer2/ui/n$d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;)V
    .locals 7
    .param p5    # Lcom/google/android/exoplayer2/ui/n$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/n;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;Lcom/google/android/exoplayer2/ui/n$d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;Lcom/google/android/exoplayer2/ui/n$d;)V
    .locals 16
    .param p5    # Lcom/google/android/exoplayer2/ui/n$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/ui/n$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    sget v7, Lcom/google/android/exoplayer2/ui/q$e;->c0:I

    sget v8, Lcom/google/android/exoplayer2/ui/q$e;->Z:I

    sget v9, Lcom/google/android/exoplayer2/ui/q$e;->Y:I

    sget v10, Lcom/google/android/exoplayer2/ui/q$e;->d0:I

    sget v11, Lcom/google/android/exoplayer2/ui/q$e;->b0:I

    sget v12, Lcom/google/android/exoplayer2/ui/q$e;->W:I

    sget v13, Lcom/google/android/exoplayer2/ui/q$e;->a0:I

    sget v14, Lcom/google/android/exoplayer2/ui/q$e;->X:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/ui/n;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;Lcom/google/android/exoplayer2/ui/n$d;IIIIIIIILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;Lcom/google/android/exoplayer2/ui/n$d;IIIIIIIILjava/lang/String;)V
    .locals 12
    .param p5    # Lcom/google/android/exoplayer2/ui/n$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/ui/n$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 8
    iput-object v11, v0, Lcom/google/android/exoplayer2/ui/n;->a:Landroid/content/Context;

    move-object v2, p2

    .line 9
    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->b:Ljava/lang/String;

    move v2, p3

    .line 10
    iput v2, v0, Lcom/google/android/exoplayer2/ui/n;->c:I

    move-object/from16 v2, p4

    .line 11
    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->d:Lcom/google/android/exoplayer2/ui/n$e;

    move-object/from16 v2, p5

    .line 12
    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->e:Lcom/google/android/exoplayer2/ui/n$g;

    .line 13
    iput-object v1, v0, Lcom/google/android/exoplayer2/ui/n;->f:Lcom/google/android/exoplayer2/ui/n$d;

    move/from16 v2, p7

    .line 14
    iput v2, v0, Lcom/google/android/exoplayer2/ui/n;->I:I

    move-object/from16 v2, p15

    .line 15
    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->M:Ljava/lang/String;

    .line 16
    new-instance v2, Lcom/google/android/exoplayer2/k;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/k;-><init>()V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->u:Lcom/google/android/exoplayer2/j;

    .line 17
    new-instance v2, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->p:Lcom/google/android/exoplayer2/s2$d;

    .line 18
    sget v3, Lcom/google/android/exoplayer2/ui/n;->Y:I

    add-int/lit8 v2, v3, 0x1

    sput v2, Lcom/google/android/exoplayer2/ui/n;->Y:I

    iput v3, v0, Lcom/google/android/exoplayer2/ui/n;->o:I

    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v4, Lcom/google/android/exoplayer2/ui/m;

    invoke-direct {v4, p0}, Lcom/google/android/exoplayer2/ui/m;-><init>(Lcom/google/android/exoplayer2/ui/n;)V

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/z0;->y(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v2

    .line 20
    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->g:Landroid/os/Handler;

    .line 21
    invoke-static {v11}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->h:Landroidx/core/app/NotificationManagerCompat;

    .line 22
    new-instance v2, Lcom/google/android/exoplayer2/ui/n$h;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/google/android/exoplayer2/ui/n$h;-><init>(Lcom/google/android/exoplayer2/ui/n;Lcom/google/android/exoplayer2/ui/n$a;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->j:Lcom/google/android/exoplayer2/v1$f;

    .line 23
    new-instance v2, Lcom/google/android/exoplayer2/ui/n$f;

    invoke-direct {v2, p0, v4}, Lcom/google/android/exoplayer2/ui/n$f;-><init>(Lcom/google/android/exoplayer2/ui/n;Lcom/google/android/exoplayer2/ui/n$a;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->k:Lcom/google/android/exoplayer2/ui/n$f;

    .line 24
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->i:Landroid/content/IntentFilter;

    const/4 v2, 0x1

    .line 25
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/n;->y:Z

    .line 26
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/n;->z:Z

    .line 27
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/n;->C:Z

    .line 28
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/n;->F:Z

    .line 29
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/n;->L:Z

    const/4 v4, 0x0

    .line 30
    iput v4, v0, Lcom/google/android/exoplayer2/ui/n;->H:I

    .line 31
    iput v4, v0, Lcom/google/android/exoplayer2/ui/n;->G:I

    const/4 v4, -0x1

    .line 32
    iput v4, v0, Lcom/google/android/exoplayer2/ui/n;->K:I

    .line 33
    iput v2, v0, Lcom/google/android/exoplayer2/ui/n;->E:I

    .line 34
    iput v2, v0, Lcom/google/android/exoplayer2/ui/n;->J:I

    move-object v2, v11

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p14

    .line 35
    invoke-static/range {v2 .. v10}, Lcom/google/android/exoplayer2/ui/n;->n(Landroid/content/Context;IIIIIIII)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/n;->l:Ljava/util/Map;

    .line 36
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/n;->i:Landroid/content/IntentFilter;

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 38
    iget v2, v0, Lcom/google/android/exoplayer2/ui/n;->o:I

    invoke-interface {v1, v11, v2}, Lcom/google/android/exoplayer2/ui/n$d;->b(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 39
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/google/android/exoplayer2/ui/n;->m:Ljava/util/Map;

    .line 40
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/n;->i:Landroid/content/IntentFilter;

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_2

    .line 42
    :cond_2
    iget v1, v0, Lcom/google/android/exoplayer2/ui/n;->o:I

    const-string v2, "com.google.android.exoplayer.dismiss"

    invoke-static {v2, v11, v1}, Lcom/google/android/exoplayer2/ui/n;->l(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ui/n;->n:Landroid/app/PendingIntent;

    .line 43
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/n;->i:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;Lcom/google/android/exoplayer2/ui/n$d;IIIIIIIILjava/lang/String;Lcom/google/android/exoplayer2/ui/n$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p15}, Lcom/google/android/exoplayer2/ui/n;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;Lcom/google/android/exoplayer2/ui/n$d;IIIIIIIILjava/lang/String;)V

    return-void
.end method

.method private static F(Landroidx/core/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private W(Lcom/google/android/exoplayer2/v1;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->Q0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private X(Lcom/google/android/exoplayer2/v1;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/n;->u(Lcom/google/android/exoplayer2/v1;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/n;->q:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/android/exoplayer2/ui/n;->m(Lcom/google/android/exoplayer2/v1;Landroidx/core/app/NotificationCompat$Builder;ZLandroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/n;->q:Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ui/n;->Y(Z)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/n;->h:Landroidx/core/app/NotificationManagerCompat;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/n;->c:I

    invoke-virtual {v1, v2, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/n;->v:Z

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/n;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/n;->k:Lcom/google/android/exoplayer2/ui/n$f;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/n;->i:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/n;->e:Lcom/google/android/exoplayer2/ui/n$g;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 9
    iget v3, p0, Lcom/google/android/exoplayer2/ui/n;->c:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->v:Z

    if-nez v0, :cond_3

    :cond_2
    const/4 p2, 0x1

    :cond_3
    invoke-interface {v1, v3, p1, p2}, Lcom/google/android/exoplayer2/ui/n$g;->a(ILandroid/app/Notification;Z)V

    .line 10
    :cond_4
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ui/n;->v:Z

    return-void
.end method

.method private Y(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->v:Z

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/n;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->h:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/n;->c:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/n;->k:Lcom/google/android/exoplayer2/ui/n$f;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->e:Lcom/google/android/exoplayer2/ui/n$g;

    if-eqz v0, :cond_0

    .line 7
    iget v1, p0, Lcom/google/android/exoplayer2/ui/n;->c:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/n$g;->b(IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ui/n;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/n;->v(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/n;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/n;->y(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/n;)Lcom/google/android/exoplayer2/j;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/n;->u:Lcom/google/android/exoplayer2/j;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/n;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/n;->Y(Z)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/n;)Lcom/google/android/exoplayer2/ui/n$d;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/n;->f:Lcom/google/android/exoplayer2/ui/n$d;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/n;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/n;->m:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/n;->x()V

    return-void
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/n;)Lcom/google/android/exoplayer2/v1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/n;->s:Lcom/google/android/exoplayer2/v1;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/n;->v:Z

    return p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/n;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/ui/n;->o:I

    return p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/n;)Lcom/google/android/exoplayer2/u1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/n;->t:Lcom/google/android/exoplayer2/u1;

    return-object p0
.end method

.method private static l(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "INSTANCE_ID"

    .line 2
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/high16 v0, 0xc000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    .line 4
    :goto_0
    invoke-static {p1, p2, p0, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static n(Landroid/content/Context;IIIIIIII)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIIIIIII)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    sget v2, Lcom/google/android/exoplayer2/ui/q$k;->l:I

    .line 3
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.exoplayer.play"

    .line 4
    invoke-static {v3, p0, p1}, Lcom/google/android/exoplayer2/ui/n;->l(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, p2, v2, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 5
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p2, Landroidx/core/app/NotificationCompat$Action;

    sget v1, Lcom/google/android/exoplayer2/ui/q$k;->k:I

    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.exoplayer.pause"

    .line 8
    invoke-static {v2, p0, p1}, Lcom/google/android/exoplayer2/ui/n;->l(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {p2, p3, v1, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 9
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p2, Landroidx/core/app/NotificationCompat$Action;

    sget p3, Lcom/google/android/exoplayer2/ui/q$k;->y:I

    .line 11
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "com.google.android.exoplayer.stop"

    .line 12
    invoke-static {v1, p0, p1}, Lcom/google/android/exoplayer2/ui/n;->l(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {p2, p4, p3, v2}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 13
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p2, Landroidx/core/app/NotificationCompat$Action;

    sget p3, Lcom/google/android/exoplayer2/ui/q$k;->s:I

    .line 15
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.google.android.exoplayer.rewind"

    .line 16
    invoke-static {p4, p0, p1}, Lcom/google/android/exoplayer2/ui/n;->l(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p2, p5, p3, v1}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 17
    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p2, Landroidx/core/app/NotificationCompat$Action;

    sget p3, Lcom/google/android/exoplayer2/ui/q$k;->d:I

    .line 19
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.google.android.exoplayer.ffwd"

    .line 20
    invoke-static {p4, p0, p1}, Lcom/google/android/exoplayer2/ui/n;->l(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p5

    invoke-direct {p2, p6, p3, p5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 21
    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance p2, Landroidx/core/app/NotificationCompat$Action;

    sget p3, Lcom/google/android/exoplayer2/ui/q$k;->o:I

    .line 23
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.google.android.exoplayer.prev"

    .line 24
    invoke-static {p4, p0, p1}, Lcom/google/android/exoplayer2/ui/n;->l(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p5

    invoke-direct {p2, p7, p3, p5}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 25
    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance p2, Landroidx/core/app/NotificationCompat$Action;

    sget p3, Lcom/google/android/exoplayer2/ui/q$k;->h:I

    .line 27
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.google.android.exoplayer.next"

    .line 28
    invoke-static {p4, p0, p1}, Lcom/google/android/exoplayer2/ui/n;->l(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {p2, p8, p3, p0}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 29
    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;IIILcom/google/android/exoplayer2/ui/n$e;)Lcom/google/android/exoplayer2/ui/n;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/util/f0;->a(Landroid/content/Context;Ljava/lang/String;III)V

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/ui/n;

    invoke-direct {p2, p0, p1, p4, p5}, Lcom/google/android/exoplayer2/ui/n;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;)V

    return-object p2
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;IIILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;)Lcom/google/android/exoplayer2/ui/n;
    .locals 7
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/ui/n$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/util/f0;->a(Landroid/content/Context;Ljava/lang/String;III)V

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/ui/n;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ui/n;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;)V

    return-object p2
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;IILcom/google/android/exoplayer2/ui/n$e;)Lcom/google/android/exoplayer2/ui/n;
    .locals 6
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/n;->o(Landroid/content/Context;Ljava/lang/String;IIILcom/google/android/exoplayer2/ui/n$e;)Lcom/google/android/exoplayer2/ui/n;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;IILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;)Lcom/google/android/exoplayer2/ui/n;
    .locals 7
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/ui/n$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/n;->p(Landroid/content/Context;Ljava/lang/String;IIILcom/google/android/exoplayer2/ui/n$e;Lcom/google/android/exoplayer2/ui/n$g;)Lcom/google/android/exoplayer2/ui/n;

    move-result-object p0

    return-object p0
.end method

.method private v(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->s:Lcom/google/android/exoplayer2/v1;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/n;->v:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/ui/n;->w:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/n;->X(Lcom/google/android/exoplayer2/v1;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/n;->s:Lcom/google/android/exoplayer2/v1;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/n;->X(Lcom/google/android/exoplayer2/v1;Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return v1
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private y(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 2
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->H:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/ui/n;->H:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public final B(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->F:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/n;->F:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public final C(Lcom/google/android/exoplayer2/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->u:Lcom/google/android/exoplayer2/j;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/n;->u:Lcom/google/android/exoplayer2/j;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public final D(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->G:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/ui/n;->G:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public final E(J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->u:Lcom/google/android/exoplayer2/j;

    instance-of v1, v0, Lcom/google/android/exoplayer2/k;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/exoplayer2/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/k;->q(J)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public final G(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->x:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/n;->x:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public H(Lcom/google/android/exoplayer2/u1;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/u1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/n;->t:Lcom/google/android/exoplayer2/u1;

    return-void
.end method

.method public final I(Lcom/google/android/exoplayer2/v1;)V
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/v1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->B0()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->s:Lcom/google/android/exoplayer2/v1;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/n;->j:Lcom/google/android/exoplayer2/v1$f;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v1;->g0(Lcom/google/android/exoplayer2/v1$f;)V

    if-nez p1, :cond_4

    .line 5
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ui/n;->Y(Z)V

    .line 6
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/n;->s:Lcom/google/android/exoplayer2/v1;

    if-eqz p1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->j:Lcom/google/android/exoplayer2/v1$f;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/v1;->c1(Lcom/google/android/exoplayer2/v1$f;)V

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/n;->x()V

    :cond_5
    return-void
.end method

.method public final J(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->K:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :cond_2
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/n;->K:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    return-void
.end method

.method public final K(J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->u:Lcom/google/android/exoplayer2/j;

    instance-of v1, v0, Lcom/google/android/exoplayer2/k;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/exoplayer2/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/k;->r(J)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public final L(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->I:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/ui/n;->I:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public final M(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->L:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/n;->L:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public final N(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/n;->P(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/n;->S(Z)V

    return-void
.end method

.method public final O(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/n;->Q(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/n;->T(Z)V

    return-void
.end method

.method public P(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->z:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/n;->z:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public Q(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->B:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/n;->B:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public final R(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->C:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/n;->C:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public S(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->y:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/n;->y:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public T(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->A:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/n;->A:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    :cond_0
    return-void
.end method

.method public final U(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->D:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/n;->D:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    return-void
.end method

.method public final V(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->J:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 3
    :cond_2
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/n;->J:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    return-void
.end method

.method protected m(Lcom/google/android/exoplayer2/v1;Landroidx/core/app/NotificationCompat$Builder;ZLandroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 8
    .param p2    # Landroidx/core/app/NotificationCompat$Builder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/n;->r:Ljava/util/List;

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/n;->t(Lcom/google/android/exoplayer2/v1;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 6
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/n;->l:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/n;->l:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    goto :goto_1

    .line 9
    :cond_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/n;->m:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    :goto_1
    if-eqz v6, :cond_2

    .line 10
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 11
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/n;->r:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 12
    :cond_4
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/n;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/n;->b:Ljava/lang/String;

    invoke-direct {p2, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/n;->r:Ljava/util/List;

    const/4 v5, 0x0

    .line 14
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 15
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {p2, v6}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 16
    :cond_5
    new-instance v3, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v3}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 17
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/n;->x:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v5, :cond_6

    .line 18
    invoke-virtual {v3, v5}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 19
    :cond_6
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/n;->s(Ljava/util/List;Lcom/google/android/exoplayer2/v1;)[I

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    xor-int/lit8 v0, p3, 0x1

    .line 20
    invoke-virtual {v3, v0}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowCancelButton(Z)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->n:Landroid/app/PendingIntent;

    invoke-virtual {v3, v0}, Landroidx/media/app/NotificationCompat$MediaStyle;->setCancelButtonIntent(Landroid/app/PendingIntent;)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 22
    invoke-virtual {p2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->n:Landroid/app/PendingIntent;

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 24
    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->E:I

    .line 25
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->H:I

    .line 27
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->F:Z

    .line 28
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->I:I

    .line 29
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->J:I

    .line 30
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->K:I

    .line 31
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->G:I

    .line 32
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 33
    sget p3, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v0, 0x15

    if-lt p3, v0, :cond_7

    iget-boolean p3, p0, Lcom/google/android/exoplayer2/ui/n;->L:Z

    if-eqz p3, :cond_7

    .line 34
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 35
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result p3

    if-nez p3, :cond_7

    .line 36
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->b0()Z

    move-result p3

    if-nez p3, :cond_7

    .line 37
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->e()Lcom/google/android/exoplayer2/t1;

    move-result-object p3

    iget p3, p3, Lcom/google/android/exoplayer2/t1;->a:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_7

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->o1()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 39
    invoke-virtual {p3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 40
    invoke-virtual {p3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    .line 41
    :cond_7
    invoke-virtual {p2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 42
    :goto_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/n;->d:Lcom/google/android/exoplayer2/ui/n$e;

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/ui/n$e;->b(Lcom/google/android/exoplayer2/v1;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 43
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/n;->d:Lcom/google/android/exoplayer2/ui/n$e;

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/ui/n$e;->c(Lcom/google/android/exoplayer2/v1;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 44
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/n;->d:Lcom/google/android/exoplayer2/ui/n$e;

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/ui/n$e;->e(Lcom/google/android/exoplayer2/v1;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-nez p4, :cond_8

    .line 45
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/n;->d:Lcom/google/android/exoplayer2/ui/n$e;

    new-instance p4, Lcom/google/android/exoplayer2/ui/n$b;

    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->w:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/ui/n;->w:I

    invoke-direct {p4, p0, v0, v1}, Lcom/google/android/exoplayer2/ui/n$b;-><init>(Lcom/google/android/exoplayer2/ui/n;ILcom/google/android/exoplayer2/ui/n$a;)V

    .line 46
    invoke-interface {p3, p1, p4}, Lcom/google/android/exoplayer2/ui/n$e;->d(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/ui/n$b;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 47
    :cond_8
    invoke-static {p2, p4}, Lcom/google/android/exoplayer2/ui/n;->F(Landroidx/core/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;)V

    .line 48
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/n;->d:Lcom/google/android/exoplayer2/ui/n$e;

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/ui/n$e;->a(Lcom/google/android/exoplayer2/v1;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 49
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/n;->M:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 50
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 51
    :cond_9
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object p2
.end method

.method protected s(Ljava/util/List;Lcom/google/android/exoplayer2/v1;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/v1;",
            ")[I"
        }
    .end annotation

    const-string v0, "com.google.android.exoplayer.pause"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "com.google.android.exoplayer.play"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/n;->A:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const-string v2, "com.google.android.exoplayer.prev"

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 4
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/n;->B:Z

    if-eqz v4, :cond_1

    const-string v4, "com.google.android.exoplayer.next"

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    aput v2, v4, v5

    const/4 v5, 0x1

    .line 5
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ui/n;->W(Lcom/google/android/exoplayer2/v1;)Z

    move-result p2

    if-eq v0, v3, :cond_3

    if-eqz p2, :cond_3

    add-int/lit8 p2, v5, 0x1

    .line 6
    aput v0, v4, v5

    :goto_2
    move v5, p2

    goto :goto_3

    :cond_3
    if-eq v1, v3, :cond_4

    if-nez p2, :cond_4

    add-int/lit8 p2, v5, 0x1

    .line 7
    aput v1, v4, v5

    goto :goto_2

    :cond_4
    :goto_3
    if-eq p1, v3, :cond_5

    add-int/lit8 p2, v5, 0x1

    .line 8
    aput p1, v4, v5

    move v5, p2

    .line 9
    :cond_5
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    return-object p1
.end method

.method protected t(Lcom/google/android/exoplayer2/v1;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/v1;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x4

    .line 3
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/v1;->t0(I)Z

    move-result v1

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/n;->p:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    const/4 v0, 0x1

    if-nez v1, :cond_1

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/n;->p:Lcom/google/android/exoplayer2/s2$d;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/s2$d;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    .line 7
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/v1;->t0(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 8
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/n;->u:Lcom/google/android/exoplayer2/j;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/j;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/n;->u:Lcom/google/android/exoplayer2/j;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/j;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 10
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/n;->p:Lcom/google/android/exoplayer2/s2$d;

    .line 11
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/s2$d;->j()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/n;->p:Lcom/google/android/exoplayer2/s2$d;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/s2$d;->i:Z

    if-nez v5, :cond_5

    :cond_4
    const/4 v5, 0x5

    .line 12
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/v1;->t0(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    move v0, v2

    move v2, v3

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 13
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/n;->y:Z

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    const-string v2, "com.google.android.exoplayer.prev"

    .line 15
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v4, :cond_9

    const-string v2, "com.google.android.exoplayer.rewind"

    .line 16
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_9
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/n;->C:Z

    if-eqz v2, :cond_b

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/n;->W(Lcom/google/android/exoplayer2/v1;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.google.android.exoplayer.pause"

    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    const-string v2, "com.google.android.exoplayer.play"

    .line 20
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    if-eqz v1, :cond_c

    const-string v1, "com.google.android.exoplayer.ffwd"

    .line 21
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_c
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/n;->z:Z

    if-eqz v1, :cond_d

    if-eqz v0, :cond_d

    const-string v0, "com.google.android.exoplayer.next"

    .line 23
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/n;->f:Lcom/google/android/exoplayer2/ui/n$d;

    if-eqz v0, :cond_e

    .line 25
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ui/n$d;->a(Lcom/google/android/exoplayer2/v1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_e
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/n;->D:Z

    if-eqz p1, :cond_f

    const-string p1, "com.google.android.exoplayer.stop"

    .line 27
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-object v3
.end method

.method protected u(Lcom/google/android/exoplayer2/v1;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->Q0()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public w()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/n;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/n;->x()V

    :cond_0
    return-void
.end method

.method public final z(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/n;->E:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :cond_2
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/n;->E:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/n;->w()V

    return-void
.end method
