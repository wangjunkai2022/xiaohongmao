.class public final Lcom/qennnsad/aknkaksd/util/e0;
.super Ljava/lang/Object;
.source "FanClubUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFanClubUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FanClubUtil.kt\ncom/qennnsad/aknkaksd/util/FanClubUtil\n+ 2 SpannableStringBuilder.kt\nandroidx/core/text/SpannableStringBuilderKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,278:1\n115#2:279\n74#2,2:280\n144#2:282\n74#2,4:283\n76#2,2:287\n144#2:289\n74#2,4:290\n115#2:294\n74#2,4:295\n115#2:299\n74#2,4:300\n115#2:304\n74#2,4:305\n115#2:310\n74#2,4:311\n115#2:319\n74#2,4:320\n1#3:309\n254#4,2:315\n254#4,2:317\n254#4,2:324\n254#4,2:326\n*S KotlinDebug\n*F\n+ 1 FanClubUtil.kt\ncom/qennnsad/aknkaksd/util/FanClubUtil\n*L\n156#1:279\n156#1:280,2\n157#1:282\n157#1:283,4\n156#1:287,2\n185#1:289\n185#1:290,4\n193#1:294\n193#1:295,4\n199#1:299\n199#1:300,4\n205#1:304\n205#1:305,4\n230#1:310\n230#1:311,4\n103#1:319\n103#1:320,4\n90#1:315,2\n95#1:317,2\n130#1:324,2\n256#1:326,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010-\u001a\u00020,\u0012\u0006\u0010%\u001a\u00020\"\u00a2\u0006\u0004\u0008.\u0010/J\"\u0010\u0008\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u001a\u0010\t\u001a\u00020\u0006*\u00020\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002JB\u0010\u0010\u001a\u00020\u0006*\u00020\u00022\u0008\u0008\u0001\u0010\n\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0003\u0010\u000f\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0002J2\u0010\u0017\u001a\u00020\u00062\n\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J(\u0010\u001b\u001a\u00020\u00062\n\u0010\u0018\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u0010\u001a\u001a\u00020\u00192\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\n\u0010\u001d\u001a\u00020\u0003*\u00020\u001cJ\n\u0010\u001e\u001a\u00020\u0003*\u00020\u001cJ\u0014\u0010!\u001a\u0004\u0018\u00010\u001c*\u00020\u001f2\u0006\u0010 \u001a\u00020\u0003R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001f\u0010+\u001a\n &*\u0004\u0018\u00010\u00130\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\u00a8\u00060"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/e0;",
        "",
        "Landroid/app/Activity;",
        "",
        "price",
        "Lkotlin/Function0;",
        "",
        "onConfirm",
        "C",
        "B",
        "title",
        "Landroid/text/SpannableStringBuilder;",
        "message",
        "",
        "showCancel",
        "confirmButtonTitle",
        "o",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;",
        "baseStreamActivity",
        "",
        "anchorId",
        "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;",
        "fanClubInfo",
        "u",
        "activity",
        "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;",
        "joinFanClubBean",
        "A",
        "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;",
        "n",
        "m",
        "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;",
        "value",
        "k",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "b",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "kotlin.jvm.PlatformType",
        "c",
        "Ljava/lang/String;",
        "l",
        "()Ljava/lang/String;",
        "TAG",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# instance fields
.field private final a:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/e0;->a:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/e0;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 4
    const-class p1, Lcom/qennnsad/aknkaksd/util/e0;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/e0;->c:Ljava/lang/String;

    return-void
.end method

.method private final B(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v0, 0x7f0601c1

    .line 2
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 3
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 4
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const v2, 0x7f13019b

    .line 5
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v4, 0x11

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f13019c

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 7
    invoke-static/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/util/e0;->p(Lcom/qennnsad/aknkaksd/util/e0;Landroid/app/Activity;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private final C(Landroid/app/Activity;ILkotlin/jvm/functions/Function0;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v0, 0x7f130193

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v0, 0x7f060046

    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 4
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 5
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 6
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 7
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 9
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const/16 v5, 0x11

    invoke-virtual {v3, v2, v4, p2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {v3, v1, v0, p2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 11
    new-instance p2, Lcom/qennnsad/aknkaksd/util/j1$a;

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p2

    move-object v7, p1

    .line 13
    invoke-direct/range {v6 .. v11}, Lcom/qennnsad/aknkaksd/util/j1$a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 15
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x21

    .line 16
    invoke-virtual {v3, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const p2, 0x7f13018f

    .line 17
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v2, 0x7f130190

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 18
    invoke-static/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/util/e0;->p(Lcom/qennnsad/aknkaksd/util/e0;Landroid/app/Activity;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/e0;->s(Lkotlin/jvm/functions/Function0;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/e0;->r(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/qennnsad/aknkaksd/util/e0;->x(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/app/Dialog;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/qennnsad/aknkaksd/util/e0;->q(Landroid/app/Dialog;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Ljava/lang/String;Landroid/app/Dialog;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/qennnsad/aknkaksd/util/e0;->v(Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Ljava/lang/String;Landroid/app/Dialog;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic f(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/e0;->y(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/util/e0;->w(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/util/e0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/e0;->z(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/util/e0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/e0;->t(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic j(Lcom/qennnsad/aknkaksd/util/e0;Landroid/app/Activity;ILkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/util/e0;->C(Landroid/app/Activity;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final o(Landroid/app/Activity;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;)V
    .locals 8
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Landroid/text/SpannableStringBuilder;",
            "ZI",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Landroid/app/Dialog;

    const v0, 0x7f14028d

    invoke-direct {v7, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0d0057

    .line 2
    invoke-virtual {v7, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    new-instance p1, Lcom/qennnsad/aknkaksd/util/v;

    move-object v0, p1

    move-object v1, v7

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/util/v;-><init>(Landroid/app/Dialog;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 5
    :cond_0
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic p(Lcom/qennnsad/aknkaksd/util/e0;Landroid/app/Activity;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const p5, 0x7f13018c

    const v5, 0x7f13018c

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    and-int/lit8 p5, p7, 0x10

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/util/e0;->o(Landroid/app/Activity;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final q(Landroid/app/Dialog;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p6, "$this_apply"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$message"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p6, 0x7f0a073b

    .line 1
    invoke-virtual {p0, p6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TextView;

    invoke-virtual {p6, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a073a

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0134

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, ""

    .line 4
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 5
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    new-instance p2, Lcom/qennnsad/aknkaksd/util/x;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/util/x;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0135

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 8
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setText(I)V

    .line 9
    new-instance p2, Lcom/qennnsad/aknkaksd/util/d0;

    invoke-direct {p2, p5, p0}, Lcom/qennnsad/aknkaksd/util/d0;-><init>(Lkotlin/jvm/functions/Function0;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a03c9

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/qennnsad/aknkaksd/util/z;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/util/z;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final r(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final s(Lkotlin/jvm/functions/Function0;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final t(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final v(Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Ljava/lang/String;Landroid/app/Dialog;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 22

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v0, p3

    move-object/from16 v6, p4

    move-object/from16 v3, p5

    const-string v1, "this$0"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$anchorId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this_apply"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$baseStreamActivity"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$onConfirm"

    move-object/from16 v5, p6

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v2, Lcom/qennnsad/aknkaksd/util/e0;->a:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->w()J

    move-result-wide v7

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;->getStartedAt()J

    move-result-wide v9

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    :goto_0
    const/16 v1, 0x3e8

    int-to-long v11, v1

    mul-long v9, v9, v11

    sub-long/2addr v7, v9

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x7

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    const/4 v1, 0x1

    const/4 v13, 0x0

    cmp-long v11, v7, v9

    if-ltz v11, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 3
    :goto_1
    iget-object v7, v2, Lcom/qennnsad/aknkaksd/util/e0;->a:Lg5/a;

    invoke-virtual {v7}, Lg5/a;->D()Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getCoinbalance()I

    move-result v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;->getPrice()I

    move-result v8

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-lt v7, v8, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    const/4 v7, 0x0

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;->getFanOf()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object v8, v7

    :goto_5
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 5
    iget-object v8, v2, Lcom/qennnsad/aknkaksd/util/e0;->c:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWeekOver="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v8, v2, Lcom/qennnsad/aknkaksd/util/e0;->c:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEnoughBalance="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v8, v2, Lcom/qennnsad/aknkaksd/util/e0;->c:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isFanOfThisAnchor="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v8, 0x7f0a03ca

    .line 8
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/qennnsad/aknkaksd/util/c0;

    invoke-direct {v9, v3, v2, v4}, Lcom/qennnsad/aknkaksd/util/c0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0a0727

    .line 9
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f13018d

    new-array v10, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;->getLevel()I

    move-result v11

    goto :goto_6

    :cond_6
    const/4 v11, 0x1

    :goto_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v3, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a073c

    .line 12
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f13019d

    new-array v10, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;->getUpLevel()I

    move-result v11

    goto :goto_7

    :cond_7
    const/4 v11, 0x1

    :goto_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v3, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 14
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a04ef

    .line 15
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_a

    if-eqz v0, :cond_a

    if-eqz v4, :cond_8

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;->getLevel()I

    move-result v9

    invoke-virtual {v2, v4, v9}, Lcom/qennnsad/aknkaksd/util/e0;->k(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;I)Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;->getUpCoins()I

    move-result v9

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    :goto_8
    if-eqz v4, :cond_9

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;->getLevel()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {v2, v4, v10}, Lcom/qennnsad/aknkaksd/util/e0;->k(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;I)Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;->getUpCoins()I

    move-result v10

    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    :goto_9
    sub-int/2addr v9, v10

    .line 18
    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 19
    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMax()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;->getUpLevel()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 20
    iget-object v9, v2, Lcom/qennnsad/aknkaksd/util/e0;->c:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Progress: current = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", max="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMax()I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const v8, 0x7f0a0735

    .line 21
    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v12, ""

    .line 22
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;->getDescription()Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_b
    move-object v9, v7

    :goto_a
    if-eqz v9, :cond_d

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_c

    goto :goto_b

    :cond_c
    const/4 v9, 0x0

    goto :goto_c

    :cond_d
    :goto_b
    const/4 v9, 0x1

    :goto_c
    xor-int/2addr v9, v1

    const/16 v16, 0x8

    if-eqz v9, :cond_e

    const/4 v9, 0x0

    goto :goto_d

    :cond_e
    const/16 v9, 0x8

    .line 23
    :goto_d
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_f

    .line 24
    invoke-virtual/range {p2 .. p2}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;->getDescription()Ljava/lang/String;

    move-result-object v7

    :cond_f
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v7, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v7}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v7, 0x7f0a0738

    .line 26
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroid/widget/TextView;

    .line 27
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_11

    if-eqz v14, :cond_10

    if-nez v15, :cond_11

    :cond_10
    const/4 v7, 0x1

    goto :goto_e

    :cond_11
    const/4 v7, 0x0

    :goto_e
    if-eqz v7, :cond_12

    const/4 v7, 0x0

    goto :goto_f

    :cond_12
    const/16 v7, 0x8

    .line 28
    :goto_f
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    if-nez v14, :cond_13

    const v7, 0x7f130192

    .line 29
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10

    :cond_13
    if-nez v15, :cond_14

    .line 30
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 31
    invoke-virtual {v11}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f130191

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v7, 0x7f0600b8

    .line 32
    invoke-static {v3, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 33
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 34
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const v9, 0x7f13018e

    .line 35
    invoke-virtual {v3, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 36
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v13, 0x11

    invoke-virtual {v10, v8, v7, v9, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 37
    new-instance v13, Lcom/qennnsad/aknkaksd/util/j1$a;

    .line 38
    invoke-virtual {v11}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080406

    .line 39
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v7, v13

    move-object/from16 v8, p5

    move-object/from16 p3, v10

    move/from16 v10, v17

    move-object/from16 v20, v11

    move/from16 v11, v18

    move-object/from16 v21, v12

    move-object/from16 v12, v19

    .line 40
    invoke-direct/range {v7 .. v12}, Lcom/qennnsad/aknkaksd/util/j1$a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    invoke-virtual/range {p3 .. p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v1

    .line 42
    invoke-virtual/range {p3 .. p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    move-object/from16 v10, p3

    .line 43
    invoke-virtual {v10, v13, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v7, v20

    .line 44
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v8, Lcom/qennnsad/aknkaksd/util/b0;

    invoke-direct {v8, v3, v2}, Lcom/qennnsad/aknkaksd/util/b0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/util/e0;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_11

    :cond_14
    :goto_10
    move-object/from16 v21, v12

    :goto_11
    const v7, 0x7f0a013a

    .line 46
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v8, v21

    .line 47
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_15

    if-eqz v14, :cond_15

    if-eqz v15, :cond_15

    goto :goto_12

    :cond_15
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_16

    const/4 v13, 0x0

    goto :goto_13

    :cond_16
    const/16 v13, 0x8

    .line 48
    :goto_13
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 49
    new-instance v8, Lcom/qennnsad/aknkaksd/util/a0;

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/util/a0;-><init>(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c9

    .line 50
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/util/y;

    invoke-direct {v1, v6}, Lcom/qennnsad/aknkaksd/util/y;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final w(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Landroid/view/View;)V
    .locals 7

    const-string p3, "$baseStreamActivity"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;

    .line 2
    iget-object p1, p1, Lcom/qennnsad/aknkaksd/util/e0;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;->getHintUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x0

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/m;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;Landroid/content/Context;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method

.method private static final x(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    const-string p5, "this$0"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$baseStreamActivity"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$onConfirm"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1
    new-instance p0, Lcom/qennnsad/aknkaksd/util/e0$a;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/util/e0$a;-><init>(Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p1, p2, p0}, Lcom/qennnsad/aknkaksd/util/e0;->B(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;->getPrice()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-direct {p1, p2, p0, p4}, Lcom/qennnsad/aknkaksd/util/e0;->C(Landroid/app/Activity;ILkotlin/jvm/functions/Function0;)V

    :goto_1
    return-void
.end method

.method private static final y(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final z(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/util/e0;Landroid/view/View;)V
    .locals 0

    const-string p2, "$baseStreamActivity"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/util/e0;->a:Lg5/a;

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/l;->o0(Landroid/app/Activity;Lg5/a;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity<",
            "*>;",
            "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "joinFanClubBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConfirm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v1, 0x7f130198

    .line 2
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v0, "SpannableStringBuilder()\u2026ub_join_success_message))"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 4
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->getInfo()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f130197

    .line 6
    invoke-virtual {p1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f0601c1

    .line 9
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 10
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 11
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const v4, 0x7f130195

    .line 12
    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v5, v2, v1, v4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v1, 0x7f0600b8

    .line 14
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 15
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 16
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 17
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->getChips()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {v5, v2, v1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 19
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 20
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 21
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const v1, 0x7f130194

    .line 22
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 23
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v5, v0, p2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v4, 0x7f130199

    const/4 v6, 0x0

    const v7, 0x7f130196

    move-object v2, p0

    move-object v3, p1

    move-object v8, p3

    .line 24
    invoke-direct/range {v2 .. v8}, Lcom/qennnsad/aknkaksd/util/e0;->o(Landroid/app/Activity;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final k(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;I)Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;->getLevels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;->getLevel()I

    move-result v1

    if-ne v1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/e0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;)I
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;->getColor2()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final n(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;)I
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;->getColor1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final u(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lkotlin/jvm/functions/Function0;)V
    .locals 10
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseStreamActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConfirm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/e0;->a:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->e()Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getFanclub()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 2
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1400fd

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0056

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    const/16 v2, 0x50

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 7
    :cond_1
    new-instance v9, Lcom/qennnsad/aknkaksd/util/w;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p3

    move-object v5, p2

    move-object v6, v0

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/qennnsad/aknkaksd/util/w;-><init>(Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Ljava/lang/String;Landroid/app/Dialog;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
