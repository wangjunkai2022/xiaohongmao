.class public final Lcom/giphy/sdk/analytics/batching/b;
.super Ljava/lang/Object;
.source "PingbackCollector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/analytics/batching/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\"B7\u0012\u0006\u0010E\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010I\u001a\u00020F\u0012\u0008\u0008\u0002\u0010J\u001a\u00020F\u0012\u0008\u0008\u0002\u0010N\u001a\u00020K\u0012\u0008\u0008\u0002\u0010O\u001a\u00020F\u00a2\u0006\u0004\u0008P\u0010QJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u001a\u0010\u000b\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u001a\u0010\u000c\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002Jl\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0008J\u0006\u0010\u001d\u001a\u00020\u0002J\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R#\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00040%8\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u001c\u0010.\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u001c\u00100\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010-R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u001a\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u001f058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0017\u0010>\u001a\u0002098\u0006\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0014\u0010E\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0014\u0010I\u001a\u00020F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0014\u0010J\u001a\u00020F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010HR\u0014\u0010N\u001a\u00020K8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0014\u0010O\u001a\u00020F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010H\u00a8\u0006R"
    }
    d2 = {
        "Lcom/giphy/sdk/analytics/batching/b;",
        "",
        "",
        "u",
        "Lcom/giphy/sdk/analytics/models/Session;",
        "session",
        "v",
        "t",
        "",
        "sessionId",
        "userId",
        "q",
        "w",
        "n",
        "s",
        "loggedInUserId",
        "analyticsResponsePayload",
        "referrer",
        "Lcom/giphy/sdk/analytics/models/enums/EventType;",
        "eventType",
        "mediaId",
        "tid",
        "Lcom/giphy/sdk/analytics/models/enums/ActionType;",
        "actionType",
        "layoutType",
        "",
        "position",
        "placement",
        "k",
        "m",
        "",
        "Lcom/giphy/sdk/analytics/batching/d$a;",
        "p",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "a",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "executorService",
        "Ljava/util/HashMap;",
        "b",
        "Ljava/util/HashMap;",
        "r",
        "()Ljava/util/HashMap;",
        "sessions",
        "Ljava/util/concurrent/ScheduledFuture;",
        "c",
        "Ljava/util/concurrent/ScheduledFuture;",
        "addPingbackFuture",
        "d",
        "submitReadySessionsFuture",
        "Lcom/giphy/sdk/analytics/batching/d;",
        "e",
        "Lcom/giphy/sdk/analytics/batching/d;",
        "eventWrapperRecycler",
        "",
        "f",
        "Ljava/util/List;",
        "pingbacksBatch",
        "Lcom/giphy/sdk/analytics/batching/a;",
        "g",
        "Lcom/giphy/sdk/analytics/batching/a;",
        "o",
        "()Lcom/giphy/sdk/analytics/batching/a;",
        "analyticsId",
        "Ljava/lang/Runnable;",
        "h",
        "Ljava/lang/Runnable;",
        "addPingbackRunnable",
        "i",
        "Ljava/lang/String;",
        "apiKey",
        "",
        "j",
        "Z",
        "isMainInstance",
        "enableVerificationMode",
        "Lcom/giphy/sdk/analytics/batching/c;",
        "l",
        "Lcom/giphy/sdk/analytics/batching/c;",
        "submissionQueue",
        "verificationMode",
        "<init>",
        "(Ljava/lang/String;ZZLcom/giphy/sdk/analytics/batching/c;Z)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static n:J

.field private static o:J

.field private static p:I

.field public static final q:Lcom/giphy/sdk/analytics/batching/b$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/analytics/models/Session;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/giphy/sdk/analytics/batching/d;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/giphy/sdk/analytics/batching/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/giphy/sdk/analytics/batching/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Ljava/lang/Runnable;

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Z

.field private final l:Lcom/giphy/sdk/analytics/batching/c;

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/analytics/batching/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/analytics/batching/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/analytics/batching/b;->q:Lcom/giphy/sdk/analytics/batching/b$a;

    const-wide/16 v0, 0xbb8

    .line 1
    sput-wide v0, Lcom/giphy/sdk/analytics/batching/b;->n:J

    const-wide/16 v0, 0x2710

    .line 2
    sput-wide v0, Lcom/giphy/sdk/analytics/batching/b;->o:J

    const/16 v0, 0x64

    .line 3
    sput v0, Lcom/giphy/sdk/analytics/batching/b;->p:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLcom/giphy/sdk/analytics/batching/c;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/giphy/sdk/analytics/batching/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "submissionQueue"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/b;->i:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/giphy/sdk/analytics/batching/b;->j:Z

    iput-boolean p3, p0, Lcom/giphy/sdk/analytics/batching/b;->k:Z

    iput-object p4, p0, Lcom/giphy/sdk/analytics/batching/b;->l:Lcom/giphy/sdk/analytics/batching/c;

    iput-boolean p5, p0, Lcom/giphy/sdk/analytics/batching/b;->m:Z

    .line 2
    new-instance p4, Lcom/giphy/sdk/analytics/batching/a;

    invoke-direct {p4, p1, p2, p3}, Lcom/giphy/sdk/analytics/batching/a;-><init>(Ljava/lang/String;ZZ)V

    iput-object p4, p0, Lcom/giphy/sdk/analytics/batching/b;->g:Lcom/giphy/sdk/analytics/batching/a;

    .line 3
    new-instance p1, Lcom/giphy/sdk/analytics/batching/b$b;

    invoke-direct {p1, p0}, Lcom/giphy/sdk/analytics/batching/b$b;-><init>(Lcom/giphy/sdk/analytics/batching/b;)V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/b;->h:Ljava/lang/Runnable;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-string p2, "Executors.newSingleThreadScheduledExecutor()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/b;->b:Ljava/util/HashMap;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/b;->f:Ljava/util/List;

    .line 7
    new-instance p1, Lcom/giphy/sdk/analytics/batching/d;

    invoke-direct {p1}, Lcom/giphy/sdk/analytics/batching/d;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/b;->e:Lcom/giphy/sdk/analytics/batching/d;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZLcom/giphy/sdk/analytics/batching/c;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 8
    new-instance p4, Lcom/giphy/sdk/analytics/batching/c;

    invoke-direct {p4, p1, v3, v4}, Lcom/giphy/sdk/analytics/batching/c;-><init>(Ljava/lang/String;ZZ)V

    :cond_2
    move-object v5, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    move v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/giphy/sdk/analytics/batching/b;-><init>(Ljava/lang/String;ZZLcom/giphy/sdk/analytics/batching/c;Z)V

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Lcom/giphy/sdk/analytics/batching/b;->n:J

    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    sget-wide v0, Lcom/giphy/sdk/analytics/batching/b;->o:J

    return-wide v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Lcom/giphy/sdk/analytics/batching/b;->p:I

    return v0
.end method

.method public static final synthetic d(Lcom/giphy/sdk/analytics/batching/b;)Lcom/giphy/sdk/analytics/batching/c;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/analytics/batching/b;->l:Lcom/giphy/sdk/analytics/batching/c;

    return-object p0
.end method

.method public static final synthetic e(Lcom/giphy/sdk/analytics/batching/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/analytics/batching/b;->s()V

    return-void
.end method

.method public static final synthetic f(Lcom/giphy/sdk/analytics/batching/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/analytics/batching/b;->t()V

    return-void
.end method

.method public static final synthetic g(J)V
    .locals 0

    sput-wide p0, Lcom/giphy/sdk/analytics/batching/b;->n:J

    return-void
.end method

.method public static final synthetic h(J)V
    .locals 0

    sput-wide p0, Lcom/giphy/sdk/analytics/batching/b;->o:J

    return-void
.end method

.method public static final synthetic i(I)V
    .locals 0

    sput p0, Lcom/giphy/sdk/analytics/batching/b;->p:I

    return-void
.end method

.method public static final synthetic j(Lcom/giphy/sdk/analytics/batching/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/analytics/batching/b;->u()V

    return-void
.end method

.method public static synthetic l(Lcom/giphy/sdk/analytics/batching/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/EventType;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/ActionType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p11

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Lcom/giphy/sdk/analytics/batching/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/EventType;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/ActionType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final q(Ljava/lang/String;Ljava/lang/String;)Lcom/giphy/sdk/analytics/models/Session;
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/giphy/sdk/analytics/batching/b;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giphy/sdk/analytics/models/Session;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/giphy/sdk/analytics/models/Session;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/giphy/sdk/analytics/models/Session;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/analytics/batching/b;->b:Ljava/util/HashMap;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final s()V
    .locals 20

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v2, v1, Lcom/giphy/sdk/analytics/batching/b;->f:Ljava/util/List;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, v1, Lcom/giphy/sdk/analytics/batching/b;->f:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v3, v1, Lcom/giphy/sdk/analytics/batching/b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    monitor-exit v2

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/giphy/sdk/analytics/batching/d$a;

    .line 8
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/giphy/sdk/analytics/batching/b;->q(Ljava/lang/String;Ljava/lang/String;)Lcom/giphy/sdk/analytics/models/Session;

    move-result-object v15

    .line 10
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 11
    sget-object v5, Lcom/giphy/sdk/analytics/models/enums/AttributeKey;->layout_type:Lcom/giphy/sdk/analytics/models/enums/AttributeKey;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->h()I

    move-result v4

    if-ltz v4, :cond_1

    .line 13
    sget-object v4, Lcom/giphy/sdk/analytics/models/enums/AttributeKey;->position:Lcom/giphy/sdk/analytics/models/enums/AttributeKey;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Integer.toString(pingbackWrapper.position)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 15
    sget-object v5, Lcom/giphy/sdk/analytics/models/enums/AttributeKey;->placement:Lcom/giphy/sdk/analytics/models/enums/AttributeKey;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_2
    invoke-virtual {v15}, Lcom/giphy/sdk/analytics/models/Session;->getEvents()Ljava/util/List;

    move-result-object v14

    new-instance v13, Lcom/giphy/sdk/analytics/models/AnalyticsEvent;

    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->b()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->c()Lcom/giphy/sdk/analytics/models/enums/EventType;

    move-result-object v6

    .line 18
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->a()Lcom/giphy/sdk/analytics/models/enums/ActionType;

    move-result-object v7

    .line 19
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->f()Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->l()Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->m()J

    move-result-wide v10

    .line 22
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->n()Ljava/lang/String;

    move-result-object v16

    .line 23
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->e()Ljava/lang/String;

    move-result-object v17

    .line 24
    iget-boolean v4, v1, Lcom/giphy/sdk/analytics/batching/b;->m:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->i()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const-string v4, ""

    :goto_1
    move-object/from16 v18, v4

    move-object v4, v13

    move-object/from16 v19, v2

    move-object v2, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v18

    .line 25
    invoke-direct/range {v4 .. v15}, Lcom/giphy/sdk/analytics/models/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/EventType;Lcom/giphy/sdk/analytics/models/enums/ActionType;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Le2/a;->j:Le2/a;

    invoke-virtual {v0}, Le2/a;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PINGBACK"

    .line 27
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "Event added %s %s %s | %s %s %s %s | %s | %s %s %s"

    const/16 v4, 0xb

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 28
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->a()Lcom/giphy/sdk/analytics/models/enums/ActionType;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 29
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->f()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 30
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->m()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 31
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 32
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->i()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 33
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->j()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 34
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->c()Lcom/giphy/sdk/analytics/models/enums/EventType;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 35
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->k()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 36
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 37
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->h()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    .line 38
    invoke-virtual {v3}, Lcom/giphy/sdk/analytics/batching/d$a;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    .line 39
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/giphy/sdk/analytics/models/Session;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/giphy/sdk/analytics/batching/b;->p:I

    if-lt v0, v2, :cond_5

    move-object/from16 v0, v17

    .line 42
    invoke-direct {v1, v0}, Lcom/giphy/sdk/analytics/batching/b;->v(Lcom/giphy/sdk/analytics/models/Session;)V

    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v2, v19

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v0

    .line 43
    iget-object v2, v1, Lcom/giphy/sdk/analytics/batching/b;->e:Lcom/giphy/sdk/analytics/batching/d;

    monitor-enter v2

    .line 44
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/giphy/sdk/analytics/batching/d$a;

    .line 45
    iget-object v4, v1, Lcom/giphy/sdk/analytics/batching/b;->e:Lcom/giphy/sdk/analytics/batching/d;

    const-string v5, "eventWrapper"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/giphy/sdk/analytics/batching/d;->c(Lcom/giphy/sdk/analytics/batching/d$a;)V

    goto :goto_2

    .line 46
    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    .line 48
    monitor-exit v2

    throw v0
.end method

.method private final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->d:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/giphy/sdk/analytics/batching/b$d;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/analytics/batching/b$d;-><init>(Lcom/giphy/sdk/analytics/batching/b;)V

    sget-wide v2, Lcom/giphy/sdk/analytics/batching/b;->o:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->d:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private final u()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "it.next().value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/giphy/sdk/analytics/models/Session;

    .line 4
    invoke-virtual {v1}, Lcom/giphy/sdk/analytics/models/Session;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v2, :cond_1

    .line 5
    sget-object v2, Le2/a;->j:Le2/a;

    invoke-virtual {v2}, Le2/a;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v1}, Lcom/giphy/sdk/analytics/models/Session;->getSessionId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/giphy/sdk/analytics/models/Session;->getEvents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 8
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Enqueueing session %s %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "PINGBACK"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/giphy/sdk/analytics/batching/b;->l:Lcom/giphy/sdk/analytics/batching/c;

    invoke-virtual {v2, v1}, Lcom/giphy/sdk/analytics/batching/c;->l(Lcom/giphy/sdk/analytics/models/Session;)V

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final v(Lcom/giphy/sdk/analytics/models/Session;)V
    .locals 4

    .line 1
    sget-object v0, Le2/a;->j:Le2/a;

    invoke-virtual {v0}, Le2/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/models/Session;->getSessionId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/models/Session;->getEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Enqueueing ready session %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PINGBACK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->l:Lcom/giphy/sdk/analytics/batching/c;

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/analytics/batching/c;->l(Lcom/giphy/sdk/analytics/models/Session;)V

    .line 6
    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/models/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/models/Session;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/giphy/sdk/analytics/batching/b;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-direct {p0, p2}, Lcom/giphy/sdk/analytics/batching/b;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/EventType;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/ActionType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/giphy/sdk/analytics/models/enums/EventType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lcom/giphy/sdk/analytics/models/enums/ActionType;
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
    .param p11    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object/from16 v1, p0

    const-string v0, "loggedInUserId"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsResponsePayload"

    move-object/from16 v6, p2

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaId"

    move-object/from16 v9, p5

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    move-object/from16 v11, p7

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v15, v1, Lcom/giphy/sdk/analytics/batching/b;->e:Lcom/giphy/sdk/analytics/batching/d;

    monitor-enter v15

    .line 2
    :try_start_0
    iget-object v2, v1, Lcom/giphy/sdk/analytics/batching/b;->e:Lcom/giphy/sdk/analytics/batching/d;

    iget-object v0, v1, Lcom/giphy/sdk/analytics/batching/b;->g:Lcom/giphy/sdk/analytics/batching/a;

    invoke-virtual {v0}, Lcom/giphy/sdk/analytics/batching/a;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v1, Lcom/giphy/sdk/analytics/batching/b;->g:Lcom/giphy/sdk/analytics/batching/a;

    invoke-virtual {v0}, Lcom/giphy/sdk/analytics/batching/a;->e()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v16, v15

    move-object/from16 v15, p11

    :try_start_1
    invoke-virtual/range {v2 .. v15}, Lcom/giphy/sdk/analytics/batching/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/EventType;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/ActionType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/giphy/sdk/analytics/batching/d$a;

    move-result-object v0

    .line 3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    monitor-exit v16

    .line 5
    iget-object v2, v1, Lcom/giphy/sdk/analytics/batching/b;->f:Ljava/util/List;

    monitor-enter v2

    .line 6
    :try_start_2
    iget-object v3, v1, Lcom/giphy/sdk/analytics/batching/b;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v4, "pingbackWrapper"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, v1, Lcom/giphy/sdk/analytics/batching/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    monitor-exit v2

    .line 9
    iget-object v2, v1, Lcom/giphy/sdk/analytics/batching/b;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    iget-object v2, v1, Lcom/giphy/sdk/analytics/batching/b;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    if-eqz p6, :cond_2

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/giphy/sdk/analytics/batching/b;->m()V

    goto :goto_0

    .line 12
    :cond_2
    sget v2, Lcom/giphy/sdk/analytics/batching/b;->p:I

    if-ge v0, v2, :cond_3

    .line 13
    iget-object v0, v1, Lcom/giphy/sdk/analytics/batching/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, v1, Lcom/giphy/sdk/analytics/batching/b;->h:Ljava/lang/Runnable;

    sget-wide v3, Lcom/giphy/sdk/analytics/batching/b;->n:J

    .line 14
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    invoke-interface {v0, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v1, Lcom/giphy/sdk/analytics/batching/b;->c:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, v1, Lcom/giphy/sdk/analytics/batching/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, v1, Lcom/giphy/sdk/analytics/batching/b;->h:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v16, v15

    .line 18
    :goto_1
    monitor-exit v16

    throw v0
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/giphy/sdk/analytics/batching/b$c;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/analytics/batching/b$c;-><init>(Lcom/giphy/sdk/analytics/batching/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o()Lcom/giphy/sdk/analytics/batching/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->g:Lcom/giphy/sdk/analytics/batching/a;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/analytics/batching/d$a;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->f:Ljava/util/List;

    return-object v0
.end method

.method public final r()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/analytics/models/Session;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/b;->b:Ljava/util/HashMap;

    return-object v0
.end method
