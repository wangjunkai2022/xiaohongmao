.class public abstract Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;
.super Ljava/lang/Object;
.source "PkPlayerManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;,
        Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPkPlayerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PkPlayerManager.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/player/pk/PkPlayerManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,718:1\n1#2:719\n1549#3:720\n1620#3,3:721\n1549#3:728\n1620#3,3:729\n1549#3:736\n1620#3,3:737\n1549#3:744\n1620#3,3:745\n37#4:724\n36#4,3:725\n37#4:732\n36#4,3:733\n37#4:740\n36#4,3:741\n37#4:748\n36#4,3:749\n*S KotlinDebug\n*F\n+ 1 PkPlayerManager.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/player/pk/PkPlayerManager\n*L\n594#1:720\n594#1:721,3\n595#1:728\n595#1:729,3\n605#1:736\n605#1:737,3\n606#1:744\n606#1:745,3\n594#1:724\n594#1:725,3\n595#1:732\n595#1:733,3\n605#1:740\n605#1:741,3\n606#1:748\n606#1:749,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 \u001c2\u00020\u0001:\u0002\u0091\u0001BC\u0012\u0008\u0010\u008e\u0001\u001a\u00030\u008d\u0001\u0012\u0006\u0010a\u001a\u00020^\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010>\u001a\u00020\u0008\u0012\u0016\u0008\u0002\u0010g\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u0005\u0018\u00010@\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J\"\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008H\u0002J\u0008\u0010\u000c\u001a\u00020\u0005H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J\u0018\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J4\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\u00082\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002JK\u0010\u001c\u001a\u00020\u0005*\u00020\u00172\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00182\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000c\u0010\u001e\u001a\u00020\u0008*\u00020\u0017H\u0002J\u0012\u0010\u001f\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0002J\u0010\u0010#\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0002J\u0012\u0010$\u001a\u00020\u00052\u0008\u0008\u0002\u0010!\u001a\u00020 H\u0002J!\u0010%\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0008\u0010\'\u001a\u00020\u0005H\u0002J\u0008\u0010(\u001a\u00020\u0008H\u0002J\u001a\u0010,\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0017\u0018\u00010+2\u0006\u0010*\u001a\u00020)H\u0002J\u001a\u0010-\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0017\u0018\u00010+2\u0006\u0010*\u001a\u00020)H\u0002J\u000e\u0010.\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)J\u000e\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020)J\u001a\u00103\u001a\u00020\u00052\u0006\u00102\u001a\u0002012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008H\u0007J*\u00106\u001a\u00020\u00052\u0006\u00105\u001a\u0002042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00082\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0007J\u0016\u00107\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\u0006\u00108\u001a\u00020\u0005J\u000e\u0010:\u001a\u00020\u00052\u0006\u00109\u001a\u00020\u0008J\u0006\u0010;\u001a\u00020\u0005J\u0006\u0010<\u001a\u00020\u0005J\u000e\u0010=\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0008J&\u0010?\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00082\u0008\u0008\u0002\u0010>\u001a\u00020\u0008H\u0007Jj\u0010G\u001a\u00020\u00052\u0012\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00050@2\u0012\u0010B\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00050@2\u0018\u0010D\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00050C2\u0014\u0010E\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u0005\u0018\u00010@2\u0008\u0008\u0002\u0010F\u001a\u00020\u0008H\u0007J\u000e\u0010I\u001a\u00020\u00052\u0006\u0010H\u001a\u00020\u0018J\u000e\u0010K\u001a\u00020\u00052\u0006\u0010J\u001a\u00020\u0018J\u000e\u0010M\u001a\u00020\u00052\u0006\u0010L\u001a\u00020\u0008J\u0006\u0010N\u001a\u00020\u0005J\u0012\u0010P\u001a\u00020\u00052\u0008\u0008\u0002\u0010O\u001a\u00020\u0008H\u0007J\u0012\u0010Q\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0017\u0018\u00010+H&J\u0012\u0010R\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0017\u0018\u00010+H&J\"\u0010T\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 2\u0010\u0008\u0002\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0007J\u0006\u0010U\u001a\u00020\u0008J\u0010\u0010W\u001a\u00020\u00052\u0008\u00102\u001a\u0004\u0018\u00010VJ\u0006\u0010X\u001a\u00020\u0008J\u0016\u0010Z\u001a\u00020\u00052\u0006\u00102\u001a\u00020V2\u0006\u0010Y\u001a\u00020\u0008J\u0018\u0010\\\u001a\u00020\u00022\u0006\u00102\u001a\u00020V2\u0008\u0008\u0002\u0010[\u001a\u00020\u0008J\u0006\u0010]\u001a\u00020\u0005R\u0014\u0010a\u001a\u00020^8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008_\u0010`R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0014\u0010>\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008d\u0010,R\"\u0010g\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u0005\u0018\u00010@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u001a\u0010l\u001a\u00020)8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008h\u0010i\u001a\u0004\u0008j\u0010kR\u001a\u0010o\u001a\u00020)8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008m\u0010i\u001a\u0004\u0008n\u0010kR\"\u0010u\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008p\u0010,\u001a\u0004\u0008q\u0010r\"\u0004\u0008s\u0010tR$\u0010|\u001a\u0004\u0018\u00010V8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008v\u0010w\u001a\u0004\u0008x\u0010y\"\u0004\u0008z\u0010{R\u0014\u0010~\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008}\u0010XR\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u007f\u0010iR\u001a\u0010\u0082\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010iR%\u0010\u0085\u0001\u001a\u0011\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00170+0\u0083\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0016\u0010\u0084\u0001R\u001b\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0089\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001\u00a8\u0006\u0092\u0001"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;",
        "",
        "",
        "durationLeftMillis",
        "Lkotlin/Function0;",
        "",
        "onTimerFinished",
        "D0",
        "",
        "show",
        "left",
        "o0",
        "v",
        "Landroid/view/ViewGroup;",
        "root",
        "rightSide",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;",
        "R",
        "C",
        "screenRoot",
        "playerRoot",
        "adjustComplete",
        "m",
        "Landroid/view/View;",
        "",
        "top",
        "bottom",
        "right",
        "p",
        "(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V",
        "K",
        "m0",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;",
        "result",
        "k0",
        "l0",
        "i0",
        "h0",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;Ljava/lang/Boolean;)V",
        "L",
        "N",
        "",
        "url",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;",
        "Z",
        "c0",
        "w0",
        "newUrl",
        "T",
        "Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;",
        "msg",
        "y0",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;",
        "data",
        "A0",
        "u",
        "Q",
        "on",
        "P",
        "G0",
        "F0",
        "v0",
        "isWatcher",
        "t0",
        "Lkotlin/Function1;",
        "onPlayBegin",
        "onPlayEnd",
        "Lkotlin/Function2;",
        "onPlayError",
        "onResolution",
        "secondary",
        "X",
        "orientation",
        "H0",
        "mode",
        "b0",
        "forceDispose",
        "S",
        "w",
        "onlySecondary",
        "y",
        "H",
        "I",
        "onPunishmentFinished",
        "e0",
        "M",
        "Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;",
        "r",
        "J",
        "isSender",
        "I0",
        "print",
        "s",
        "U",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "b",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "c",
        "Landroid/view/ViewGroup;",
        "d",
        "e",
        "Lkotlin/jvm/functions/Function1;",
        "donatorClickListener",
        "f",
        "Ljava/lang/String;",
        "F",
        "()Ljava/lang/String;",
        "TAG",
        "g",
        "G",
        "TIMER_NA",
        "h",
        "O",
        "()Z",
        "a0",
        "(Z)V",
        "isPunishment",
        "i",
        "Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;",
        "E",
        "()Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;",
        "V",
        "(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;)V",
        "lastBroadcast",
        "j",
        "MATCH_RESULT_DURATION",
        "k",
        "primaryStreamUrl",
        "l",
        "secondaryStreamUrl",
        "",
        "Ljava/util/List;",
        "videoToRelease",
        "n",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;",
        "infoPanel",
        "Landroid/os/CountDownTimer;",
        "o",
        "Landroid/os/CountDownTimer;",
        "timer",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;)V",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final p:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final q:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final r:Ljava/util/Date;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Landroid/view/ViewGroup;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Z

.field private final e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final j:J

.field private k:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private n:Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private o:Landroid/os/CountDownTimer;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->q:Ljava/text/SimpleDateFormat;

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->r:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg5/a;",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            "Landroid/view/ViewGroup;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->a:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    .line 5
    iput-boolean p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->d:Z

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->e:Lkotlin/jvm/functions/Function1;

    const-string p1, "PkPlayerManager"

    .line 7
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    const-string p1, "--:--"

    .line 8
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->g:Ljava/lang/String;

    .line 9
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->j:J

    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->m:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final A(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;
    .locals 1
    .param p0    # Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;

    invoke-virtual {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;->d(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;

    move-result-object p0

    return-object p0
.end method

.method public static final B(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;J)Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;
    .locals 1
    .param p0    # Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;->e(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;J)Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->y0(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startPlaySecondary"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final C(Landroid/view/ViewGroup;Z)Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;
    .locals 2

    const v0, 0x7f0a0506

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    const v1, 0x7f0a0507

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p2, "reversed"

    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    goto :goto_0

    :cond_2
    const-string p1, "normal"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static synthetic C0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->A0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;ZLkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startPlaySecondary"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final D(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;

    invoke-virtual {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;->f(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final D0(JLkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyy Starting Timer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    const v1, 0x7f0a0763

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->o:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->g:Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d;

    move-object v1, v0

    move-wide v2, p1

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$d;-><init>(JLandroid/widget/TextView;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lkotlin/jvm/functions/Function0;)V

    .line 6
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->o:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic E0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->D0(JLkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startTimer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final J0(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;Ljava/lang/Long;J)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;
    .locals 1
    .param p0    # Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;->g(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;Ljava/lang/Long;J)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;

    move-result-object p0

    return-object p0
.end method

.method private final K(Landroid/view/View;)Z
    .locals 1

    const v0, 0x7f0a067c

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public static final K0(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;JLjava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;
    .locals 1
    .param p0    # Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;->h(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;JLjava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;

    move-result-object p0

    return-object p0
.end method

.method private final L()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    const v1, 0x7f0a03d8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    const v2, 0x7f0a03d9

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    const v2, 0x7f0a03d7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private final N()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    const v1, 0x7f0a03d8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    const v3, 0x7f0a03d7

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    return v1
.end method

.method private final R(Landroid/view/ViewGroup;Z)Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->C(Landroid/view/ViewGroup;Z)Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    move-result-object v0

    const v1, 0x7f0a03f2

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    const p2, 0x7f0a01a9

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static synthetic Y(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->X(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setPlayCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final Z(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set url to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic a(ILandroid/view/ViewGroup;Landroid/view/View;IILcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;ZLandroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;F)V
    .locals 0

    invoke-static/range {p0 .. p16}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->o(ILandroid/view/ViewGroup;Landroid/view/View;IILcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;ZLandroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;F)V

    return-void
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->g0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->v()V

    return-void
.end method

.method private final c0(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final synthetic d()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->r:Ljava/util/Date;

    return-object v0
.end method

.method public static final synthetic e(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->e:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic f(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->n:Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    return-object p0
.end method

.method public static synthetic f0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->e0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showMatchResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic g(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private static final g0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->L()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic h()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->q:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final h0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$b;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const p1, 0x7f08054d

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const p1, 0x7f08054f

    goto :goto_0

    :cond_2
    const p1, 0x7f080553

    :goto_0
    if-nez p2, :cond_3

    const p2, 0x7f0a03d7

    goto :goto_1

    .line 3
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f0a03d8

    goto :goto_1

    :cond_4
    const p2, 0x7f0a03d9

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic i(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->L()V

    return-void
.end method

.method private final i0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->h0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic j(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/ViewGroup;Z)Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->R(Landroid/view/ViewGroup;Z)Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;->Draw:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->i0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showMatchResultImageCenter"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic k(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->n:Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    return-void
.end method

.method private final k0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->h0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic l(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->m0(Z)V

    return-void
.end method

.method private final l0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->h0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final m(Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v15, p0

    .line 1
    iget-object v0, v15, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    const-string v1, "Adjusting Player Height.."

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "screenRoot.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/h1;->g(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070054

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v0, 0x7f0a05ae

    .line 6
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v3, 0x7f0a05f2

    .line 7
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v14, v0

    const v0, 0x7f0a040d

    .line 8
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/ViewGroup;

    const v0, 0x7f0a05ba

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    const v0, 0x7f0a05b8

    .line 10
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/ViewGroup;

    const v0, 0x7f0a05c4

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f0a05be

    .line 12
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/ViewGroup;

    const v0, 0x7f0a0400

    .line 13
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup;

    const v0, 0x7f0a03fe

    .line 14
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/ViewGroup;

    if-eqz p3, :cond_1

    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v18, 0x3f400000    # 0.75f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    :goto_1
    if-eqz v14, :cond_2

    .line 15
    new-instance v9, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/e;

    move-object v0, v9

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v6, p0

    move/from16 v8, p3

    move-object/from16 v19, v9

    move-object/from16 v9, p2

    move-object/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, p4

    move/from16 v17, v18

    invoke-direct/range {v0 .. v17}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/e;-><init>(ILandroid/view/ViewGroup;Landroid/view/View;IILcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;ZLandroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;F)V

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private final m0(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    const v1, 0x7f0a0350

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v3, 0x32

    goto :goto_0

    :cond_0
    const/16 v3, 0x14

    :goto_0
    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/util/h1;->f(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p1, :cond_1

    .line 4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 5
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p1, :cond_2

    const v1, 0x7f08046b

    goto :goto_2

    :cond_2
    const v1, 0x7f08046a

    .line 6
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->h:Z

    return-void
.end method

.method static synthetic n(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->m(Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: adjustPlayerHeight"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic n0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->m0(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showPunishmentHeader"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final o(ILandroid/view/ViewGroup;Landroid/view/View;IILcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;ZLandroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;F)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v9, p5

    move-object/from16 v10, p12

    move-object/from16 v11, p14

    move/from16 v12, p16

    const-string v1, "$screenRoot"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x2

    new-array v1, v13, [I

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    sub-int v2, p0, v2

    move-object/from16 v3, p2

    .line 2
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    aget v14, v1, v3

    const v4, 0x7f0a05c1

    .line 3
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_0
    aget v0, v1, v3

    sub-int v0, p0, v0

    sub-int v15, v0, v2

    .line 5
    div-int/lit8 v16, p3, 0x2

    mul-int/lit8 v0, p4, 0x4

    const-string v1, "roomSvga"

    move-object/from16 v2, p6

    .line 6
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    .line 8
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    const/4 v8, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p7

    .line 9
    invoke-static/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->q(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)V

    if-eqz p8, :cond_1

    .line 10
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p8

    move/from16 v6, p7

    invoke-static/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->q(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)V

    :cond_1
    const-string v0, "svgaPeerageAnims"

    move-object/from16 v1, p9

    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v0, p4, 0x2

    add-int/2addr v0, v15

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v0, p5

    move/from16 v6, p7

    .line 14
    invoke-static/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->q(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)V

    if-eqz p10, :cond_2

    const/4 v2, 0x0

    .line 15
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xd

    const/4 v8, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p10

    move/from16 v6, p7

    invoke-static/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->q(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)V

    :cond_2
    if-eqz p11, :cond_3

    const/4 v2, 0x0

    .line 16
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xd

    const/4 v8, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p11

    move/from16 v6, p7

    invoke-static/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->q(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 17
    :cond_3
    iget-boolean v0, v9, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->d:Z

    if-eqz v0, :cond_4

    div-int/lit8 v0, v15, 0x4

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v15, 0x5

    div-int/lit8 v0, v0, 0x4

    :goto_0
    mul-int/lit8 v1, p4, 0x3

    div-int/2addr v1, v13

    add-int/2addr v0, v1

    mul-int/lit8 v1, p4, -0x7

    .line 18
    div-int/2addr v1, v13

    const-string v2, "giftBar"

    .line 19
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p12

    move/from16 v6, p7

    .line 23
    invoke-static/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->q(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 24
    invoke-virtual/range {p13 .. p13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    .line 25
    invoke-virtual/range {p13 .. p13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    invoke-virtual/range {p13 .. p13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const-string v3, "animLay"

    move-object/from16 v4, p13

    .line 27
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v2, v14

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/2addr v1, v15

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int v0, v0, v16

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    move-object/from16 v0, p5

    move-object/from16 v1, p13

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p7

    .line 31
    invoke-static/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->q(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 32
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 33
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 34
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 35
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setScaleY(F)V

    if-eqz p15, :cond_5

    .line 36
    invoke-interface/range {p15 .. p15}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private final o0(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->n:Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    if-eqz v0, :cond_2

    const v1, 0x7f0a07b6

    const v2, 0x7f0a07b5

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final p(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x7f0a067c

    const/4 v5, 0x0

    if-eqz p6, :cond_4

    .line 2
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->K(Landroid/view/View;)Z

    move-result p6

    if-nez p6, :cond_0

    const/4 p6, 0x4

    new-array p6, p6, [Ljava/lang/Integer;

    .line 4
    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, p6, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p6, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p6, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p6, v1

    invoke-static {p6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p6

    .line 5
    invoke-virtual {p1, v4, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_2
    if-eqz p5, :cond_3

    .line 8
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_3
    if-eqz p4, :cond_a

    .line 9
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4

    .line 10
    :cond_4
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_5

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 12
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    :goto_1
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_7

    .line 13
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    :goto_2
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz p1, :cond_8

    .line 14
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_3

    :cond_8
    const/4 p2, 0x0

    :goto_3
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz p1, :cond_9

    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v5

    :cond_9
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_a
    :goto_4
    return-void
.end method

.method static synthetic p0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->o0(ZZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showPunishmentLabels"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic q(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)V
    .locals 9

    if-nez p8, :cond_4

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, p4

    :goto_2
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, p5

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: applyMargins"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic t(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;ZILjava/lang/Object;)J
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->s(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;Z)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: calculateRemainingTime"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic u0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZZILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->t0(ZZZ)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showSecondaryPlayer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->o:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->o:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static synthetic z(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->y(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: exit"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;ZLkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyy Starting secondary. Url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Cached broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->i:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->l:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->l:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c0(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZZILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final E()Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->i:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final F0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->c()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->c()V

    :cond_1
    return-void
.end method

.method public final G()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final G0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->c()V

    :cond_0
    return-void
.end method

.method public abstract H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public final H0(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->j(I)V

    :cond_0
    return-void
.end method

.method public abstract I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public final I0(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;Z)V
    .locals 8
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyy Updating match info: IsSender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->r(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->n:Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    if-eqz v0, :cond_a

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getCoinsSender()I

    move-result v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getCoinsReceiver()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->i(II)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getCoinsReceiver()I

    move-result v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getCoinsSender()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->i(II)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getDonatorsSender()Ljava/util/List;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Lcom/qennnsad/aknkaksd/data/bean/pk/Donator;

    .line 10
    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/pk/Donator;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/String;

    .line 11
    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast v2, [Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getDonatorsReceiver()Ljava/util/List;

    move-result-object v5

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 16
    check-cast v7, Lcom/qennnsad/aknkaksd/data/bean/pk/Donator;

    .line 17
    invoke-virtual {v7}, Lcom/qennnsad/aknkaksd/data/bean/pk/Donator;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-array v5, v1, [Ljava/lang/String;

    .line 18
    invoke-interface {v6, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast v5, [Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 20
    iget-object v6, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    array-length v7, v2

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->g(Lcom/qennnsad/aknkaksd/data/repository/m;[Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->h(Lcom/qennnsad/aknkaksd/data/repository/m;[Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_3
    iget-object v6, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    array-length v7, v5

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->g(Lcom/qennnsad/aknkaksd/data/repository/m;[Ljava/lang/String;)V

    .line 23
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    array-length v6, v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->h(Lcom/qennnsad/aknkaksd/data/repository/m;[Ljava/lang/String;)V

    .line 24
    :goto_3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getDonatorsSender()Ljava/util/List;

    move-result-object v2

    .line 25
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 27
    check-cast v6, Lcom/qennnsad/aknkaksd/data/bean/pk/Donator;

    .line 28
    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/data/bean/pk/Donator;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    new-array v2, v1, [Ljava/lang/String;

    .line 29
    invoke-interface {v5, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    check-cast v2, [Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getDonatorsReceiver()Ljava/util/List;

    move-result-object p1

    .line 32
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 34
    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/pk/Donator;

    .line 35
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/pk/Donator;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    new-array p1, v1, [Ljava/lang/String;

    .line 36
    invoke-interface {v5, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    check-cast p1, [Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 38
    array-length p2, v2

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->setLeftIds([Ljava/lang/String;)V

    .line 39
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->setRightIds([Ljava/lang/String;)V

    goto :goto_6

    .line 40
    :cond_6
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->setLeftIds([Ljava/lang/String;)V

    .line 41
    array-length p1, v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->setRightIds([Ljava/lang/String;)V

    .line 42
    :goto_6
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->h:Z

    if-eqz p1, :cond_a

    .line 43
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->getLeftScores()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_7

    :cond_7
    const/4 p1, 0x0

    .line 44
    :goto_7
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->getRightScores()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_8

    :cond_8
    const/4 p2, 0x0

    :goto_8
    if-eq p1, p2, :cond_a

    const/4 v0, 0x1

    if-le p1, p2, :cond_9

    const/4 v1, 0x1

    .line 45
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->o0(ZZ)V

    :cond_a
    return-void
.end method

.method public final J()Z
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->i:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final M()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    const v1, 0x7f0a03d8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    const v3, 0x7f0a03d7

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    return v1
.end method

.method public final O()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->h:Z

    return v0
.end method

.method public final P(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->a(Z)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->a(Z)V

    :cond_1
    return-void
.end method

.method public final Q()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->e()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->e()V

    :cond_1
    return-void
.end method

.method public final S(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    const-string v1, "Prepare detached VideoView to release"

    .line 2
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->w()V

    :cond_2
    return-void
.end method

.method public final T(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "newUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyy Refresh primary. Url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->k:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final U()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->b()V

    :cond_0
    return-void
.end method

.method public final V(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;)V
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->i:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    return-void
.end method

.method public final W(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "onPlayBegin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPlayEnd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPlayError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->Y(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    return-void
.end method

.method public final X(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Z)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "onPlayBegin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPlayEnd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPlayError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object p5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object p5

    :goto_0
    if-eqz p5, :cond_1

    .line 2
    invoke-interface {p5, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->h(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public final a0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->h:Z

    return-void
.end method

.method public final b0(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->d(I)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->d(I)V

    :cond_1
    return-void
.end method

.method public final d0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final e0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$b;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->j0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;->Loss:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->k0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;)V

    .line 4
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;->Win:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->l0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;)V

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;->Win:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->k0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;)V

    .line 6
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;->Loss:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->l0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/f;

    invoke-direct {v0, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lkotlin/jvm/functions/Function0;)V

    .line 8
    iget-wide v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->j:J

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final q0()V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZZILjava/lang/Object;)V

    return-void
.end method

.method public final r(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;)V
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->i:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    return-void
.end method

.method public final r0(Z)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZZILjava/lang/Object;)V

    return-void
.end method

.method public final s(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;Z)J
    .locals 8
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getStartTime()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long v0, v0, v2

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getInteractionTime()I

    move-result v6

    .line 3
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->a:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->w()J

    move-result-wide v4

    const-string v7, ""

    move-object v2, p1

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;->b(Ljava/lang/Long;JILjava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;->e()J

    move-result-wide v0

    if-eqz p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Left (Broadcast): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;->f(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public final s0(ZZ)V
    .locals 6
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZZILjava/lang/Object;)V

    return-void
.end method

.method public final t0(ZZZ)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyy Show Secondary Player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isWatcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    const v1, 0x7f0a079d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->c:Landroid/view/ViewGroup;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;

    invoke-direct {v2, p3, p0, p2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$c;-><init>(ZLcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZ)V

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->m(Landroid/view/ViewGroup;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;)V

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->n:Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->n:Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->b()V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->n:Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/PkInfoPanel;->a()V

    :cond_2
    return-void
.end method

.method public final u(Lkotlin/jvm/functions/Function0;)V
    .locals 11
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->i:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->a:Lg5/a;

    invoke-virtual {v2}, Lg5/a;->w()J

    move-result-wide v2

    const-string v4, ""

    .line 4
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;->h(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;JLjava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;->e()J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v1, v4

    if-gtz v7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;->e()J

    move-result-wide v7

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->i:Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getPunishmentTime()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v9, v0

    add-long/2addr v7, v9

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;->e()J

    move-result-wide v7

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "yyy Maybe Punishment: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", duration: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    cmp-long v0, v7, v4

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v6, v3, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->n0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZILjava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-direct {p0, v6}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->m0(Z)V

    .line 11
    :goto_2
    invoke-direct {p0, v7, v8, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->D0(JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final v0(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyy Show watcher decors. Rightside: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    .line 2
    invoke-static/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZZILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final w()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    .line 2
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dispose detached VideoView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->c()V

    .line 4
    invoke-interface {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->destroy()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final w0(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyy Starting primary. Url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->k:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->Z(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    return-void
.end method

.method public final x()V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->z(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZILjava/lang/Object;)V

    return-void
.end method

.method public final x0(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->B0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;ZILjava/lang/Object;)V

    return-void
.end method

.method public final y(Z)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->I()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_5

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->c()V

    :cond_2
    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->destroy()V

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->c()V

    :cond_4
    if-eqz v0, :cond_5

    .line 6
    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->destroy()V

    :cond_5
    if-eqz v0, :cond_6

    const/4 p1, 0x0

    .line 7
    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/g;->setVisible(Z)V

    :cond_6
    return-void
.end method

.method public final y0(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;Z)V
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->p:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;->getStart_time()Ljava/lang/Long;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->a:Lg5/a;

    invoke-virtual {v2}, Lg5/a;->w()J

    move-result-wide v2

    .line 4
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g$a;->g(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;Ljava/lang/Long;J)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->A0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final z0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->C0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/i;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
