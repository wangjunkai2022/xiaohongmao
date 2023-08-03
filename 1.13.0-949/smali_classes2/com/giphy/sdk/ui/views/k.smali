.class public final Lcom/giphy/sdk/ui/views/k;
.super Ljava/lang/Object;
.source "GPHVideoPlayer.kt"

# interfaces
.implements Lcom/google/android/exoplayer2/v1$f;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGPHVideoPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GPHVideoPlayer.kt\ncom/giphy/sdk/ui/views/GPHVideoPlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,416:1\n1819#2,2:417\n1819#2,2:419\n1819#2,2:421\n1819#2,2:423\n1819#2,2:425\n1819#2,2:427\n1819#2,2:429\n*E\n*S KotlinDebug\n*F\n+ 1 GPHVideoPlayer.kt\ncom/giphy/sdk/ui/views/GPHVideoPlayer\n*L\n158#1,2:417\n207#1,2:419\n279#1,2:421\n318#1,2:423\n338#1,2:425\n354#1,2:427\n372#1,2:429\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008#\u0018\u00002\u00020\u0001B\u001d\u0012\u0008\u0010x\u001a\u0004\u0018\u00010 \u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u001e\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0082\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\rJ\u0010\u0010\u0013\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u001e\u0010\u0018\u001a\u00020\u00022\u0016\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00020\u0014j\u0002`\u0016J\u001e\u0010\u0019\u001a\u00020\u00022\u0016\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00020\u0014j\u0002`\u0016J\u000e\u0010\u001a\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\u001b\u001a\u00020\u0002J7\u0010#\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010 2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008#\u0010$J\u001a\u0010)\u001a\u00020\u00022\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010(\u001a\u00020\'H\u0016J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\'H\u0016J\u0010\u0010-\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u001eH\u0016J\u0010\u0010/\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u001eH\u0016J\"\u00104\u001a\u00020\u00022\u0006\u00101\u001a\u0002002\u0008\u00103\u001a\u0004\u0018\u0001022\u0006\u0010(\u001a\u00020\'H\u0016J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0016J\u0006\u00108\u001a\u00020\u0002J\u0006\u00109\u001a\u00020\u0002J\u0006\u0010:\u001a\u00020\u0002J\u0006\u0010;\u001a\u00020\u001eR$\u0010C\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR*\u0010G\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00020\u0014j\u0002`\u00160D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\"\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\"\u0010_\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u00109\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R$\u0010g\u001a\u0004\u0018\u00010`8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\u0016\u0010i\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u00109R\u0016\u0010l\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0018\u0010n\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010UR\"\u0010q\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u00109\u001a\u0004\u0008o\u0010\\\"\u0004\u0008p\u0010^R$\u0010x\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\"\u0010\"\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u00109\u001a\u0004\u0008z\u0010\\\"\u0004\u0008{\u0010^R\u0011\u0010}\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010|R\u0011\u0010\u007f\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008~\u0010|R\u0012\u0010.\u001a\u00020\u001e8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0080\u0001\u0010\\\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/k;",
        "Lcom/google/android/exoplayer2/v1$f;",
        "",
        "q0",
        "s0",
        "r0",
        "t0",
        "d0",
        "",
        "position",
        "u0",
        "b0",
        "v0",
        "",
        "P",
        "audioVolume",
        "p0",
        "Landroid/view/SurfaceView;",
        "surfaceView",
        "o0",
        "Lkotlin/Function1;",
        "Lcom/giphy/sdk/ui/views/m;",
        "Lcom/giphy/sdk/ui/views/GPHPlayerStateListener;",
        "listener",
        "F",
        "f0",
        "g0",
        "c0",
        "Lcom/giphy/sdk/core/models/Media;",
        "media",
        "",
        "autoPlay",
        "Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;",
        "view",
        "repeatable",
        "T",
        "(Lcom/giphy/sdk/core/models/Media;ZLcom/giphy/sdk/ui/views/GPHVideoPlayerView;Ljava/lang/Boolean;)V",
        "Lcom/google/android/exoplayer2/b1;",
        "mediaItem",
        "",
        "reason",
        "B",
        "state",
        "l",
        "isLoading",
        "v",
        "isPlaying",
        "E",
        "Lcom/google/android/exoplayer2/s2;",
        "timeline",
        "",
        "manifest",
        "e0",
        "Lcom/google/android/exoplayer2/ExoPlaybackException;",
        "error",
        "u",
        "Y",
        "Z",
        "W",
        "Q",
        "Lcom/google/android/exoplayer2/k2;",
        "a",
        "Lcom/google/android/exoplayer2/k2;",
        "M",
        "()Lcom/google/android/exoplayer2/k2;",
        "l0",
        "(Lcom/google/android/exoplayer2/k2;)V",
        "player",
        "",
        "b",
        "Ljava/util/Set;",
        "listeners",
        "Ljava/util/Timer;",
        "c",
        "Ljava/util/Timer;",
        "progressTimer",
        "Ljava/util/TimerTask;",
        "d",
        "Ljava/util/TimerTask;",
        "progressTimerTask",
        "Landroid/database/ContentObserver;",
        "e",
        "Landroid/database/ContentObserver;",
        "contentObserver",
        "f",
        "Lcom/giphy/sdk/core/models/Media;",
        "K",
        "()Lcom/giphy/sdk/core/models/Media;",
        "j0",
        "(Lcom/giphy/sdk/core/models/Media;)V",
        "g",
        "R",
        "()Z",
        "i0",
        "(Z)V",
        "isDestroyed",
        "Landroid/media/AudioManager;",
        "h",
        "Landroid/media/AudioManager;",
        "H",
        "()Landroid/media/AudioManager;",
        "h0",
        "(Landroid/media/AudioManager;)V",
        "audioManager",
        "i",
        "isDeviceMuted",
        "j",
        "J",
        "lastProgress",
        "k",
        "lastMedia",
        "L",
        "k0",
        "paused",
        "m",
        "Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;",
        "N",
        "()Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;",
        "m0",
        "(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)V",
        "playerView",
        "n",
        "O",
        "n0",
        "()J",
        "duration",
        "I",
        "currentPosition",
        "S",
        "<init>",
        "(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;Z)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/k2;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/giphy/sdk/ui/views/m;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Timer;

.field private d:Ljava/util/TimerTask;

.field private e:Landroid/database/ContentObserver;

.field private f:Lcom/giphy/sdk/core/models/Media;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/media/AudioManager;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private i:Z

.field private j:J

.field private k:Lcom/giphy/sdk/core/models/Media;

.field private l:Z

.field private m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;Z)V
    .locals 43
    .param p1    # Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    move/from16 v1, p2

    iput-boolean v1, v0, Lcom/giphy/sdk/ui/views/k;->n:Z

    .line 2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/giphy/sdk/ui/views/k;->b:Ljava/util/Set;

    .line 3
    new-instance v1, Lcom/giphy/sdk/core/models/Media;

    move-object v2, v1

    new-instance v18, Lcom/giphy/sdk/core/models/Images;

    move-object/from16 v17, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const v39, 0xfffff

    const/16 v40, 0x0

    invoke-direct/range {v18 .. v40}, Lcom/giphy/sdk/core/models/Images;-><init>(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, -0x4002

    const/16 v41, 0x1f

    const/16 v42, 0x0

    invoke-direct/range {v2 .. v42}, Lcom/giphy/sdk/core/models/Media;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/RatingType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/giphy/sdk/core/models/User;Lcom/giphy/sdk/core/models/Images;Lcom/giphy/sdk/core/models/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZZZZZZZZZLcom/giphy/sdk/core/models/BottleData;Ljava/lang/String;Lcom/giphy/sdk/core/models/Cta;ZLjava/util/HashMap;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/giphy/sdk/ui/views/k;->f:Lcom/giphy/sdk/core/models/Media;

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/giphy/sdk/ui/views/k;->q0()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/giphy/sdk/ui/views/k;-><init>(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;Z)V

    return-void
.end method

.method public static synthetic V(Lcom/giphy/sdk/ui/views/k;Lcom/giphy/sdk/core/models/Media;ZLcom/giphy/sdk/ui/views/GPHVideoPlayerView;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/giphy/sdk/ui/views/k;->T(Lcom/giphy/sdk/core/models/Media;ZLcom/giphy/sdk/ui/views/GPHVideoPlayerView;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final b0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/k;->d0()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    return-void
.end method

.method public static final synthetic d(Lcom/giphy/sdk/ui/views/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/giphy/sdk/ui/views/k;->i:Z

    return p0
.end method

.method private final d0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/k;->t0()V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    return-void
.end method

.method private final q0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/giphy/sdk/ui/views/k$a;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/k$a;-><init>(Lcom/giphy/sdk/ui/views/k;)V

    .line 3
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/k;->h:Landroid/media/AudioManager;

    .line 4
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/k$a;->invoke()V

    .line 5
    new-instance v1, Lcom/giphy/sdk/ui/views/k$b;

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v0, v2}, Lcom/giphy/sdk/ui/views/k$b;-><init>(Lcom/giphy/sdk/ui/views/k$a;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/k;->e:Landroid/database/ContentObserver;

    .line 7
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "playerView!!.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 9
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/k;->e:Landroid/database/ContentObserver;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private final r0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->d:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_1
    new-instance v0, Lcom/giphy/sdk/ui/views/k$c;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/k$c;-><init>(Lcom/giphy/sdk/ui/views/k;)V

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/k;->d:Ljava/util/TimerTask;

    .line 4
    new-instance v1, Ljava/util/Timer;

    const-string v0, "VideoProgressTimer"

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/k;->c:Ljava/util/Timer;

    .line 5
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/k;->d:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x28

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private final s0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/k;->e:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "playerView!!.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/k;->e:Landroid/database/ContentObserver;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/k;->e:Landroid/database/ContentObserver;

    :cond_1
    :goto_0
    return-void
.end method

.method private final t0()V
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method private final u0(J)V
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->r(J)V

    :cond_0
    return-void
.end method

.method private final v0()V
    .locals 2

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/giphy/sdk/ui/views/k;->n:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k2;->j(I)V

    :cond_1
    return-void
.end method

.method public static final synthetic x(Lcom/giphy/sdk/ui/views/k;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/k;->i:Z

    return-void
.end method

.method public static final synthetic y(Lcom/giphy/sdk/ui/views/k;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/giphy/sdk/ui/views/k;->u0(J)V

    return-void
.end method


# virtual methods
.method public B(Lcom/google/android/exoplayer2/b1;I)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/b1;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->f(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/b1;I)V

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k;->b:Ljava/util/Set;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 4
    sget-object v0, Lcom/giphy/sdk/ui/views/m$i;->a:Lcom/giphy/sdk/ui/views/m$i;

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic C(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->h(Lcom/google/android/exoplayer2/v1$f;ZI)V

    return-void
.end method

.method public E(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIsPlayingChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/k;->f:Lcom/giphy/sdk/core/models/Media;

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k;->b:Ljava/util/Set;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 4
    sget-object v1, Lcom/giphy/sdk/ui/views/m$g;->a:Lcom/giphy/sdk/ui/views/m$g;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k2;->c()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lcom/giphy/sdk/ui/views/k;->l(I)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final F(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/giphy/sdk/ui/views/m;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic G(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->e(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public final H()Landroid/media/AudioManager;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->h:Landroid/media/AudioManager;

    return-object v0
.end method

.method public final I()J
    .locals 2

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final J()J
    .locals 2

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final K()Lcom/giphy/sdk/core/models/Media;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->f:Lcom/giphy/sdk/core/models/Media;

    return-object v0
.end method

.method public final L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/k;->l:Z

    return v0
.end method

.method public final M()Lcom/google/android/exoplayer2/k2;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    return-object v0
.end method

.method public final N()Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    return-object v0
.end method

.method public final O()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/k;->n:Z

    return v0
.end method

.method public final P()F
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->getAudioComponent()Lcom/google/android/exoplayer2/Player$AudioComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player$AudioComponent;->getVolume()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Q()Z
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final R()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/k;->g:Z

    return v0
.end method

.method public final S()Z
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final declared-synchronized T(Lcom/giphy/sdk/core/models/Media;ZLcom/giphy/sdk/ui/views/GPHVideoPlayerView;Ljava/lang/Boolean;)V
    .locals 7
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    .line 2
    iput-boolean p4, p0, Lcom/giphy/sdk/ui/views/k;->n:Z

    .line 3
    :cond_0
    iget-boolean p4, p0, Lcom/giphy/sdk/ui/views/k;->g:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    const-string p1, "Player is already destroyed!"

    new-array p2, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1, p2}, Ltimber/log/Timber;->h(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadMedia "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p4, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 p4, 0x1

    if-eqz p3, :cond_3

    .line 8
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, p4

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->q()V

    .line 10
    :cond_2
    iput-object p3, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    .line 11
    :cond_3
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/k;->f:Lcom/giphy/sdk/core/models/Media;

    .line 12
    iget-object p3, p0, Lcom/giphy/sdk/ui/views/k;->b:Ljava/util/Set;

    .line 13
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 14
    new-instance v4, Lcom/giphy/sdk/ui/views/m$e;

    invoke-direct {v4, p1}, Lcom/giphy/sdk/ui/views/m$e;-><init>(Lcom/giphy/sdk/core/models/Media;)V

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_4
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/k;->d0()V

    .line 16
    iget-object p3, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    if-eqz p3, :cond_a

    .line 17
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/k;->l:Z

    if-eqz p3, :cond_5

    .line 18
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    :cond_5
    invoke-static {p1}, Lcom/giphy/sdk/ui/utils/h;->e(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/String;

    move-result-object p3

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v3, Lcom/google/android/exoplayer2/m$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/m$a;-><init>()V

    invoke-virtual {v3, p4}, Lcom/google/android/exoplayer2/m$a;->f(Z)Lcom/google/android/exoplayer2/m$a;

    move-result-object v3

    const/16 v4, 0x1388

    const/16 v5, 0x1f4

    .line 22
    invoke-virtual {v3, v5, v4, v5, v5}, Lcom/google/android/exoplayer2/m$a;->e(IIII)Lcom/google/android/exoplayer2/m$a;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/m$a;->a()Lcom/google/android/exoplayer2/m;

    move-result-object v3

    const-string v4, "DefaultLoadControl.Build\u2026500\n            ).build()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/k;->k:Lcom/giphy/sdk/core/models/Media;

    const-wide/16 v4, 0x0

    .line 25
    iput-wide v4, p0, Lcom/giphy/sdk/ui/views/k;->j:J

    .line 26
    new-instance v4, Lcom/google/android/exoplayer2/k2$b;

    iget-object v5, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/k2$b;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v6, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k2$b;->O(Lcom/google/android/exoplayer2/trackselection/o;)Lcom/google/android/exoplayer2/k2$b;

    move-result-object v4

    .line 28
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/k2$b;->G(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/k2$b;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/k2$b;->x()Lcom/google/android/exoplayer2/k2;

    move-result-object v3

    .line 30
    invoke-virtual {v3, p0}, Lcom/google/android/exoplayer2/k2;->c1(Lcom/google/android/exoplayer2/v1$f;)V

    .line 31
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/k2;->l0(Z)V

    .line 32
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    iput-object v3, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    .line 34
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->t(Lcom/giphy/sdk/core/models/Media;)V

    .line 35
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, p0}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->u(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/ui/views/k;)V

    .line 36
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/k2;->p(I)V

    :cond_6
    if-eqz p3, :cond_9

    .line 37
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/k;->v0()V

    .line 38
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/k;->r0()V

    .line 39
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/h;-><init>()V

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/extractor/h;->f(Z)Lcom/google/android/exoplayer2/extractor/h;

    move-result-object p1

    const-string p2, "DefaultExtractorsFactory\u2026trateSeekingEnabled(true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 41
    new-instance p3, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    .line 42
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p3

    .line 43
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/b1$c;->j(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p2

    const-string p3, "MediaItem.Builder()\n    \u2026\n                .build()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance p3, Lcom/google/android/exoplayer2/source/q0$b;

    sget-object p4, Lcom/giphy/sdk/ui/utils/j;->d:Lcom/giphy/sdk/ui/utils/j;

    invoke-virtual {p4}, Lcom/giphy/sdk/ui/utils/j;->d()Lcom/google/android/exoplayer2/upstream/cache/b$d;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lcom/google/android/exoplayer2/source/q0$b;-><init>(Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/extractor/q;)V

    .line 46
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/source/q0$b;->n(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/q0;

    move-result-object p1

    const-string p2, "ProgressiveMediaSource.F\u2026ateMediaSource(mediaItem)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/k2;->V(Lcom/google/android/exoplayer2/source/z;)V

    .line 48
    :cond_7
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k2;->a()V

    .line 49
    :cond_8
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/k;->s0()V

    .line 50
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/k;->q0()V

    goto :goto_1

    .line 51
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Video url is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    const-string p2, "ExoPlaybackException.cre\u2026ion(\"Video url is null\"))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/giphy/sdk/ui/views/k;->u(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 52
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadMedia time="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 54
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "playerView must not be null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic U(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->n(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public final W()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/k;->g:Z

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/k;->s0()V

    .line 3
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/k;->b0()V

    return-void
.end method

.method public synthetic X()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/w1;->q(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public final Y()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/k;->l:Z

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e;->pause()V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->q()V

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/k;->f:Lcom/giphy/sdk/core/models/Media;

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Media;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->f:Lcom/giphy/sdk/core/models/Media;

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/k;->k:Lcom/giphy/sdk/core/models/Media;

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Lcom/giphy/sdk/ui/views/k;->j:J

    .line 7
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/k;->d0()V

    return-void
.end method

.method public final Z()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/k;->l:Z

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->s()V

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/k;->k:Lcom/giphy/sdk/core/models/Media;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    .line 4
    invoke-static/range {v1 .. v7}, Lcom/giphy/sdk/ui/views/k;->V(Lcom/giphy/sdk/ui/views/k;Lcom/giphy/sdk/core/models/Media;ZLcom/giphy/sdk/ui/views/GPHVideoPlayerView;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public synthetic a0(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->m(Lcom/google/android/exoplayer2/v1$f;ZI)V

    return-void
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/t1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->i(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public final c0()V
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e;->d()V

    :cond_0
    return-void
.end method

.method public synthetic e(Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/w1;->o(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V

    return-void
.end method

.method public e0(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string p2, "timeline"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k2;->getDuration()J

    move-result-wide p1

    .line 2
    iget-object p3, p0, Lcom/giphy/sdk/ui/views/k;->b:Ljava/util/Set;

    .line 3
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 4
    new-instance v1, Lcom/giphy/sdk/ui/views/m$j;

    invoke-direct {v1, p1, p2}, Lcom/giphy/sdk/ui/views/m$j;-><init>(J)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_2

    .line 5
    iget-object p3, p0, Lcom/giphy/sdk/ui/views/k;->f:Lcom/giphy/sdk/core/models/Media;

    invoke-virtual {p3}, Lcom/giphy/sdk/core/models/Media;->getUserDictionary()Ljava/util/HashMap;

    move-result-object p3

    if-nez p3, :cond_1

    .line 6
    iget-object p3, p0, Lcom/giphy/sdk/ui/views/k;->f:Lcom/giphy/sdk/core/models/Media;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p3, v0}, Lcom/giphy/sdk/core/models/Media;->setUserDictionary(Ljava/util/HashMap;)V

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/giphy/sdk/ui/views/k;->f:Lcom/giphy/sdk/core/models/Media;

    invoke-virtual {p3}, Lcom/giphy/sdk/core/models/Media;->getUserDictionary()Ljava/util/HashMap;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "video_length"

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public synthetic f(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->k(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public final f0(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/giphy/sdk/ui/views/m;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic g(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->s(Lcom/google/android/exoplayer2/v1$f;Ljava/util/List;)V

    return-void
.end method

.method public final g0(J)V
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/e;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public synthetic h(Lcom/google/android/exoplayer2/v1$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->a(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/v1$c;)V

    return-void
.end method

.method public final h0(Landroid/media/AudioManager;)V
    .locals 0
    .param p1    # Landroid/media/AudioManager;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/k;->h:Landroid/media/AudioManager;

    return-void
.end method

.method public synthetic i(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->p(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public final i0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/k;->g:Z

    return-void
.end method

.method public synthetic j(Lcom/google/android/exoplayer2/s2;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->t(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/s2;I)V

    return-void
.end method

.method public final j0(Lcom/giphy/sdk/core/models/Media;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/k;->f:Lcom/giphy/sdk/core/models/Media;

    return-void
.end method

.method public final k0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/k;->l:Z

    return-void
.end method

.method public l(I)V
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->j(Lcom/google/android/exoplayer2/v1$f;I)V

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    .line 2
    sget-object v0, Lcom/giphy/sdk/ui/views/m$k;->a:Lcom/giphy/sdk/ui/views/m$k;

    const-string v2, "STATE_UNKNOWN"

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/giphy/sdk/ui/views/m$b;->a:Lcom/giphy/sdk/ui/views/m$b;

    const-string v2, "STATE_ENDED"

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/giphy/sdk/ui/views/m$h;->a:Lcom/giphy/sdk/ui/views/m$h;

    const-string v2, "STATE_READY"

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/giphy/sdk/ui/views/m$a;->a:Lcom/giphy/sdk/ui/views/m$a;

    const-string v2, "STATE_BUFFERING"

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Lcom/giphy/sdk/ui/views/m$d;->a:Lcom/giphy/sdk/ui/views/m$d;

    const-string v2, "STATE_IDLE"

    .line 7
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayerStateChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k2;->getDuration()J

    move-result-wide v1

    .line 9
    invoke-direct {p0, v1, v2}, Lcom/giphy/sdk/ui/views/k;->u0(J)V

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k;->b:Ljava/util/Set;

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 12
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final l0(Lcom/google/android/exoplayer2/k2;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/k2;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    return-void
.end method

.method public synthetic m(Lcom/google/android/exoplayer2/f1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->g(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method public final m0(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/k;->m:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    return-void
.end method

.method public synthetic n(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->r(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public final n0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/k;->n:Z

    return-void
.end method

.method public final o0(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/k2;->n(Landroid/view/SurfaceView;)V

    :cond_0
    return-void
.end method

.method public final p0(F)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/k;->i:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->getAudioComponent()Lcom/google/android/exoplayer2/Player$AudioComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$AudioComponent;->setVolume(F)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->b:Ljava/util/Set;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 5
    new-instance v2, Lcom/giphy/sdk/ui/views/m$f;

    const/4 v3, 0x0

    int-to-float v4, v3

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-direct {v2, v3}, Lcom/giphy/sdk/ui/views/m$f;-><init>(Z)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public synthetic s(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->v(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V

    return-void
.end method

.method public u(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/ExoPlaybackException;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->l(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k;->b:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 4
    new-instance v2, Lcom/giphy/sdk/ui/views/m$c;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "Error occurred"

    :goto_1
    invoke-direct {v2, v3}, Lcom/giphy/sdk/ui/views/m$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public v(Z)V
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->c(Lcom/google/android/exoplayer2/v1$f;Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 3
    iget-wide v2, p0, Lcom/giphy/sdk/ui/views/k;->j:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restore seek "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/giphy/sdk/ui/views/k;->j:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/k;->a:Lcom/google/android/exoplayer2/k2;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/giphy/sdk/ui/views/k;->j:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/e;->seekTo(J)V

    .line 6
    :cond_0
    iput-wide v4, p0, Lcom/giphy/sdk/ui/views/k;->j:J

    :cond_1
    return-void
.end method

.method public synthetic z(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->b(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V

    return-void
.end method
