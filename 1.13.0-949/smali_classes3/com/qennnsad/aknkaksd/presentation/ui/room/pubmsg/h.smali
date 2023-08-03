.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;
.super Lcom/qennnsad/aknkaksd/presentation/ui/base/recycler/b;
.source "PublicChatHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/recycler/b<",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicChatHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicChatHolder.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/PublicChatHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,677:1\n1559#2:678\n1590#2,4:679\n766#2:687\n857#2,2:688\n1851#2,2:690\n37#3:683\n36#3,3:684\n*S KotlinDebug\n*F\n+ 1 PublicChatHolder.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/PublicChatHolder\n*L\n284#1:678\n284#1:679,4\n533#1:687\n533#1:688,2\n533#1:690,2\n292#1:683\n292#1:684,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u001f\u0012\u0006\u0010S\u001a\u00020R\u0012\u0006\u0010X\u001a\u00020W\u0012\u0006\u00101\u001a\u00020,\u00a2\u0006\u0004\u0008Y\u0010ZJ$\u0010\t\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0002J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0003H\u0002J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0017H\u0002J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0019H\u0002J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u001bH\u0002J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u001dH\u0002J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u001fH\u0002J\u0010\u0010\"\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020#H\u0002J\u0010\u0010&\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020%H\u0002J\u0012\u0010*\u001a\u00020)2\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0002J\u0012\u0010+\u001a\u00020\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016R\u0017\u00101\u001a\u00020,8\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R$\u00109\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R6\u0010C\u001a\u0016\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\u0007\u0018\u00010:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR$\u0010K\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u0014\u0010N\u001a\u00020L8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010MR\u0014\u0010Q\u001a\u00020O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010PR\u0017\u0010S\u001a\u00020R8\u0006\u00a2\u0006\u000c\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\u00a8\u0006["
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/recycler/b;",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;",
        "data",
        "Lkotlin/Function1;",
        "",
        "",
        "onCharSequenceReady",
        "q",
        "",
        "on",
        "s",
        "msg",
        "p",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;",
        "n",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;",
        "m",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageProfitMsg;",
        "l",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;",
        "o",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;",
        "r",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;",
        "g",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;",
        "f",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;",
        "j",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;",
        "h",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendProfitMsg;",
        "i",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;",
        "k",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;",
        "A",
        "",
        "answerString",
        "Landroid/text/SpannableStringBuilder;",
        "E",
        "t",
        "Lcom/qennnsad/aknkaksd/util/translation/h;",
        "b",
        "Lcom/qennnsad/aknkaksd/util/translation/h;",
        "z",
        "()Lcom/qennnsad/aknkaksd/util/translation/h;",
        "translatorRapid",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;",
        "c",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;",
        "x",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;",
        "D",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;)V",
        "clickToWinListener",
        "Lkotlin/Function2;",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;",
        "d",
        "Lkotlin/jvm/functions/Function2;",
        "w",
        "()Lkotlin/jvm/functions/Function2;",
        "C",
        "(Lkotlin/jvm/functions/Function2;)V",
        "clickOnUserSpanListener",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;",
        "e",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;",
        "v",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;",
        "B",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;)V",
        "clickOnChatNotificationListener",
        "Landroid/widget/TextView;",
        "Landroid/widget/TextView;",
        "tvContent",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;",
        "msgUtils",
        "Lg5/a;",
        "localDataManager",
        "Lg5/a;",
        "y",
        "()Lg5/a;",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Lg5/a;Landroid/view/View;Lcom/qennnsad/aknkaksd/util/translation/h;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/util/translation/h;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private e:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final f:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Landroid/view/View;Lcom/qennnsad/aknkaksd/util/translation/h;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/util/translation/h;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translatorRapid"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/base/recycler/b;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->a:Lg5/a;

    .line 3
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->b:Lcom/qennnsad/aknkaksd/util/translation/h;

    const p1, 0x7f0a039c

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lf5/d;

    invoke-static {p1, p2}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/d;

    invoke-interface {p1}, Lf5/d;->c()Lf5/e;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lf5/e;->d()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    return-void
.end method

.method private final A(Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;->getEntities()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    .line 5
    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getOffset()I

    move-result v7

    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getLength()I

    move-result v6

    add-int/2addr v7, v6

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v7, v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    .line 7
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getType()Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;

    move-result-object v3

    sget-object v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    if-eq v3, v5, :cond_7

    const/4 v6, 0x2

    if-eq v3, v6, :cond_6

    const/4 v6, 0x3

    if-eq v3, v6, :cond_5

    const/4 v6, 0x4

    if-eq v3, v6, :cond_4

    const/4 v6, 0x5

    if-ne v3, v6, :cond_3

    .line 8
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$l;

    invoke-direct {v3, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$l;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;)V

    goto :goto_2

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 9
    :cond_4
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k;

    invoke-direct {v3, v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    goto :goto_2

    .line 10
    :cond_5
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_2

    .line 11
    :cond_6
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_2

    .line 12
    :cond_7
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 13
    :goto_2
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getOffset()I

    move-result v6

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getOffset()I

    move-result v7

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getLength()I

    move-result v2

    add-int/2addr v7, v2

    const/16 v2, 0x12

    .line 14
    invoke-virtual {v0, v3, v6, v7, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 15
    :cond_8
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;->getBackground()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const v3, 0x7f08057f

    .line 17
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    :cond_9
    :goto_3
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 20
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0602f5

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;->getIcon()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 23
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->E(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/bumptech/glide/k;->v()Lcom/bumptech/glide/j;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->t1(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m;

    invoke-direct {v0, v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m;-><init>(Landroid/widget/TextView;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->h1(Lcom/bumptech/glide/request/target/p;)Lcom/bumptech/glide/request/target/p;

    :cond_a
    return-void
.end method

.method private final E(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MsgUtils"

    if-nez v0, :cond_3

    const-string v0, "!isEmpty()"

    .line 2
    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/j1;->c(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 4
    instance-of v2, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_3

    const-string p1, "SpannableStringBuilder()"

    .line 5
    invoke-static {v1, p1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    .line 7
    invoke-interface {v0, p1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    if-eqz p1, :cond_2

    .line 8
    array-length v2, p1

    if-eqz v2, :cond_2

    const-string v2, "objs.length!=0"

    .line 9
    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/style/URLSpan;

    const-string v3, "obj"

    .line 11
    invoke-static {v1, v3}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 13
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 14
    instance-of v5, v2, Landroid/text/style/URLSpan;

    if-eqz v5, :cond_1

    .line 15
    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URLSpan--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "--start:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "--end:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    move-object v6, v0

    check-cast v6, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 18
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$n;

    invoke-direct {v2, v5, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$n;-><init>(Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    const/16 v5, 0x12

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 19
    :cond_2
    check-cast v0, Landroid/text/SpannableStringBuilder;

    return-object v0

    :cond_3
    const-string v0, "isEmpty()"

    .line 20
    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.text.SpannableStringBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/text/SpannableStringBuilder;

    return-object p1
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->u(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    return-void
.end method

.method public static final synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->p(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private final f(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;)Ljava/lang/CharSequence;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->f()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->getFromUserDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->getFromUserName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u7ed9\u4e3b\u64ad"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->getToUserName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9001\u51fa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->getGiftCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x4e2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 8
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->getGiftName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "(\u70b9\u6b64\u56f4\u89c2)"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 11
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$b;

    invoke-direct {v2, p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$b;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    const-string v3, "content"

    .line 13
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->getFromUserName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    .line 14
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->getFromUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    const/16 v9, 0x12

    .line 15
    invoke-virtual {v1, v2, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 16
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$c;

    invoke-direct {v2, p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$c;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    .line 17
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->getToUserName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 18
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->getToUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    .line 19
    invoke-virtual {v1, v2, v0, p1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private final g(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->h(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getFrom_user_peerage_id()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->k(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, " "

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const/4 v0, 0x3

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getFromUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->q(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x4

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    .line 5
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f130395

    new-array v4, v4, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getGiftCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    .line 7
    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x5

    .line 9
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getGiftName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "concat(\n            peer\u2026   msg.giftName\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final h(Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;)Ljava/lang/CharSequence;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->e()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u606d\u559c"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;->getUserNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->g(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u5728"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;->getScene()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->g(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u8d62\u5f97"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;->getAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->g(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u5143"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 11
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "charSequence"

    .line 12
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;->getUserNickname()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;->getUserNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 14
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$d;

    invoke-direct {v3, p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$d;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    const/16 p1, 0x21

    .line 15
    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private final i(Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendProfitMsg;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->e()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u606d\u559c\u60a8\u83b7\u5f97\u6e38\u620f\u5206\u6210\u6536\u76ca"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;->getAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v1, v0

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v0, "\u5143"

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v1, v0

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "concat(\n            game\u2026MsgContent(\"\u5143\")\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final j(Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;)Ljava/lang/CharSequence;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->e()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u606d\u559c\u4e3b\u64ad"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->getAnchorNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->g(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u7684\u7c89\u4e1d"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->getUserNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->g(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u5728"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;->getScene()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->g(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u8d62\u5f97"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;->getAmount()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->g(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u5143"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v1, v2

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 13
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$e;

    invoke-direct {v2, p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$e;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    const-string v3, "charSequence"

    .line 15
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->getAnchorNickname()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    .line 16
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->getAnchorNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    const/16 v9, 0x21

    .line 17
    invoke-virtual {v1, v2, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 18
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$f;

    invoke-direct {v2, p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$f;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    .line 19
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->getUserNickname()Ljava/lang/String;

    move-result-object v4

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 20
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;->getUserNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    .line 21
    invoke-virtual {v1, v2, v0, p1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private final k(Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->i()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u606d\u559c"

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;->getFromUserName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v1, v0

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v0, "\u6536\u5230\u4e3b\u64ad\u540d\u7247"

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v1, v0

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "concat(\n            name\u2026ntent(\"\u6536\u5230\u4e3b\u64ad\u540d\u7247\")\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final l(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageProfitMsg;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 1
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageProfitMsg;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u606d\u559c\u60a8\u83b7\u5f97"

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageProfitMsg;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageProfitMsg;->getAmount()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageProfitMsg;->getUnit()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "concat(\n            msgU\u2026ntent(msg.unit)\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final m(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 1
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->j(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    const-string v2, "\u606d\u559c"

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;->getNickname()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;->getPeerageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 9
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 10
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$g;

    invoke-direct {v3, p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$g;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    const/16 p1, 0x21

    .line 11
    invoke-virtual {v1, v3, v0, v2, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private final n(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 1
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->n(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "concat(\n            msgU\u2026nt(msg.content)\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final o(Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 1
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->n(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "concat(\n            msgU\u2026nt(msg.content)\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final p(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)Ljava/lang/CharSequence;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->h(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getFromUserPeerageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->k(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getFromUserRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    move-object v0, v4

    goto :goto_0

    :cond_0
    new-array v3, v5, [Ljava/lang/CharSequence;

    aput-object v0, v3, v7

    aput-object v4, v3, v6

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    new-array v3, v5, [Ljava/lang/CharSequence;

    aput-object v1, v3, v7

    aput-object v4, v3, v6

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 8
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v4

    goto :goto_2

    :cond_2
    new-array v3, v5, [Ljava/lang/CharSequence;

    aput-object v2, v3, v7

    aput-object v4, v3, v6

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 10
    :goto_2
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    .line 11
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getFanclubNickname()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getFanLevel()I

    move-result v9

    .line 13
    invoke-virtual {v3, v8, v9}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->b(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/CharSequence;

    aput-object v3, v8, v7

    aput-object v0, v8, v6

    aput-object v1, v8, v5

    const/4 v0, 0x3

    aput-object v2, v8, v0

    .line 14
    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getFromClientName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->q(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v8, v5, [Ljava/lang/CharSequence;

    aput-object v1, v8, v7

    aput-object v2, v8, v6

    .line 16
    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 17
    iget-object v9, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/CharSequence;

    aput-object v8, v10, v7

    aput-object v9, v10, v6

    .line 18
    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v10, "fullNoGradient"

    if-nez v3, :cond_5

    .line 20
    sget-object v3, Lcom/qennnsad/aknkaksd/util/k1;->a:Lcom/qennnsad/aknkaksd/util/k1;

    iget-object v11, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Lcom/qennnsad/aknkaksd/util/k1;->i(Landroid/widget/TextView;)Lcom/qennnsad/aknkaksd/util/k1$a;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 21
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9, v11}, Lcom/qennnsad/aknkaksd/util/k1;->h(Ljava/lang/CharSequence;Lcom/qennnsad/aknkaksd/util/k1$a;)Ljava/util/List;

    move-result-object v3

    .line 22
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v3, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-gez v10, :cond_3

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v11, Ljava/lang/CharSequence;

    .line 25
    iget-object v10, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    .line 26
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getFanLevel()I

    move-result v13

    .line 27
    invoke-virtual {v10, v11, v13}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->d(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v10, v12

    goto :goto_3

    .line 28
    :cond_4
    sget-object p1, Lcom/qennnsad/aknkaksd/util/j1$e;->f:Lcom/qennnsad/aknkaksd/util/j1$e$a;

    new-array v3, v7, [Ljava/lang/CharSequence;

    .line 29
    invoke-interface {v9, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v9, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    check-cast v3, [Ljava/lang/CharSequence;

    array-length v9, v3

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v9, "concat(*gradients.toTypedArray())"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual {p1, v3, v8, v4}, Lcom/qennnsad/aknkaksd/util/j1$e$a;->a(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    aput-object p1, v0, v5

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "concat(\n                \u2026dsFinal\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 34
    :cond_5
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v9
.end method

.method private final q(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/CharSequence;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->a:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->K()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->p(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getAlreadyTranslated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->p(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->a:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lb5/a;->i(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 7
    sget-object v1, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->JA:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;->ZH:Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->b:Lcom/qennnsad/aknkaksd/util/translation/h;

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;

    invoke-direct {v3, p1, p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;Lkotlin/jvm/functions/Function1;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/qennnsad/aknkaksd/util/translation/h;->a(Ljava/lang/String;Lcom/qennnsad/aknkaksd/util/translation/Translator$Direction;Lkotlin/jvm/functions/Function1;)V

    :goto_2
    return-void
.end method

.method private final r(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;->getLevelid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->h(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;->getFrom_user_peerage_id()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->k(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    const-string v3, " "

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const/4 v0, 0x3

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;->getClient_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->o(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x4

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f130394

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->p(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, p1

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "concat(\n            peer\u2026ve_msg_myroom))\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final s(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private static final u(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final B(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;)V
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->e:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;

    return-void
.end method

.method public final C(Lkotlin/jvm/functions/Function2;)V
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
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final D(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;)V
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->t(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V

    return-void
.end method

.method public t(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V
    .locals 9
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Sequence"

    invoke-static {v2, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    const v3, 0x7f08057e

    .line 3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 6
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f060103

    .line 7
    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 10
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->g(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_6

    .line 11
    :cond_1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;

    if-eqz v0, :cond_2

    .line 12
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->n(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_6

    .line 13
    :cond_2
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;

    if-eqz v0, :cond_3

    .line 14
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->m(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 15
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_6

    .line 16
    :cond_3
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageProfitMsg;

    if-eqz v0, :cond_4

    .line 17
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageProfitMsg;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->l(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageProfitMsg;)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_6

    .line 18
    :cond_4
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;

    if-eqz v0, :cond_5

    .line 19
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->o(Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_6

    .line 20
    :cond_5
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;

    if-eqz v0, :cond_6

    .line 21
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->r(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_6

    .line 22
    :cond_6
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;

    if-eqz v0, :cond_7

    .line 23
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 24
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_6

    .line 25
    :cond_7
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;

    if-eqz v0, :cond_8

    .line 26
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->k(Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_6

    .line 27
    :cond_8
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;

    const-string v5, "Unsupported type: "

    if-eqz v0, :cond_d

    .line 28
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 29
    move-object v1, p1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;

    .line 30
    instance-of v6, v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;

    if-eqz v6, :cond_9

    .line 31
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->j(Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    move-object v1, p1

    goto :goto_2

    .line 32
    :cond_9
    instance-of v6, v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;

    if-eqz v6, :cond_a

    .line 33
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->h(Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;->getGameId()I

    move-result p1

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_2

    .line 35
    :cond_a
    instance-of v1, v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendProfitMsg;

    if-eqz v1, :cond_b

    .line 36
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendProfitMsg;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->i(Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendProfitMsg;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    .line 37
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    goto :goto_1

    .line 38
    :goto_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_3

    :cond_c
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_15

    const-string p1, "  "

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1300e8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x2

    add-int/2addr v5, v6

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    sub-int/2addr v7, v6

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    aput-object v1, v8, v3

    aput-object v2, v8, v4

    aput-object p1, v8, v6

    .line 42
    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 43
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f0601ee

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 45
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$j;

    invoke-direct {v2, p1, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$j;-><init>(ILcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;Lkotlin/jvm/internal/Ref$IntRef;)V

    const/16 p1, 0x21

    .line 46
    invoke-virtual {v1, v2, v5, v7, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 47
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_6

    .line 48
    :cond_d
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent;

    if-eqz v0, :cond_e

    .line 49
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/NewFanEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 50
    :cond_e
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;

    if-eqz v0, :cond_f

    .line 51
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->A(Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;)V

    .line 52
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_6

    .line 53
    :cond_f
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    if-eqz v0, :cond_14

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_4

    :cond_10
    const/4 v2, 0x0

    goto :goto_5

    :cond_11
    :goto_4
    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_12

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getFanLevel()I

    move-result v2

    if-lez v2, :cond_12

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_12

    .line 55
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/g;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/g;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 56
    :cond_12
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 57
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 58
    :cond_13
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$i;

    invoke-direct {v2, p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$i;-><init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V

    invoke-direct {p0, v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->q(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;Lkotlin/jvm/functions/Function1;)V

    goto :goto_6

    .line 59
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_6
    if-eqz v1, :cond_17

    .line 60
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_16

    goto :goto_7

    :cond_16
    const/4 v4, 0x0

    :cond_17
    :goto_7
    if-nez v4, :cond_18

    .line 61
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    return-void
.end method

.method public final v()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->e:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;

    return-object v0
.end method

.method public final w()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
            "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->d:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final x()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;

    return-object v0
.end method

.method public final y()Lg5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->a:Lg5/a;

    return-object v0
.end method

.method public final z()Lcom/qennnsad/aknkaksd/util/translation/h;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->b:Lcom/qennnsad/aknkaksd/util/translation/h;

    return-object v0
.end method
