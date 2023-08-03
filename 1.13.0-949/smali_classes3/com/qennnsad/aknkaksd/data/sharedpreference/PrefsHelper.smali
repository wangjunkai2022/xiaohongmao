.class public final Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;
.super Ljava/lang/Object;
.source "PrefsHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrefsHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrefsHelper.kt\ncom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper\n*L\n1#1,517:1\n181#1,9:518\n51#1,16:527\n57#1,10:543\n*S KotlinDebug\n*F\n+ 1 PrefsHelper.kt\ncom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper\n*L\n177#1:518,9\n260#1:527,16\n264#1:543,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u00085\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010\u0011\u001a\u0004\u0018\u0001H\u0012\"\u0006\u0008\u0000\u0010\u0012\u0018\u00012\u0006\u0010\u0013\u001a\u00020\u000cH\u0082\u0008\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eJ\u0008\u0010\u001f\u001a\u0004\u0018\u00010 J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020$J\u0008\u0010%\u001a\u0004\u0018\u00010&J\u0006\u0010\'\u001a\u00020(J\n\u0010)\u001a\u0004\u0018\u00010\u000cH\u0007J\n\u0010*\u001a\u0004\u0018\u00010\u000cH\u0002J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020,J\u0006\u0010.\u001a\u00020\u000cJ\u0006\u0010/\u001a\u00020,J\u0008\u00100\u001a\u0004\u0018\u000101J\u0006\u00102\u001a\u00020,J\u000e\u00103\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104J\u0006\u00106\u001a\u00020,J\u0008\u00107\u001a\u0004\u0018\u00010\u000cJ\u000e\u00108\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u000cJ\u0006\u0010:\u001a\u00020(J\u0006\u0010;\u001a\u00020\u001aJ\u0006\u0010<\u001a\u00020=J\u0008\u0010>\u001a\u0004\u0018\u00010\u000cJ\u0006\u0010?\u001a\u00020(J\u0006\u0010@\u001a\u00020(J\u0008\u0010A\u001a\u0004\u0018\u00010BJ\u0008\u0010C\u001a\u0004\u0018\u00010DJ\u0006\u0010E\u001a\u00020,J\u0008\u0010F\u001a\u0004\u0018\u00010\u000cJ\u0006\u0010G\u001a\u00020,J\u0006\u0010H\u001a\u00020IJ\u0010\u0010J\u001a\u00020I2\u0008\u0010K\u001a\u0004\u0018\u00010 J\u0006\u0010L\u001a\u00020IJ\u0018\u0010M\u001a\u00020I2\u0006\u00109\u001a\u00020\u000c2\u0008\u0010N\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010O\u001a\u00020I2\u0006\u0010P\u001a\u00020\u0016J\u0010\u0010Q\u001a\u00020I2\u0008\u0010P\u001a\u0004\u0018\u00010\u0018J\u000e\u0010R\u001a\u00020I2\u0006\u0010S\u001a\u00020\u001aJ\u000e\u0010T\u001a\u00020I2\u0006\u0010K\u001a\u00020\u001cJ\u0010\u0010U\u001a\u00020I2\u0008\u0010P\u001a\u0004\u0018\u00010\u001eJ\u000e\u0010V\u001a\u00020I2\u0006\u0010W\u001a\u00020\"J\u0010\u0010X\u001a\u00020I2\u0008\u0010Y\u001a\u0004\u0018\u00010$J\u000e\u0010Z\u001a\u00020I2\u0006\u0010P\u001a\u00020&J\u000e\u0010[\u001a\u00020I2\u0006\u0010\\\u001a\u00020(J\u000e\u0010]\u001a\u00020I2\u0006\u0010^\u001a\u00020\u000cJ\u000e\u0010_\u001a\u00020I2\u0006\u0010`\u001a\u00020,J\u000e\u0010a\u001a\u00020I2\u0006\u0010b\u001a\u00020,J\u000e\u0010c\u001a\u00020I2\u0006\u0010d\u001a\u00020\u000cJ\u000e\u0010e\u001a\u00020I2\u0006\u0010P\u001a\u000201J\u000e\u0010f\u001a\u00020I2\u0006\u0010g\u001a\u00020,J\u0018\u0010h\u001a\u00020I2\u0010\u0010P\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u000105\u0018\u000104J\u000e\u0010i\u001a\u00020I2\u0006\u0010j\u001a\u00020,J\u0010\u0010k\u001a\u00020I2\u0008\u0010l\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010m\u001a\u00020I2\u0006\u0010S\u001a\u00020(J\u000e\u0010n\u001a\u00020I2\u0006\u0010o\u001a\u00020\u001aJ\u000e\u0010p\u001a\u00020I2\u0006\u0010g\u001a\u00020,J\u000e\u0010q\u001a\u00020I2\u0006\u0010Y\u001a\u00020=J\u0010\u0010r\u001a\u00020I2\u0008\u0010s\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010t\u001a\u00020I2\u0006\u0010u\u001a\u00020(J\u000e\u0010v\u001a\u00020I2\u0006\u0010u\u001a\u00020(J\u000e\u0010w\u001a\u00020I2\u0006\u0010K\u001a\u00020BJ\u000e\u0010x\u001a\u00020I2\u0006\u0010y\u001a\u00020DJ\u000e\u0010z\u001a\u00020I2\u0006\u0010j\u001a\u00020,J\u0010\u0010{\u001a\u00020I2\u0006\u0010|\u001a\u00020,H\u0002JA\u0010}\u001a\u00020I\"\u0006\u0008\u0000\u0010\u0012\u0018\u00012\u0006\u0010~\u001a\u00020\u007f2\u0012\u0010\u0080\u0001\u001a\r\u0012\u0008\u0008\u0000\u0012\u0004\u0018\u0001H\u00120\u0081\u00012\u0007\u0010\u0082\u0001\u001a\u00020\u000c2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020,H\u0082\u0008J#\u0010\u0084\u0001\u001a\u00020I2\u0006\u0010~\u001a\u00020\u007f2\u0012\u0010\u0080\u0001\u001a\r\u0012\u0008\u0008\u0000\u0012\u0004\u0018\u00010\u001c0\u0081\u0001J7\u0010\u0085\u0001\u001a\u00020I\"\u0006\u0008\u0000\u0010\u0012\u0018\u00012\u0006\u0010~\u001a\u00020\u007f2\u0012\u0010\u0080\u0001\u001a\r\u0012\u0008\u0008\u0000\u0012\u0004\u0018\u0001H\u00120\u0081\u00012\u0007\u0010\u0082\u0001\u001a\u00020\u000cH\u0082\u0008J#\u0010\u0086\u0001\u001a\u00020I2\u0006\u0010~\u001a\u00020\u007f2\u0012\u0010\u0080\u0001\u001a\r\u0012\u0008\u0008\u0000\u0012\u0004\u0018\u00010D0\u0081\u0001J\u0007\u0010\u0087\u0001\u001a\u00020,R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0088\u0001"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
        "",
        "prefs",
        "Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;",
        "gson",
        "Lcom/google/gson/Gson;",
        "(Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;Lcom/google/gson/Gson;)V",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "prefValueData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Pair;",
        "",
        "getPrefs",
        "()Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;",
        "prefsChangeListener",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "decryptPrefRecord",
        "T",
        "encrypted",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "getAdConfig",
        "Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;",
        "getAppUpdateBean",
        "Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;",
        "getAppUpdateDownloadId",
        "",
        "getConfig",
        "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;",
        "getDnsCofig",
        "Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;",
        "getFanClubInfo",
        "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;",
        "getForcedDnsResolutionHost",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;",
        "getForcedServer",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;",
        "getGameCenterBean",
        "Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;",
        "getImRole",
        "",
        "getImei",
        "getImeiStr",
        "getIsCacheGift",
        "",
        "getIsFirstRun",
        "getJwtToken",
        "getKeepOldAppVersion",
        "getLocalRoomMsg",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;",
        "getNameCardAllowed",
        "getPeeragePrices",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/PeeragePriceBean;",
        "getPinnedEnabled",
        "getPinnedMessageIntro",
        "getRoomTicketJwt",
        "aId",
        "getStreamChatId",
        "getStreamChatStartTime",
        "getTestServerCaptchaType",
        "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;",
        "getTestServerDomain",
        "getTranslationModeText",
        "getTranslationModeVoice",
        "getUserInfo",
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "getUserMoney",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;",
        "getV2Server",
        "getXImei",
        "isStreamContinueInBackground",
        "removeUserInfo",
        "",
        "saveFanClubInfo",
        "info",
        "saveKeepOldAppVersion",
        "saveRoomTicketJwt",
        "ticket",
        "setAdConfig",
        "bean",
        "setAppUpdateBean",
        "setAppUpdateDownloadId",
        "id",
        "setConfig",
        "setDnsConfig",
        "setForcedDnsResolutionHost",
        "host",
        "setForcedServer",
        "type",
        "setGameCenterBean",
        "setImRole",
        "role",
        "setImei",
        "imei",
        "setIsCacheGift",
        "isCacheGift",
        "setIsFirstRun",
        "isFirstRun",
        "setJwtToken",
        "token",
        "setLocalRoomMsg",
        "setNameCardAllowed",
        "allowed",
        "setPeeragePrices",
        "setPinnedEnabled",
        "b",
        "setPinnedMessageIntro",
        "intro",
        "setStreamChatId",
        "setStreamChatStartTime",
        "time",
        "setStreamContinueInBackground",
        "setTestServerCaptchaType",
        "setTestServerDomain",
        "domain",
        "setTranslationModeText",
        "mode",
        "setTranslationModeVoice",
        "setUserInfo",
        "setUserMoney",
        "money",
        "setV2Server",
        "setWasUserGuest",
        "was",
        "subscribeBeanRecord",
        "lifecycle",
        "Landroidx/lifecycle/LifecycleOwner;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "key",
        "decrypt",
        "subscribeConfig",
        "subscribeRecord",
        "subscribeUserMoney",
        "wasUserGuest",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lu7/f;
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final prefValueData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final prefsChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;Lcom/google/gson/Gson;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/google/gson/Gson;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "prefs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->gson:Lcom/google/gson/Gson;

    .line 4
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefValueData:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance p2, Lcom/qennnsad/aknkaksd/data/sharedpreference/a;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/a;-><init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefsChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 6
    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->registerListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefsChangeListener$lambda-0(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getPrefValueData$p(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefValueData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private final synthetic decryptPrefRecord(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "T"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x4

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/DES;->decryptDES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decrypt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode--eeeeeeeeee: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    .line 4
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-virtual {v3, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    return-object v3
.end method

.method private final getImeiStr()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    const/16 v3, 0x24

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v4, "abcdefghijklmnopqrstuvwxyz0123456789"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final prefsChangeListener$lambda-0(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefValueData:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lkotlin/Pair;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setWasUserGuest(Z)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "wasUserGuest"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final synthetic subscribeBeanRecord(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->access$getPrefValueData$p(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;

    invoke-direct {v1, p3, p4, p2, p0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;-><init>(Ljava/lang/String;ZLandroidx/lifecycle/Observer;Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static synthetic subscribeBeanRecord$default(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->access$getPrefValueData$p(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p6, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;

    invoke-direct {p6, p3, p4, p2, p0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeBeanRecord$1;-><init>(Ljava/lang/String;ZLandroidx/lifecycle/Observer;Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)V

    invoke-virtual {p5, p1, p6}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final synthetic subscribeRecord(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefValueData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeRecord$1;

    invoke-direct {v1, p3, p2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeRecord$1;-><init>(Ljava/lang/String;Landroidx/lifecycle/Observer;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public final getAdConfig()Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;
    .locals 4
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v2, "adconfig"

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :catchall_0
    :goto_0
    return-object v0
.end method

.method public final getAppUpdateBean()Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_APP_UPDATE_BEAN"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;

    :goto_0
    return-object v0
.end method

.method public final getAppUpdateDownloadId()J
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_APP_UPDATE_DOWNLOAD_ID"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getConfig()Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;
    .locals 6
    .annotation build Lm8/h;
    .end annotation

    .line 1
    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v2, "config"

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/DES;->decryptDES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode--eeeeeeeeee: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 5
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .line 7
    :goto_1
    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    return-object v3
.end method

.method public final getDnsCofig()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "config_host"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    :goto_0
    return-object v0
.end method

.method public final getFanClubInfo()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_FAN_CLUB_INFO"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cached FanClubInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrefsHelper"

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    :goto_0
    return-object v0
.end method

.method public final getForcedDnsResolutionHost()Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->values()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "KEY_FORCED_DNS_RESOLUTION_HOST"

    invoke-virtual {v1, v3, v2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getForcedServer()Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->values()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "KEY_FORCED_SERVER_TYPE"

    invoke-virtual {v1, v3, v2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getGameCenterBean()Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_GAME_CENTER_VISIBLE"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;

    return-object v0
.end method

.method public final getGson()Lcom/google/gson/Gson;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public final getImRole()I
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imRole"

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds",
            "PrivateApi"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 3
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    .line 4
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "android.os.SystemProperties"

    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 6
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.serialno"

    aput-object v3, v2, v5

    .line 7
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0
.end method

.method public final getIsCacheGift()Z
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "isCacheGift"

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getIsFirstRun()Z
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isFirstRun"

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getJwtToken()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "jwtToken"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getKeepOldAppVersion()Z
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_KEEP_OLD_APP_VERSION"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getLocalRoomMsg()Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "login_ok"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    :goto_0
    return-object v0
.end method

.method public final getNameCardAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "name_card_allowed"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getPeeragePrices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/PeeragePriceBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_PEERAGE_PRICES"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PeeragePrices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrefsHelper"

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Ljava/util/List;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    const-class v5, Lcom/qennnsad/aknkaksd/data/bean/PeeragePriceBean;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public final getPinnedEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "KEY_PINNED_ENABLED"

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getPinnedMessageIntro()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_PINNED_INTRO"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefs()Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    return-object v0
.end method

.method public final getRoomTicketJwt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "aId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_TICKET_ANCHOR_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getStreamChatId()I
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_STREAM_CHAT_ID"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getStreamChatStartTime()J
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_STREAM_CHAT_START_TIME"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTestServerCaptchaType()Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_CAPTCHA_TYPE"

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->values()[Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final getTestServerDomain()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_TEST_SERVER_DOMAIN"

    const-string v2, "xazthg.com"

    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTranslationModeText()I
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "translation_text"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getTranslationModeVoice()I
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "translation_voice"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getUserInfo()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "userInfo"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginInfoFromSp:%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrefsHelper"

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    :goto_0
    return-object v0
.end method

.method public final getUserMoney()Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "usermonry"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usermoney:%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrefsHelper"

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    :goto_0
    return-object v0
.end method

.method public final getV2Server()Z
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "KEY_V2_SERVER"

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getXImei()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v2, "SERIAL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "XIMEI"

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getXImei:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrefsHelper"

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isStreamContinueInBackground()Z
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_STREAM_CONTINUE_IN_BACKGROUND"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final removeUserInfo()V
    .locals 2

    const-string v0, "PrefsHelper"

    const-string v1, "Removing login info."

    .line 1
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "userInfo"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "jwtToken"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final saveFanClubInfo(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving FanClubInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsHelper"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_FAN_CLUB_INFO"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final saveKeepOldAppVersion()V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "KEY_KEEP_OLD_APP_VERSION"

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final saveRoomTicketJwt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "aId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_TICKET_ANCHOR_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAdConfig(Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "adconfig"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAppUpdateBean(Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_APP_UPDATE_BEAN"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAppUpdateDownloadId(J)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "KEY_APP_UPDATE_DOWNLOAD_ID"

    invoke-virtual {v0, p2, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setConfig(Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)V
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "config"

    const-string v1, "info"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "PrefsHelper"

    const-string v3, "ConfigBeanToSp: %s"

    .line 2
    invoke-static {v2, v3, v1}, Lcom/qennnsad/aknkaksd/util/o0;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/DES;->encryptDES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encode--eeeeeeeeee: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-virtual {v1, v0, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDnsConfig(Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "config_host"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setForcedDnsResolutionHost(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "KEY_FORCED_DNS_RESOLUTION_HOST"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setForcedServer(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "KEY_FORCED_SERVER_TYPE"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setGameCenterBean(Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_GAME_CENTER_VISIBLE"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setImRole(I)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "imRole"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "imei"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImei:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsHelper"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v2, "IMEI"

    invoke-virtual {v0, v2, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plat=android;ver=1.13.0;uuid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/AES;->aesencrypt_tiger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "aesencrypt_tiger(deviceHeadler)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u5730\u52a0\u5bc6:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v2, "XIMEI"

    invoke-virtual {v0, v2, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u672c\u5730\u52a0\u5bc6\u5931\u8d25"

    .line 7
    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final setIsCacheGift(Z)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isCacheGift"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setIsFirstRun(Z)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isFirstRun"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setJwtToken(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "jwtToken"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLocalRoomMsg(Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "login_ok"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setNameCardAllowed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "name_card_allowed"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPeeragePrices(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/PeeragePriceBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_PEERAGE_PRICES"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPinnedEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "KEY_PINNED_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPinnedMessageIntro(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_PINNED_INTRO"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setStreamChatId(I)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "KEY_STREAM_CHAT_ID"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setStreamChatStartTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "KEY_STREAM_CHAT_START_TIME"

    invoke-virtual {v0, p2, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setStreamContinueInBackground(Z)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "KEY_STREAM_CONTINUE_IN_BACKGROUND"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTestServerCaptchaType(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "KEY_CAPTCHA_TYPE"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTestServerDomain(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "KEY_TEST_SERVER_DOMAIN"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTranslationModeText(I)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "translation_text"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTranslationModeVoice(I)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "translation_voice"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setUserInfo(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginInfoToSp:%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrefsHelper"

    invoke-static {v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v2, "userInfo"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->setWasUserGuest(Z)V

    return-void
.end method

.method public final setUserMoney(Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "money"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoneyInfoToSp:%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefsHelper"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "usermonry"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setV2Server(Z)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "KEY_V2_SERVER"

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final subscribeConfig(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 4
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->access$getPrefValueData$p(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeConfig$$inlined$subscribeBeanRecord$1;

    const-string v2, "config"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2, p0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeConfig$$inlined$subscribeBeanRecord$1;-><init>(Ljava/lang/String;ZLandroidx/lifecycle/Observer;Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final subscribeUserMoney(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 4
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "-",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->access$getPrefValueData$p(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeUserMoney$$inlined$subscribeBeanRecord$default$1;

    const-string v2, "usermonry"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p2, p0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper$subscribeUserMoney$$inlined$subscribeBeanRecord$default$1;-><init>(Ljava/lang/String;ZLandroidx/lifecycle/Observer;Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final wasUserGuest()Z
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->prefs:Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    const-string v1, "wasUserGuest"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
