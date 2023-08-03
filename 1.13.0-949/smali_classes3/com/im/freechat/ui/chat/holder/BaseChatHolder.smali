.class public abstract Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseChatHolder.kt"

# interfaces
.implements Lorg/koin/core/component/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/holder/BaseChatHolder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseChatHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseChatHolder.kt\ncom/im/freechat/ui/chat/holder/BaseChatHolder\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 SpannableStringBuilder.kt\nandroidx/core/text/SpannableStringBuilderKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,587:1\n56#2,6:588\n275#3,2:594\n254#3,2:596\n254#3,2:598\n254#3,2:600\n254#3,2:602\n254#3,2:604\n254#3,2:606\n254#3,2:613\n254#3,2:615\n254#3,2:617\n254#3,2:619\n254#3,2:621\n254#3,2:623\n254#3,2:625\n254#3,2:627\n254#3,2:629\n254#3,2:631\n254#3,2:633\n254#3,2:635\n87#4:608\n74#4,4:609\n211#5,2:637\n766#6:639\n857#6,2:640\n1851#6,2:642\n*S KotlinDebug\n*F\n+ 1 BaseChatHolder.kt\ncom/im/freechat/ui/chat/holder/BaseChatHolder\n*L\n67#1:588,6\n176#1:594,2\n182#1:596,2\n185#1:598,2\n188#1:600,2\n206#1:602,2\n207#1:604,2\n208#1:606,2\n235#1:613,2\n236#1:615,2\n258#1:617,2\n283#1:619,2\n284#1:621,2\n285#1:623,2\n360#1:625,2\n362#1:627,2\n398#1:629,2\n399#1:631,2\n409#1:633,2\n420#1:635,2\n216#1:608\n216#1:609,4\n478#1:637,2\n497#1:639\n497#1:640,2\n498#1:642,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010?\u001a\u00020<\u0012\u0006\u0010C\u001a\u00020\u0005\u00a2\u0006\u0006\u0008\u0091\u0001\u0010\u0092\u0001J\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\tH\u0002J \u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u000c\u0010\u001b\u001a\u00020\u0007*\u00020\u001aH\u0003J\u001a\u0010\u001e\u001a\u00020\u00072\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00070\u001cJ(\u0010!\u001a\u00020\u00072 \u0010\u001d\u001a\u001c\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010 0\u001f\u0012\u0004\u0012\u00020\u00070\u001cJ \u0010$\u001a\u00020\u00072\u0018\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00070\"J\u001a\u0010&\u001a\u00020\u00072\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00070\u001cJ\"\u0010\'\u001a\u00020\u00072\u001a\u0010\u001d\u001a\u0016\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010%\u0012\u0004\u0012\u00020\u00070\"J\u001a\u0010(\u001a\u00020\u00072\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070\u001cJ\u001c\u0010,\u001a\u00020\u00072\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020*0)H\u0016J\u0010\u0010/\u001a\n .*\u0004\u0018\u00010-0-H\u0004J\u0010\u00101\u001a\u00020\u00072\u0008\u0008\u0002\u00100\u001a\u00020\u0005J(\u00105\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c2\u0008\u00102\u001a\u0004\u0018\u00010\t2\u0006\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020\u0005J\u0010\u00106\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J*\u00107\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c2\u0008\u00102\u001a\u0004\u0018\u00010\t2\u0006\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020\u0005H\u0014J\u0016\u00109\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00162\u0006\u00108\u001a\u00020\u0016J\u0006\u0010:\u001a\u00020\u0007J\u0014\u0010;\u001a\u00020\u0007*\u00020\u001a2\u0006\u0010\n\u001a\u00020\tH\u0004R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u001a\u0010C\u001a\u00020\u00058\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008@\u00101\u001a\u0004\u0008A\u0010BR\u0017\u0010G\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008D\u00106\u001a\u0004\u0008E\u0010FR\u0017\u0010J\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008H\u00106\u001a\u0004\u0008I\u0010FR\u001b\u0010P\u001a\u00020K8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010OR\"\u0010U\u001a\u00020\u00058\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u00101\u001a\u0004\u0008R\u0010B\"\u0004\u0008S\u0010TR>\u0010\\\u001a\u001e\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010 0\u001f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010[RT\u0010f\u001a4\u0012\u0013\u0012\u00110 \u00a2\u0006\u000c\u0008]\u0012\u0008\u0008^\u0012\u0004\u0008\u0008(_\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u0008]\u0012\u0008\u0008^\u0012\u0004\u0008\u0008(`\u0012\u0004\u0012\u00020\u0007\u0018\u00010\"8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010a\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR0\u0010j\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008g\u0010W\u001a\u0004\u0008h\u0010Y\"\u0004\u0008i\u0010[R$\u0010l\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010WR,\u0010n\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0006\u0012\u0004\u0018\u00010%\u0012\u0004\u0012\u00020\u0007\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010aR$\u0010p\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010WR0\u0010s\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010W\u001a\u0004\u0008q\u0010Y\"\u0004\u0008r\u0010[R&\u0010v\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020*0)0t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010uR$\u0010~\u001a\u0004\u0018\u00010w8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008x\u0010y\u001a\u0004\u0008z\u0010{\"\u0004\u0008|\u0010}R\u0015\u0010\u0080\u0001\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u007f\u0010BR\u0016\u0010\u0082\u0001\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0081\u0001\u0010BR\u0016\u0010\u0084\u0001\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0083\u0001\u0010BR\u0017\u0010\u0087\u0001\u001a\u00020<8&X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u0019\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u001a8&X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u0019\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u001a8&X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008b\u0001\u0010\u0089\u0001R\u001a\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008d\u00018&X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u00a8\u0006\u0093\u0001"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lorg/koin/core/component/a;",
        "Lcom/im/freechat/shared/entities/contact/Sender;",
        "sender",
        "",
        "nextMessageSenderIsTheSame",
        "",
        "G",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "message",
        "y",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "messageWrapper",
        "r",
        "text",
        "Landroid/text/SpannableStringBuilder;",
        "J",
        "",
        "charSequence",
        "Landroid/text/TextPaint;",
        "textPaint",
        "",
        "width",
        "Landroid/text/StaticLayout;",
        "V",
        "Landroid/widget/TextView;",
        "p0",
        "Lkotlin/Function1;",
        "l",
        "k0",
        "",
        "",
        "i0",
        "Lkotlin/Function2;",
        "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
        "w0",
        "",
        "u0",
        "n0",
        "j0",
        "",
        "Lcom/im/freechat/shared/entities/DownloadInfo;",
        "downloadInfos",
        "h0",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "M",
        "keepState",
        "Z",
        "prev",
        "position",
        "selectionMode",
        "E",
        "I",
        "F",
        "itemsCount",
        "q",
        "x0",
        "v0",
        "Landroid/view/View;",
        "a",
        "Landroid/view/View;",
        "v",
        "b",
        "d0",
        "()Z",
        "isGroup",
        "g",
        "S",
        "()I",
        "MEDIA_GRID_WIDTH",
        "h",
        "R",
        "MEDIA_GRID_MAX_HEIGHT",
        "Lcom/im/freechat/utils/f;",
        "i",
        "Lkotlin/Lazy;",
        "N",
        "()Lcom/im/freechat/utils/f;",
        "downloadUtil",
        "j",
        "W",
        "t0",
        "(Z)V",
        "preProcessing",
        "k",
        "Lkotlin/jvm/functions/Function1;",
        "Q",
        "()Lkotlin/jvm/functions/Function1;",
        "r0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "mAtSomeOneClickListener",
        "Lkotlin/ParameterName;",
        "name",
        "url",
        "target",
        "Lkotlin/jvm/functions/Function2;",
        "T",
        "()Lkotlin/jvm/functions/Function2;",
        "s0",
        "(Lkotlin/jvm/functions/Function2;)V",
        "mUrlClickListener",
        "m",
        "K",
        "l0",
        "binnaryCallback",
        "n",
        "mQuoteClickCallback",
        "o",
        "mForwardClickCallback",
        "p",
        "avatarClickListener",
        "P",
        "o0",
        "longClickListener",
        "Landroidx/lifecycle/Observer;",
        "Landroidx/lifecycle/Observer;",
        "observer",
        "Landroid/animation/ValueAnimator;",
        "s",
        "Landroid/animation/ValueAnimator;",
        "L",
        "()Landroid/animation/ValueAnimator;",
        "m0",
        "(Landroid/animation/ValueAnimator;)V",
        "colorAnimator",
        "c0",
        "isChannel",
        "f0",
        "isMediaGroupCell",
        "e0",
        "isMe",
        "U",
        "()Landroid/view/View;",
        "messageContent",
        "Y",
        "()Landroid/widget/TextView;",
        "tvTextContent",
        "X",
        "tvEditTag",
        "Landroid/widget/ImageView;",
        "O",
        "()Landroid/widget/ImageView;",
        "ivPreview",
        "<init>",
        "(Landroid/view/View;Z)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Z

.field private final c:Lf4/d0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final d:Lf4/e0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final e:Lf4/f0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final f:Lf4/g0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final g:I

.field private final h:I

.field private final i:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private j:Z

.field private k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private l:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private m:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private n:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private o:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private p:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private q:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final r:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private s:Landroid/animation/ValueAnimator;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->a:Landroid/view/View;

    .line 3
    iput-boolean p2, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->b:Z

    .line 4
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->c0()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->f0()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lf4/d0;->a(Landroid/view/View;)Lf4/d0;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->c:Lf4/d0;

    .line 5
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->e0()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lf4/e0;->a(Landroid/view/View;)Lf4/e0;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->d:Lf4/e0;

    .line 6
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->e0()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->c0()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->f0()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Lf4/f0;->a(Landroid/view/View;)Lf4/f0;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v0

    :goto_2
    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->e:Lf4/f0;

    .line 7
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->c0()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->f0()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Lf4/g0;->a(Landroid/view/View;)Lf4/g0;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v0

    :goto_3
    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->f:Lf4/g0;

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->M()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lb4/b$g;->v3:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->g:I

    .line 9
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->M()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/im/freechat/extend/f;->v(Landroid/content/Context;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->h:I

    .line 10
    sget-object p1, Ld9/b;->a:Ld9/b;

    invoke-virtual {p1}, Ld9/b;->b()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$special$$inlined$inject$default$1;

    invoke-direct {p2, p0, v0, v0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->i:Lkotlin/Lazy;

    .line 13
    new-instance p1, Lcom/im/freechat/ui/chat/holder/j;

    invoke-direct {p1, p0}, Lcom/im/freechat/ui/chat/holder/j;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->r:Landroidx/lifecycle/Observer;

    return-void
.end method

.method private static final A(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_with"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->n:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final B(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_with"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->n:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final C(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_with"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->n:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final D(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/lang/Long;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->o:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final G(Lcom/im/freechat/shared/entities/contact/Sender;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->e:Lf4/f0;

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->b:Z

    const/16 v2, 0x8

    const-string v3, "flAvatar"

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/Sender;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v4, v0, Lf4/f0;->b:Landroid/widget/FrameLayout;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-virtual {v4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p2, v0, Lf4/f0;->d:Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, v0, Lf4/f0;->d:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/im/freechat/extend/r;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object p2, v0, Lf4/f0;->b:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/im/freechat/ui/chat/holder/o;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/ui/chat/holder/o;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/contact/Sender;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/Sender;->getAvatar()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ivIcon"

    if-eqz p1, :cond_1

    .line 10
    iget-object v1, v0, Lf4/f0;->c:Landroid/widget/ImageView;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, v0, Lf4/f0;->c:Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/im/freechat/extend/m;->o(Landroid/widget/ImageView;Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, v0, Lf4/f0;->c:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, v0, Lf4/f0;->b:Landroid/widget/FrameLayout;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final H(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/contact/Sender;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$sender"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->p:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/Sender;->getUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final J(Lcom/im/freechat/shared/entities/message/Message;)Landroid/text/SpannableStringBuilder;
    .locals 13

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMentionAll()Z

    move-result v1

    const/16 v2, 0x11

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/im/freechat/utils/d;

    .line 5
    sget-object v4, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$b;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder$b;

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->M()Landroid/content/Context;

    move-result-object v3

    sget v5, Lb4/b$f;->P1:I

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    .line 7
    invoke-direct/range {v3 .. v8}, Lcom/im/freechat/utils/d;-><init>(Lkotlin/jvm/functions/Function1;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    .line 9
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 10
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMentions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v7, v4

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    :goto_1
    if-ltz v5, :cond_1

    .line 15
    new-instance v12, Lcom/im/freechat/utils/d;

    .line 16
    new-instance v7, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$c;

    invoke-direct {v7, p0, v3}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$c;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Ljava/util/Map$Entry;)V

    .line 17
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->M()Landroid/content/Context;

    move-result-object v3

    sget v6, Lb4/b$f;->P1:I

    invoke-static {v3, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v12

    .line 18
    invoke-direct/range {v6 .. v11}, Lcom/im/freechat/utils/d;-><init>(Lkotlin/jvm/functions/Function1;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    .line 20
    invoke-virtual {v0, v12, v5, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStyles()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/im/freechat/shared/entities/message/MessageStyle;

    .line 24
    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/message/MessageStyle;->getOffset()I

    move-result v6

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/message/MessageStyle;->getLength()I

    move-result v5

    add-int/2addr v6, v5

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-gt v6, v5, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/im/freechat/shared/entities/message/MessageStyle;

    .line 26
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/MessageStyle;->getType()Lcom/im/freechat/shared/entities/message/MessageStyle$StyleType;

    move-result-object v2

    sget-object v3, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v4, :cond_9

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 27
    new-instance v2, Lcom/im/freechat/utils/d;

    .line 28
    new-instance v3, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$d;

    invoke-direct {v3, p0, v1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$d;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/MessageStyle;)V

    .line 29
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->M()Landroid/content/Context;

    move-result-object v5

    sget v6, Lb4/b$f;->P1:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 30
    invoke-direct {v2, v3, v5, v4}, Lcom/im/freechat/utils/d;-><init>(Lkotlin/jvm/functions/Function1;IZ)V

    goto :goto_6

    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 31
    :cond_9
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 32
    :goto_6
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/MessageStyle;->getOffset()I

    move-result v3

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/MessageStyle;->getOffset()I

    move-result v5

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/MessageStyle;->getLength()I

    move-result v1

    add-int/2addr v5, v1

    const/16 v1, 0x12

    .line 33
    invoke-virtual {v0, v2, v3, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_a
    return-object v0
.end method

.method private final V(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;
    .locals 9

    .line 1
    new-instance v8, Landroid/text/StaticLayout;

    .line 2
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 3
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method public static synthetic a0(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->Z(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: highlightViewBackground"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/contact/Sender;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->H(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/contact/Sender;Landroid/view/View;)V

    return-void
.end method

.method private static final b0(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic c(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->t(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private final c0()Z
    .locals 1

    instance-of v0, p0, Lcom/im/freechat/ui/chat/holder/p0;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/im/freechat/ui/chat/holder/o0;

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

.method public static synthetic d(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->g0(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic e(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->A(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;Landroid/view/View;)V

    return-void
.end method

.method private final e0()Z
    .locals 1

    instance-of v0, p0, Lcom/im/freechat/ui/chat/holder/j0;

    return v0
.end method

.method public static synthetic f(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/lang/Long;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->z(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/lang/Long;Landroid/view/View;)V

    return-void
.end method

.method private final f0()Z
    .locals 1

    instance-of v0, p0, Lcom/im/freechat/ui/chat/holder/b0;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/im/freechat/ui/chat/holder/t0;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/im/freechat/ui/chat/holder/y;

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

.method public static synthetic g(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->x(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final g0(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Ljava/util/Map;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->h0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic h(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/lang/Long;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->D(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/lang/Long;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->v(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Landroid/widget/TextView;Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->w(Landroid/widget/TextView;Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->b0(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic l(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->s(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->B(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->u(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->q0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->C(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;Landroid/view/View;)V

    return-void
.end method

.method private final p0(Landroid/widget/TextView;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    sget-object v0, Lcom/im/freechat/ui/chat/holder/i;->a:Lcom/im/freechat/ui/chat/holder/i;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final q0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget v0, Lb4/b$j;->fh:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return v3

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final r(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3
    new-instance v1, Lcom/im/freechat/ui/chat/holder/g;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/ui/chat/holder/g;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->O()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/im/freechat/ui/chat/holder/s;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/ui/chat/holder/s;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->U()Landroid/view/View;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/im/freechat/ui/chat/holder/h;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/ui/chat/holder/h;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7
    new-instance v1, Lcom/im/freechat/ui/chat/holder/l;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/holder/l;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->Y()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v1, Lcom/im/freechat/ui/chat/holder/k;

    invoke-direct {v1, v0, p0}, Lcom/im/freechat/ui/chat/holder/k;-><init>(Landroid/widget/TextView;Lcom/im/freechat/ui/chat/holder/BaseChatHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance v1, Lcom/im/freechat/ui/chat/holder/f;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/ui/chat/holder/f;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method

.method private static final s(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$messageWrapper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->q:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final t(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$messageWrapper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->q:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final u(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$messageWrapper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->q:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final v(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private static final w(Landroid/widget/TextView;Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Landroid/view/View;)V
    .locals 1

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method private static final x(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Landroid/view/View;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$messageWrapper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->q:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final y(Lcom/im/freechat/shared/entities/message/Message;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->f:Lf4/g0;

    if-eqz v1, :cond_a

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->M()Landroid/content/Context;

    move-result-object v2

    .line 3
    instance-of v3, v0, Lcom/im/freechat/ui/chat/holder/z;

    if-eqz v3, :cond_0

    sget v3, Lb4/b$f;->U1:I

    goto :goto_0

    .line 4
    :cond_0
    instance-of v3, v0, Lcom/im/freechat/ui/chat/holder/a0;

    if-eqz v3, :cond_1

    sget v3, Lb4/b$f;->Y1:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lb4/b$f;->W1:I

    goto :goto_0

    .line 6
    :cond_2
    sget v3, Lb4/b$f;->a2:I

    .line 7
    :goto_0
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/im/freechat/extend/p;->x(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v3

    const-string v4, ""

    const-string v5, "forwardGroup"

    const-string v6, "quoteGroup"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "quotePreview"

    const/16 v10, 0x8

    if-eqz v3, :cond_3

    .line 9
    iget-object v3, v1, Lf4/g0;->c:Landroidx/constraintlayout/widget/Group;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v3, v1, Lf4/g0;->d:Landroid/widget/ImageView;

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v3, v1, Lf4/g0;->b:Landroidx/constraintlayout/widget/Group;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getForwardMessageId()Ljava/lang/Long;

    move-result-object v3

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getForwardMessageSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getForwardMessageChatId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/contact/Sender;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 19
    iget-object v15, v1, Lf4/g0;->f:Landroid/widget/TextView;

    .line 20
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 21
    invoke-virtual {v15}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lb4/b$s;->u0:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const-string v10, "SpannableStringBuilder()\u2026_details_forwarded_from))"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v10, Landroid/text/style/StyleSpan;

    invoke-direct {v10, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 23
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 24
    invoke-virtual {v9, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v11, 0x11

    invoke-virtual {v9, v10, v8, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 26
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/contact/Sender;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v4

    invoke-static {v4}, Lcom/im/freechat/extend/m;->m(Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v4, 0x16

    const/16 v16, 0x0

    move-object v9, v15

    move-object v5, v15

    move v15, v4

    .line 29
    invoke-static/range {v9 .. v16}, Lcom/im/freechat/utils/v;->d(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZILjava/lang/Object;)V

    .line 30
    new-instance v4, Lcom/im/freechat/ui/chat/holder/n;

    invoke-direct {v4, v0, v6, v3}, Lcom/im/freechat/ui/chat/holder/n;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/lang/Long;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object v1, v1, Lf4/g0;->g:Landroid/widget/TextView;

    .line 33
    new-instance v4, Lcom/im/freechat/ui/chat/holder/m;

    invoke-direct {v4, v0, v6, v3}, Lcom/im/freechat/ui/chat/holder/m;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/lang/Long;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 35
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getRepliedMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 36
    iget-object v3, v1, Lf4/g0;->b:Landroidx/constraintlayout/widget/Group;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v3, v1, Lf4/g0;->c:Landroidx/constraintlayout/widget/Group;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/shared/entities/message/Message;->getRepliedMessage()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    iget-object v5, v0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "v.context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/im/freechat/extend/p;->d(Lcom/im/freechat/shared/entities/message/Message;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 42
    iget-object v6, v1, Lf4/g0;->i:Landroid/widget/TextView;

    .line 43
    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v11

    invoke-virtual {v11}, Lcom/im/freechat/shared/entities/contact/Sender;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v11

    invoke-virtual {v11}, Lcom/im/freechat/shared/entities/contact/Sender;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v11

    invoke-static {v11}, Lcom/im/freechat/extend/m;->m(Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x16

    const/16 v18, 0x0

    move-object v11, v6

    .line 46
    invoke-static/range {v11 .. v18}, Lcom/im/freechat/utils/v;->d(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZILjava/lang/Object;)V

    .line 47
    new-instance v11, Lcom/im/freechat/ui/chat/holder/p;

    invoke-direct {v11, v0, v3}, Lcom/im/freechat/ui/chat/holder/p;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v6, v1, Lf4/g0;->h:Landroid/widget/TextView;

    .line 50
    new-instance v11, Lcom/im/freechat/ui/chat/holder/q;

    invoke-direct {v11, v0, v3}, Lcom/im/freechat/ui/chat/holder/q;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v5, v1, Lf4/g0;->e:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    iget-object v2, v1, Lf4/g0;->d:Landroid/widget/ImageView;

    .line 55
    new-instance v5, Lcom/im/freechat/ui/chat/holder/r;

    invoke-direct {v5, v0, v3}, Lcom/im/freechat/ui/chat/holder/r;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Lcom/im/freechat/shared/entities/message/Message;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {v3}, Lcom/im/freechat/extend/p;->B(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 58
    invoke-static {v3}, Lcom/im/freechat/extend/p;->H(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/VideoAttachment;

    move-result-object v1

    invoke-static {v1}, Lcom/im/freechat/extend/p;->i(Lcom/im/freechat/shared/entities/message/VideoAttachment;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x0

    move-object v11, v2

    invoke-static/range {v11 .. v17}, Lcom/im/freechat/extend/m;->s(Landroid/widget/ImageView;Ljava/lang/Object;FZIILjava/lang/Object;)V

    goto :goto_1

    .line 59
    :cond_4
    invoke-static {v3}, Lcom/im/freechat/extend/p;->t(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 60
    iget-object v11, v1, Lf4/g0;->d:Landroid/widget/ImageView;

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/im/freechat/extend/p;->G(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/ImageAttachment;

    move-result-object v1

    invoke-static {v1}, Lcom/im/freechat/extend/p;->h(Lcom/im/freechat/shared/entities/message/ImageAttachment;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/im/freechat/extend/m;->s(Landroid/widget/ImageView;Ljava/lang/Object;FZIILjava/lang/Object;)V

    goto :goto_1

    .line 61
    :cond_5
    invoke-static {v3}, Lcom/im/freechat/extend/p;->s(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 62
    iget-object v11, v1, Lf4/g0;->d:Landroid/widget/ImageView;

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/im/freechat/extend/p;->F(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/GifAttachment;

    move-result-object v1

    invoke-static {v1}, Lcom/im/freechat/extend/p;->k(Lcom/im/freechat/shared/entities/message/Attachment;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/im/freechat/extend/m;->s(Landroid/widget/ImageView;Ljava/lang/Object;FZIILjava/lang/Object;)V

    goto :goto_1

    .line 63
    :cond_6
    invoke-static {v3}, Lcom/im/freechat/extend/p;->r(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 64
    iget-object v11, v1, Lf4/g0;->d:Landroid/widget/ImageView;

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/im/freechat/extend/p;->E(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/shared/entities/message/FileAttachment;

    move-result-object v1

    invoke-static {v1}, Lcom/im/freechat/extend/p;->k(Lcom/im/freechat/shared/entities/message/Attachment;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/im/freechat/extend/m;->s(Landroid/widget/ImageView;Ljava/lang/Object;FZIILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_8

    goto :goto_2

    :cond_8
    const/16 v7, 0x8

    .line 65
    :goto_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 66
    :cond_9
    iget-object v2, v1, Lf4/g0;->c:Landroidx/constraintlayout/widget/Group;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v2, v1, Lf4/g0;->d:Landroid/widget/ImageView;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v1, v1, Lf4/g0;->b:Landroidx/constraintlayout/widget/Group;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method private static final z(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;ILjava/lang/Long;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->o:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final E(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "messageWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->N()Lcom/im/freechat/utils/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/utils/f;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->r:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->s:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected F(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V
    .locals 7
    .param p1    # Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string p3, "messageWrapper"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p3

    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object p3

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->l()Z

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->G(Lcom/im/freechat/shared/entities/contact/Sender;Z)V

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->I(Lcom/im/freechat/shared/entities/message/Message;)V

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->y(Lcom/im/freechat/shared/entities/message/Message;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->r(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;)V

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->j()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->Z(Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000d

    .line 9
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 10
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->Y()Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->v0(Landroid/widget/TextView;Lcom/im/freechat/shared/entities/message/Message;)V

    .line 13
    invoke-virtual {p3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lb4/b$f;->V1:I

    goto :goto_1

    :cond_1
    sget v2, Lb4/b$f;->Z1:I

    .line 15
    :goto_1
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 16
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    :cond_2
    iget-object p3, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->c:Lf4/d0;

    if-eqz p3, :cond_7

    .line 18
    iget-object v1, p3, Lf4/d0;->d:Landroid/widget/TextView;

    .line 19
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/im/freechat/extend/m;->g(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, ""

    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v3, v4, p2}, Lcom/im/freechat/extend/m;->f(JLjava/lang/Long;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    const/16 p2, 0x8

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/16 v0, 0x8

    .line 21
    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, p3, Lf4/d0;->c:Landroid/widget/FrameLayout;

    const-string v1, "cbSelect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_6

    goto :goto_4

    :cond_6
    const/16 v2, 0x8

    .line 23
    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p2, p3, Lf4/d0;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->j()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method public I(Lcom/im/freechat/shared/entities/message/Message;)V
    .locals 5
    .param p1    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->c:Lf4/d0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf4/d0;->e:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/im/freechat/extend/f;->p(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    :goto_1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->d:Lf4/e0;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v1

    sget-object v2, Lcom/im/freechat/ui/chat/holder/BaseChatHolder$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 4
    iget-object v1, v0, Lf4/e0;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object v1, v0, Lf4/e0;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6
    iget-object v0, v0, Lf4/e0;->c:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object p1

    sget-object v1, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->HAVE_READ:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    if-eq p1, v1, :cond_2

    .line 8
    sget p1, Lb4/b$h;->E5:I

    goto :goto_2

    :cond_2
    sget p1, Lb4/b$h;->C5:I

    .line 9
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 10
    :cond_3
    iget-object p1, v0, Lf4/e0;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    iget-object p1, v0, Lf4/e0;->b:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 12
    iget-object p1, v0, Lf4/e0;->c:Landroid/widget/ImageView;

    sget v0, Lb4/b$h;->B5:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 13
    :cond_4
    iget-object p1, v0, Lf4/e0;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 14
    iget-object p1, v0, Lf4/e0;->b:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 15
    iget-object p1, v0, Lf4/e0;->c:Landroid/widget/ImageView;

    sget v0, Lb4/b$h;->D5:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method protected final K()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->m:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final L()Landroid/animation/ValueAnimator;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->s:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method protected final M()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final N()Lcom/im/freechat/utils/f;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/utils/f;

    return-object v0
.end method

.method public abstract O()Landroid/widget/ImageView;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public final P()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->q:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected final Q()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->k:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final R()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->h:I

    return v0
.end method

.method public final S()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->g:I

    return v0
.end method

.method protected final T()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->l:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public abstract U()Landroid/view/View;
    .annotation build Lm8/g;
    .end annotation
.end method

.method protected final W()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->j:Z

    return v0
.end method

.method public abstract X()Landroid/widget/TextView;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract Y()Landroid/widget/TextView;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public final Z(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lb4/b$f;->X1:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x106000d

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 4
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->s:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x7d0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->s:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/im/freechat/ui/chat/holder/e;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/chat/holder/e;-><init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->s:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method protected final d0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->b:Z

    return v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0}, Lorg/koin/core/component/a$a;->a(Lorg/koin/core/component/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public h0(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/im/freechat/shared/entities/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final i0(Lkotlin/jvm/functions/Function1;)V
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
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->k:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final j0(Lkotlin/jvm/functions/Function1;)V
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
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->p:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final k0(Lkotlin/jvm/functions/Function1;)V
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
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->m:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method protected final l0(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->m:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final m0(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->s:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final n0(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->o:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final o0(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->q:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final q(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-le p2, v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 2
    :goto_1
    rem-int v3, p2, v1

    if-nez v3, :cond_2

    move v3, v1

    :cond_2
    sub-int v4, p2, v3

    sub-int/2addr v4, p1

    if-gtz v4, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    const v4, 0x3f666666    # 0.9f

    if-nez p1, :cond_4

    .line 3
    iget p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->g:I

    int-to-float p1, p1

    int-to-float v3, v1

    goto :goto_3

    .line 4
    :cond_4
    iget p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->g:I

    int-to-float p1, p1

    int-to-float v3, v3

    :goto_3
    div-float/2addr p1, v3

    mul-float p1, p1, v4

    float-to-int p1, p1

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne p2, v2, :cond_5

    .line 6
    iget p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->h:I

    div-int/2addr p1, v2

    goto :goto_4

    .line 7
    :cond_5
    iget p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->h:I

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p2, v1

    float-to-int p2, p2

    div-int/2addr p1, p2

    .line 8
    :goto_4
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 9
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->O()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v1, -0x1

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setFlexShrink(F)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setFlexGrow(F)V

    :cond_7
    return-void
.end method

.method protected final r0(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->k:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method protected final s0(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->l:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method protected final t0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->j:Z

    return-void
.end method

.method public final u0(Lkotlin/jvm/functions/Function1;)V
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
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->n:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method protected final v0(Landroid/widget/TextView;Lcom/im/freechat/shared/entities/message/Message;)V
    .locals 9
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->X()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 5
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6
    sget v4, Lb4/b$g;->t3:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 7
    sget v5, Lb4/b$g;->u3:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 8
    invoke-direct {p0, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->J(Lcom/im/freechat/shared/entities/message/Message;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 9
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->c0()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/im/freechat/extend/f;->p(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget v7, Lb4/b$s;->n0:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "getString(R.string.activity_chat_details_edited)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :goto_3
    invoke-static {p2}, Lcom/im/freechat/extend/p;->w(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->c0()Z

    move-result p2

    if-nez p2, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->X()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_4

    .line 12
    :cond_5
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_4
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1, v4, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_9

    .line 15
    :cond_6
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->X()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_5

    .line 16
    :cond_7
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :goto_5
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->X()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_6
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->X()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    goto :goto_7

    :cond_9
    const/4 p2, 0x0

    :goto_7
    invoke-static {v0, p2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p2

    div-int/lit8 v0, v4, 0x2

    invoke-static {v0}, Lcom/im/freechat/extend/s;->a(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 19
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    add-float/2addr v0, p2

    int-to-float v1, v4

    add-float/2addr v0, v1

    .line 20
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    float-to-int p2, p2

    .line 21
    invoke-virtual {p1, v4, v5, p2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_8

    .line 22
    :cond_a
    invoke-virtual {p1, v4, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 23
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "paint"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    mul-int/lit8 v3, v4, 0x2

    sub-int/2addr v1, v3

    .line 25
    invoke-direct {p0, v6, v0, v1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->V(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v1, p2

    mul-int/lit8 v4, v4, 0x3

    int-to-float p2, v4

    add-float/2addr v1, p2

    .line 27
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-ltz p2, :cond_c

    .line 28
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p2

    if-ne p2, v2, :cond_b

    const-string p2, "\n"

    .line 29
    invoke-virtual {v6, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_8

    :cond_b
    const-string p2, "                \u202f"

    .line 30
    invoke-virtual {v6, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 31
    :cond_c
    :goto_8
    new-instance p2, Lcom/im/freechat/ui/chat/holder/g0;

    invoke-static {}, Lcom/im/freechat/ui/chat/holder/t;->a()Lcom/im/freechat/ui/chat/holder/g0$a;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/im/freechat/ui/chat/holder/g0;-><init>(Lcom/im/freechat/ui/chat/holder/g0$a;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->p0(Landroid/widget/TextView;)V

    .line 33
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    return-void
.end method

.method public final w0(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->l:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final x0()V
    .locals 2

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->N()Lcom/im/freechat/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/utils/f;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->r:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
