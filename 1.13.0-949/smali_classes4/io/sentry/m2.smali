.class public final Lio/sentry/m2;
.super Ljava/lang/Object;
.source "ProfilingTraceData.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/m2$c;,
        Lio/sentry/m2$b;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final C:Ljava/lang/String; = "production"

.field public static final D:Ljava/lang/String; = "normal"
    .annotation build Lm8/a$c;
    .end annotation
.end field

.field public static final E:Ljava/lang/String; = "timeout"
    .annotation build Lm8/a$c;
    .end annotation
.end field

.field public static final F:Ljava/lang/String; = "backgrounded"
    .annotation build Lm8/a$c;
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final a:Ljava/io/File;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/n2;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private w:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private x:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private y:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/a;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "dummy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/sentry/c2;->K()Lio/sentry/c2;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/m2;-><init>(Ljava/io/File;Lio/sentry/w0;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/m2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/m2;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lio/sentry/w0;)V
    .locals 18
    .param p1    # Ljava/io/File;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    move-object v2, v4

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lio/sentry/l2;->a:Lio/sentry/l2;

    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v17, v4

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v4, "0"

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "normal"

    invoke-direct/range {v0 .. v17}, Lio/sentry/m2;-><init>(Ljava/io/File;Ljava/util/List;Lio/sentry/w0;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/List;Lio/sentry/w0;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/Callable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p17    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lio/sentry/n2;",
            ">;",
            "Lio/sentry/w0;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/a;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/sentry/m2;->l:Ljava/util/List;

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lio/sentry/m2;->A:Ljava/lang/String;

    move-object v1, p1

    .line 7
    iput-object v1, v0, Lio/sentry/m2;->a:Ljava/io/File;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lio/sentry/m2;->k:Ljava/lang/String;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lio/sentry/m2;->b:Ljava/util/concurrent/Callable;

    move v1, p5

    .line 10
    iput v1, v0, Lio/sentry/m2;->c:I

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/sentry/m2;->d:Ljava/lang/String;

    const-string v1, ""

    if-eqz p8, :cond_0

    move-object v2, p8

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    iput-object v2, v0, Lio/sentry/m2;->e:Ljava/lang/String;

    if-eqz p9, :cond_1

    move-object v2, p9

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 13
    :goto_1
    iput-object v2, v0, Lio/sentry/m2;->f:Ljava/lang/String;

    if-eqz p10, :cond_2

    move-object v2, p10

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 14
    :goto_2
    iput-object v2, v0, Lio/sentry/m2;->i:Ljava/lang/String;

    if-eqz p11, :cond_3

    .line 15
    invoke-virtual {p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v0, Lio/sentry/m2;->j:Z

    if-eqz p12, :cond_4

    move-object v2, p12

    goto :goto_4

    :cond_4
    const-string v2, "0"

    .line 16
    :goto_4
    iput-object v2, v0, Lio/sentry/m2;->m:Ljava/lang/String;

    .line 17
    iput-object v1, v0, Lio/sentry/m2;->g:Ljava/lang/String;

    const-string v2, "android"

    .line 18
    iput-object v2, v0, Lio/sentry/m2;->h:Ljava/lang/String;

    .line 19
    iput-object v2, v0, Lio/sentry/m2;->n:Ljava/lang/String;

    if-eqz p13, :cond_5

    move-object/from16 v2, p13

    goto :goto_5

    :cond_5
    move-object v2, v1

    .line 20
    :goto_5
    iput-object v2, v0, Lio/sentry/m2;->o:Ljava/lang/String;

    move-object v2, p2

    .line 21
    iput-object v2, v0, Lio/sentry/m2;->p:Ljava/util/List;

    .line 22
    invoke-interface {p3}, Lio/sentry/w0;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lio/sentry/m2;->q:Ljava/lang/String;

    move-object v2, p4

    .line 23
    iput-object v2, v0, Lio/sentry/m2;->r:Ljava/lang/String;

    .line 24
    iput-object v1, v0, Lio/sentry/m2;->s:Ljava/lang/String;

    if-eqz p14, :cond_6

    move-object/from16 v1, p14

    .line 25
    :cond_6
    iput-object v1, v0, Lio/sentry/m2;->t:Ljava/lang/String;

    .line 26
    invoke-interface {p3}, Lio/sentry/w0;->m()Lio/sentry/protocol/n;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/sentry/m2;->u:Ljava/lang/String;

    .line 27
    invoke-interface {p3}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/f5;->j()Lio/sentry/protocol/n;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/sentry/m2;->v:Ljava/lang/String;

    .line 28
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/sentry/m2;->w:Ljava/lang/String;

    if-eqz p15, :cond_7

    move-object/from16 v1, p15

    goto :goto_6

    :cond_7
    const-string v1, "production"

    .line 29
    :goto_6
    iput-object v1, v0, Lio/sentry/m2;->x:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 30
    iput-object v1, v0, Lio/sentry/m2;->y:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lio/sentry/m2;->Z()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "normal"

    .line 32
    iput-object v1, v0, Lio/sentry/m2;->y:Ljava/lang/String;

    :cond_8
    move-object/from16 v1, p17

    .line 33
    iput-object v1, v0, Lio/sentry/m2;->z:Ljava/util/Map;

    return-void
.end method

.method private Z()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/m2;->y:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/m2;->y:Ljava/lang/String;

    const-string v1, "timeout"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/m2;->y:Ljava/lang/String;

    const-string v1, "backgrounded"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    invoke-static {}, Lio/sentry/m2;->a0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic a0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic b(Lio/sentry/m2;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lio/sentry/m2;I)I
    .locals 0

    iput p1, p0, Lio/sentry/m2;->c:I

    return p1
.end method

.method static synthetic d(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k(Lio/sentry/m2;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/sentry/m2;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic l(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic m(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic n(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic o(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic p(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic q(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic r(Lio/sentry/m2;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/sentry/m2;->z:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic s(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic t(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic u(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic v(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic w(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic x(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic y(Lio/sentry/m2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/sentry/m2;->j:Z

    return p1
.end method

.method static synthetic z(Lio/sentry/m2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/m2;->k:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lio/sentry/m2;->c:I

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->o:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->k:Ljava/lang/String;

    return-object v0
.end method

.method public D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->l:Ljava/util/List;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->e:Ljava/lang/String;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->f:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->g:Ljava/lang/String;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->h:Ljava/lang/String;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->i:Ljava/lang/String;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->m:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->r:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->x:Ljava/lang/String;

    return-object v0
.end method

.method public N()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/a;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->z:Ljava/util/Map;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->n:Ljava/lang/String;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->w:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->t:Ljava/lang/String;

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->A:Ljava/lang/String;

    return-object v0
.end method

.method public S()Ljava/io/File;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->a:Ljava/io/File;

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->v:Ljava/lang/String;

    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->u:Ljava/lang/String;

    return-object v0
.end method

.method public V()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->q:Ljava/lang/String;

    return-object v0
.end method

.method public W()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/n2;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->p:Ljava/util/List;

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->y:Ljava/lang/String;

    return-object v0
.end method

.method public Y()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/m2;->j:Z

    return v0
.end method

.method public b0()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/sentry/m2;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/sentry/m2;->l:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c0(I)V
    .locals 0

    iput p1, p0, Lio/sentry/m2;->c:I

    return-void
.end method

.method public d0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->o:Ljava/lang/String;

    return-void
.end method

.method public e0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->k:Ljava/lang/String;

    return-void
.end method

.method public f0(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/m2;->l:Ljava/util/List;

    return-void
.end method

.method public g0(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/m2;->j:Z

    return-void
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/m2;->B:Ljava/util/Map;

    return-object v0
.end method

.method public h0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->d:Ljava/lang/String;

    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->e:Ljava/lang/String;

    return-void
.end method

.method public j0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->f:Ljava/lang/String;

    return-void
.end method

.method public k0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->g:Ljava/lang/String;

    return-void
.end method

.method public l0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->i:Ljava/lang/String;

    return-void
.end method

.method public m0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->m:Ljava/lang/String;

    return-void
.end method

.method public n0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->r:Ljava/lang/String;

    return-void
.end method

.method public o0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->x:Ljava/lang/String;

    return-void
.end method

.method public p0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->w:Ljava/lang/String;

    return-void
.end method

.method public q0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->t:Ljava/lang/String;

    return-void
.end method

.method public r0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->A:Ljava/lang/String;

    return-void
.end method

.method public s0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->v:Ljava/lang/String;

    return-void
.end method

.method public serialize(Lio/sentry/k1;Lio/sentry/o0;)V
    .locals 3
    .param p1    # Lio/sentry/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->h()Lio/sentry/vendor/gson/stream/c;

    const-string v0, "android_api_level"

    .line 2
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget v1, p0, Lio/sentry/m2;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "device_locale"

    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->d:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "device_manufacturer"

    .line 4
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "device_model"

    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "device_os_build_number"

    .line 6
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "device_os_name"

    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "device_os_version"

    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "device_is_emulator"

    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/m2;->j:Z

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->n0(Z)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "architecture"

    .line 10
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->k:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "device_cpu_frequencies"

    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->l:Ljava/util/List;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "device_physical_memory_bytes"

    .line 12
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "platform"

    .line 13
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "build_id"

    .line 14
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "transaction_name"

    .line 15
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "duration_ns"

    .line 16
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "version_name"

    .line 17
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "version_code"

    .line 18
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 19
    iget-object v0, p0, Lio/sentry/m2;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "transactions"

    .line 20
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->p:Ljava/util/List;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    :cond_0
    const-string v0, "transaction_id"

    .line 21
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "trace_id"

    .line 22
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "profile_id"

    .line 23
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "environment"

    .line 24
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    const-string v0, "truncation_reason"

    .line 25
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 26
    iget-object v0, p0, Lio/sentry/m2;->A:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "sampled_profile"

    .line 27
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    :cond_1
    const-string v0, "measurements"

    .line 28
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/m2;->z:Ljava/util/Map;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 29
    iget-object v0, p0, Lio/sentry/m2;->B:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    iget-object v2, p0, Lio/sentry/m2;->B:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 33
    invoke-virtual {p1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->p()Lio/sentry/vendor/gson/stream/c;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/m2;->B:Ljava/util/Map;

    return-void
.end method

.method public t0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->u:Ljava/lang/String;

    return-void
.end method

.method public u0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->q:Ljava/lang/String;

    return-void
.end method

.method public v0(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/n2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/m2;->p:Ljava/util/List;

    return-void
.end method

.method public w0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/m2;->y:Ljava/lang/String;

    return-void
.end method
